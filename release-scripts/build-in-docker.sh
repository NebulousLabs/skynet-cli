#!/usr/bin/env bash
set -e

echo "$0 builds skynet-cli in a reproducible Docker build environment"

branchName="$1"
versionName="$2"

if [ -z $branchName ] || [ -z $versionName ]; then
  echo "Usage: $0 BRANCHNAME VERSION"
  exit 1
fi

echo Branch name: ${branchName}
echo Version: ${versionName}
echo ""

if [ "$SIA_SILENT_RELEASE" != "true" ]; then
	read -p "Continue (y/n)?" CONT
	if [ "$CONT" != "y" ]; then
		exit 1
	fi
fi
echo "Building Docker image...";

# Build the image uncached to always get the most up-to-date branch.
docker build --no-cache -t skynet-cli-builder . --build-arg branch=${branchName} --build-arg version=${versionName}

# Create a container with the artifacts.
docker create --name build-container skynet-cli-builder

# Copy the artifacts out.
docker cp build-container:/home/builder/skynet-cli/release/ ../

# Remove the build container.
docker rm build-container

# Package the binaries produced.
./package.sh ${versionName} ../release/

# Print out the SHA256SUM file.
echo "SHA256SUM of binaries built: "
cat ../release/skynet-cli-${versionName}-SHA256SUMS.txt

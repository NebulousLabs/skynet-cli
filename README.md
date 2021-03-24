# skynet-cli

> :warning: This repo has been archived and moved under the new [SkynetHQ](https://github.com/SkynetHQ) repo [here](https://github.com/SkynetHQ/skynet-cli)

[![Go](https://img.shields.io/github/go-mod/go-version/NebulousLabs/skynet-cli)](https://github.com/NebulousLabs/skynet-cli)
[![Build Status](https://img.shields.io/github/workflow/status/NebulousLabs/skynet-cli/Go)](https://github.com/NebulousLabs/skynet-cli/actions)
[![Contributors](https://img.shields.io/github/contributors/NebulousLabs/skynet-cli)](https://github.com/NebulousLabs/skynet-cli/graphs/contributors)
[![License](https://img.shields.io/github/license/NebulousLabs/skynet-cli)](https://github.com/NebulousLabs/skynet-cli)

skynet-cli is a lightweight CLI to interact with [Skynet](https://siasky.net).

Skynet is the decentralized CDN and file sharing platform for devs and the
storage foundation for a Free Internet!

## Installing

The following methods will install a binary called `skynet` to your machine.

### Using Go Get

If you have [Go](https://golang.org/cmd/go/) installed you can run:

```
go get -u github.com/NebulousLabs/skynet-cli/...
```

### Homebrew (MacOS Users)

If you have [Homebrew](https://brew.sh/) installed you can run:

```shell
brew tap NebulousLabs/skynet-cli https://github.com/NebulousLabs/skynet-cli.git
brew install skynet-cli
```

### Downloading Release Binary

Alternatively, you can pull the appropriate binary from our [Releases](https://github.com/NebulousLabs/skynet-cli/releases) page.

### Building From Source

You can build the source code yourself with:

```
make release
```

## Usage

skynet-cli is designed to be simple and easy to use, just like Skynet.

Uploading a file or directory is a simple as using the following command:

```shell
skynet upload [source path]
```

This will return a `skylink`, which then in turn can be used to download the
file with the following command:

```shell
skynet download [skylink] [destination]
```

## Documentation

For comprehensive documentation complete with examples, please see [the Skynet SDK docs](https://siasky.net/docs/?shell--cli#introduction).

To learn about additional commands you can always use the `-h` flag or check out
the [documentation](./doc).

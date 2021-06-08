# Build with MPLAB X and XC8 GitHub Action

This action will build a MPLAB X / XC8 project.

## Inputs

### `project`

**Required** The path of the project to build (relative to the repository). For example: `firmware.X`.

### `configuration`

The configuration of the project to build. Defaults to `default`.

### `mplab_x_version`

The version of [MPLAB X](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-x-ide) to use. Defaults to `5.45`.

### `xc8_version`

The version of the [XC8 compiler](https://www.microchip.com/en-us/development-tools-tools-and-software/mplab-xc-compilers) to use. Defaults to `1.34`.

## Outputs

None.

## Example Usage

Add the following `.github/workflows/build.yml` file to your project:

```yaml
name: Build
on:
  push:
    branches:
      - master
  pull_request:
    branches:
      - master
jobs:
  build:
    name: Build the project
    runs-on: ubuntu-latest
    steps:
      - name: Download the source code
        uses: actions/checkout@v1
      - name: Build
        uses: jeandeaual/mplabx-xc8-build-action@v0.2.0
        with:
          project: firmware.X
          configuration: default
          mplab_x_version: "5.45"
          xc8_version: "2.20"
```

# Acknowledgements

Inspired by <https://github.com/velocitek/ghactions-mplabx>.

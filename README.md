# Build with MPLAB X and XC8 GitHub Action

This action will build a MPLAB X project.

It runs on Linux Ubuntu 20.04 and uses:

* MPLAB X v5.45
* XC8 v1.34

## Inputs

### `project`

**Required** The path of the projec to build (relative to the repository). For example: `firmware.X`.

### `configuration`

The configuration of the project to build. Defaults to `default`.

## Outputs

None.

## Example Usage

Add the following `.github/workflows/build.yml` file to your project:

```yaml
name: Build
on:
  - push

jobs:
  build:
    name: Build project
    runs-on: ubuntu-latest
    steps:
      - name: Download source
        uses: actions/checkout@v1
      - name: Build library
        uses: jeandeaual/mplabx-xc8-build-action@master
        with:
          project: firmware.X
          configuration: default
```

# Acknowledgements

Inspired by https://github.com/velocitek/ghactions-mplabx

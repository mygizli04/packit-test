# Packit Core

The Packit core repository which contains build, install and test instructions for system-packages. 

## Repository Structure

#### `repository.toml`
This file should be present in every Packit repository, it quickly describes what the repository is for. 

#### `packages`
The packages directory contains all packages which are supported by this repository. 

#### `package.toml`
Each package contains this file, it describes the package as whole. It shows the following general package information:
- Name
- Short description
- Package homepage url
- Available versions
- Latest versions (for each target)

#### `targets.toml`
Each package version directory contains a `targets.toml` file. This file describes version specific information. This information can be the same for all targets (global) or target specific. This approach is used, because it reduces repitition while maintaining flexibility. In some cases the target specific information will overwrite the global information in other cases it's additive, so global and target specific will be used together. Here is an overview of all the fields and their workings.
| Field                 | Explanation                         |
| --------              | -------                             |
| `version`             | The version field is only global.   |
| `dependencies`        | The dependencies field can be defined globally and for a specific target, it's additive. |
| `build_dependencies`  | The build dependencies field can be defined globally and for a specific target, it's additive. |
| `script_args`         | The script arguments fiels is additive and is meant to pass arguments to a script. This field doesn't have to be present if there are no arguments. |
| `use_version_specific_<script>`         | Every script can either be defined for an entire package or for a specific version. This field specifies this and is defined only globally, but can be overwritten by the target specific `<script-type>_script`. By default a script is not version specific.          |
| `<script-type>_script`   | This field is target specific and can overwrite the global `use_version_specific_<script>`. It can also specify a different script then the default.  |
| `skip_symlinking`   | This field specifies if a package should be symlinked. The field can be global or target specific, if both are given the target specific field will be used. This field is false by default. |


#### `preinstall.sh`, `build.sh`, `postinstall.sh` and `test.sh`
These are the default script files. If not otherwise specified they are located in `packages/<package-name>/`. The `target.toml` can also specify a different script to be used instead of a default script.
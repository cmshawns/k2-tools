Shawn's work tools
==================

### `K2.cmd` - Runs the HostServer from the commandline. `ESC` to stop, then `Y` to restart or `N` to exit session.

_TODO_

### `k2patch.cmd` - Runs the patch installer in the current directory, then outputs any errors found in log files.

_TODO_

### `k2fi.cmd` - K2 Fast Installer

**Usage:**

```
k2fi [/c] <package folder>
```

**Examples:**

Create a setup configuration file, then perform the install using that file:

```
k2fi /c "K2 blackpearl 4.6.12 (4.12060.1741.0)"
```

Perform an unattended install using a previously-generated setup configuration:

```
k2fi "K2 blackpearl 4.6.12 (4.12060.1741.0)"
```

`k2fi` will look for the configuration file the same folder that contains the `<package folder>`. The file name
must be in the following format: `<machine name>_<package folder>.xml`

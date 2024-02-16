# devcontainer-java-gui - Visual Studio Code devcontainer for Java including GUI

## Sample Dev Container file(s) for  and Java with GUI in VS Code Containerized Development

*assumptions*: **As far as I know, Windows 11 Pro is the only operating system this actually works in.** Docker and VS Code installed as well as the Dev Containers extension for Visual Studio Code.

*usage*: clone the repo then open in Visual Studio Code.

*example*:  clone the repo; open a new VS Code window; open the directory containing this repo; when prompted, choose Reopen in Container. 

This devcontainer is based on the latest Ubuntu image (`mcr.microsoft.com/devcontainers/base:ubuntu`).

The JDK is installed by `post-create.sh`.

The following line in the `devcontainer.json` allows us to run a Java GUI application on Windows 11 Pro from inside a VS Code devcontainer installation.

```jsonc
    "runArgs": ["-e DISPLAY=$DISPLAY"]
```

## Run the Sample Code

In the `/workspaces/devcontainer-java-gui/sample` directory, run the following commands:

```bash
javac SwingHello.java
java SwingHello
```

### miscellany

`configit.sh` looks like this:

```bash
#!/bin/bash

git config --global user.email "yourEmail@mail.com"
git config --global user.name "yourGitUserName"
git config --global push.autoSetupRemote true

git config --global --add safe.directory $1
```

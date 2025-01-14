# Fust Builder
This script was created because I was sick of writing a separate Bash file for each new C/C++ project that would compile my project (not to mention manual compilation, entering command after command in the terminal). If you find this script useful, use it in good health.

# Installation

## Method #1

Just copy this command and paste it into the terminal:

```bash
git clone https://github.com/kSarkans/fust-builder.git && cd ./fust-builder && chmod +x fust && sudo cp ./fust /bin/fust && cd .. && rm -rf ./fust-builder && echo 'Done.'
```

## Method #2

Copy the repository using the command 

```bash
git clone https://github.com/kSarkans/fust-builder.git
```

Then run the script

```bash
sh install.sh
```

Or you can do everything manually (there are only two commands)

```bash
chmod +x fust
sudo cp ./fust /bin/fust
```

---

To test the installation, enter one of these commands

```bash
fust help
fust --help
fust -h
fust version
fust --version
fust -v
```

# Usage

1. Open the project directory in the terminal
2. Make sure your project's source files are stored in the 'src' folder and the header files are stored in the 'lib' folder. If this is not the case, you have three options:
- Use `fust mkconfig` or `fust mkconfig /path/to/the/project` to create a config file where you can define all the paths and names.
- Use options like `--exe=`, `--lib=`, `--src=`, etc.
- Just create 'src' and 'lib' folders and move the files there.
3. Select assembly method
- `build` — to simply compile the executable file.
- `debug` — to compile the executable file and run it.
- `pdebug` — to compile the executable file, run it, and delete it immediately after the program is executed.
4. Сhoose compiler gcc or g++

As a result, depending on the arguments you choose, the command to run Fust will look something like this:

```bash
fust debug g++
```

For more information, enter one of these commands:

```bash
fust help
fust --help
fust -h
```

---

*Sarkans (Sergei Vishnevecki), MIT License*

*Last version: v1.0*
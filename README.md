# bash-shortcuts-flutter

Just a helper bash repo for myself to not have to search and type all of these long flutter commands. 
This is just meant as inspiration and should not be copied 1:1, because there might be changes.

Everything should work fine on Unix and OSX. Maybe it works in Windows as well, but not sure about it.
(PRs with instructions are welcome)

## How to use

Just download the bash script:

```bash
wget https://github.com/SimonErich/bash-shortcuts-flutter/blob/main/flu.sh ~/flu.sh
chmod +x ~/flu.sh
```

## Linux & OSX

Add it to your profile file. (`~/.zshrc` or `~/.bashrc` - depending on your shell):

```
source ~/flu.sh
```

## You are good to go

Now close your terminal window and open it again.
Now you should just be able to call the commands in the document:

### flu get

Shortcut for the command `flutter pub get`

### flu analyze

Shortcut for the command `flutter analyze`

### flu test

Shortcut for the command `flutter test`

### flu format

Shortcut for the command `flutter format .` (just analyzes, but does not fix)

### flu format fix

Shortcut for the command `flutter format --fix .` (analyzes and fixes problems)

### flu runner

Shortcut for the command `flutter pub run build_runner --delete-conflicting-outputs`

### flu runner watch

Shortcut for the command `flutter pub run build_runner watch --delete-conflicting-outputs`


## Further reading

The script was created based on the following article: (with more explanation on syntax and workings)
https://dev.to/eddeee888/how-to-write-a-bash-shortcut-script-to-enhance-your-terminal-experience-5898

<hr />

### Specific commands to our environment

May not apply to your setup.

#### flu widgetbook-build

Shortcut for the command `flutter run  -t lib/widgetbook.widgetbook.dart -d chrome --web-renderer html --`


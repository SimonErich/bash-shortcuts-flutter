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

### flutter pub get
```bash
flu get
```

### flutter pub run build_runner --delete-conflicting-outputs
```bash
flu runner
```

### flutter pub run build_runner watch --delete-conflicting-outputs
```bash
flu runner-watch
```

### Specific to our environment

May not apply to your setup.

#### flutter run  -t lib/widgetbook.widgetbook.dart -d chrome --web-renderer html --
```bash
flu build-widgetbook
```

## Further reading

The script was created based on the following article: (with more explanation on syntax and workings)
https://dev.to/eddeee888/how-to-write-a-bash-shortcut-script-to-enhance-your-terminal-experience-5898

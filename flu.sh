#/bin/bash

# flutter shortcut commands
# see https://github.com/SimonErich/bash-shortcuts-flutter/ for more details
function flu() {
  case $1 in
    # Generic flutter commands
    "get")
      echo "Fetching flutter packages"
      flutter pub get
      return 0
    ;;
    
    "runner")
      case $2 in
        "")
			  echo "Running flutter build runner once"
			  flutter pub run build_runner --delete-conflicting-outputs
          	  return 0
        ;;
        "watch")
			  echo "Running flutter build runner on watch"
			  flutter pub run build_runner watch --delete-conflicting-outputs
			  return 0
        ;;
      esac

    ;;
    
    # Specific to our environment
    "build-widgetbook")
      echo "Building widgetbook bundle for web deployment"
      flutter run  -t lib/widgetbook.widgetbook.dart -d chrome --web-renderer html --
      return 0
    ;;
  esac

  echo "\nERROR - Invalid command\n"
  return 1
}

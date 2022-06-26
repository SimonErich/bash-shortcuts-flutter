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

  "analyze")
    echo "Anylzing flutter project code"
    flutter analyze
    return 0
    ;;

  "test")
    echo "Run flutter project tests"
    flutter test
    return 0
    ;;

  "format")
    case $2 in
    "")
      echo "Checking flutter project code formatting"
      flutter format .
      return 0
      ;;

    "fix")
      echo "Fixing flutter project code formatting"
      flutter format --fix .
      return 0
      ;;
    esac

    ;;

  "format")
    case $2 in
    "")
      echo "Checking flutter project formatting"
      flutter format --fix .
      return 0
      ;;

    "fix")
      echo "Fixing flutter project formatting"
      flutter format --fix .
      return 0
      ;;
    esac

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
    flutter run -t lib/widgetbook.widgetbook.dart -d chrome --web-renderer html --
    return 0
    ;;
  esac

  echo "\nERROR - Invalid command\n"
  return 1
}

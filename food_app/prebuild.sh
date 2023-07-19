# run "flutter pub get" in all dirs
# .flutter.git needs to be removed for jenkins to build
find . -name "pubspec.yaml" -not -path "./.flutter.git/*"
find . -name "pubspec.yaml" -not -path "./.flutter.git/*" -execdir flutter clean \;
find . -name "pubspec.yaml" -not -path "./.flutter.git/*" -execdir flutter pub get \;

# generate localization keys
#cd "core" || exit
#flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -O lib/src/localization/generated

# generate data layer files
cd "data" || exit
dart run build_runner build --delete-conflicting-outputs
# generate data layer files
cd "../domain" || exit
dart run build_runner build --delete-conflicting-outputs
#generate auto route files
cd "../navigation" || exit
dart run build_runner build --delete-conflicting-outputs

#!\/bin\/bash
# shellcheck disable=SC2155
#
# This script to zip all the files in the FILES array
#
# Server Files: \/mnt\/server

FILES=(
".editorconfig"
".env.example"
".eslintignore"
".eslintrc.js"
".gitignore"
".prettierrc.json"
"BUILDING.md"
"CHANGELOG.md"
"Dockerfile"
"LICENSE.md"
"README.md"
"SECURITY.md"
"app/"
"artisan"
"babel.config.js"
"bootstrap/"
"composer.json"
"composer.lock"
"config/"
"database/"
"docker-compose.example.yml"
"jest.config.js"
"package.json"
"postcss.config.js"
"public/"
"resources/"
"routes/"
"storage/"
"tailwind.config.js"
"tsconfig.json"
"webpack.config.js"
"yarn.lock"
)

RANDOM_STR=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c4)

DATE_STR=$(date +"%m-%d-%Y")
TIME_STR=$(date +"%H-%M-%S")

ZIP_NAME="panelcoem-$RANDOM_STR-$DATE_STR-$TIME_STR.zip"

zip -r $ZIP_NAME "${FILES[@]}"

echo "Files zipped to $ZIP_NAME"

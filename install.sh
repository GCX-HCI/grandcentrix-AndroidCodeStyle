#!/bin/bash
# Installs GCX AndroidStudio Code Style into your AndroidStudio codestyles folder.
# You can optional put a path (to your Android project) as argument.
# Then the codestyle will be only added there.
#
# Inspired by https://git.io/v7jmC

echo "Installing GCX AndroidStudio code style..."
echo ""

LATEST_CODE_STYLE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/styles/grandcentrix.xml"
if [ "$1" != "" ]; then
  lastChar=${1: -1}
  if [[ $lastChar == '/' ]]; then
    TARGET_DIR=("$1.idea")
  else
    TARGET_DIR=("$1/.idea")
  fi
else
  TARGET_DIR=("$HOME/Library/Preferences/AndroidStudio*" "$HOME/Library/Preferences/AndroidStudioPreview*" \
                "~/.AndroidStudio*/config" "~/.AndroidStudioPreview*/config")
fi

for target in $TARGET_DIR
do
  # create codestyles dir and ...
  mkdir -p ${target}/codestyles
  # ... copy to latest style to ${TARGET_DIR}
  echo "Copying..."
  cp -frv ${LATEST_CODE_STYLE} ${target}/codestyles/
  if [ "$1" != "" ]; then
    echo "Renaming grandcentrix.xml to Project.xml"
    mv ${target}/codestyles/grandcentrix.xml ${target}/codestyles/Project.xml
  fi
done

echo ""
echo "Done."
echo "Restart AndroidStudio. Go to Preferences->Editor->Code Style and apply Scheme 'grandcentrix'."

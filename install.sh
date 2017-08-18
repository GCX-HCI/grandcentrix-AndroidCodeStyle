#!/bin/bash
# Installs GCX AndroidStudio Code Style into your AndroidStudio codestyles folder.
# Inspired by https://git.io/v7jmC

echo "Installing GCX AndroidStudio code style..."
echo ""

LATEST_CODE_STYLE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/styles/grandcentrix.xml"
for TARGET_DIR in $HOME/Library/Preferences/AndroidStudio*         \
                  $HOME/Library/Preferences/AndroidStudioPreview*

do
  if [[ -d $TARGET_DIR ]]; then

    # create codestyles dir and ...
    mkdir -p ${TARGET_DIR}/codestyles
    # ... copy to latest style to ${TARGET_DIR}
    cp -frv ${LATEST_CODE_STYLE} ${TARGET_DIR}/codestyles

  fi
done

echo ""
echo "Done."
echo "Restart AndroidStudio. Go to Preferences->Editor->Code Style and apply Scheme 'grandcentrix'."

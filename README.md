# Android Code Style

Code formatting rules for Android Studio

## Features
- Based on googles java code style (https://git.io/v5XuB)
- [Hungarian Notation (m-Prefix)](https://github.com/grandcentrix/AndroidCodeStyle/issues/4)
- [No star imports](https://github.com/grandcentrix/AndroidCodeStyle/issues/5) except for testing libraries
- Increase the line length to 118 (default 100)
- `android:id` after `xmlns` declaration in XML layouts
- [Keep lifecycle methods together](https://github.com/grandcentrix/AndroidCodeStyle/issues/3)
- [Keep getters and setters together](https://github.com/grandcentrix/AndroidCodeStyle/issues/7)
- Advanced code Arrangement rules for Java (Sort methods alphabetically (a-z) and by visibility (`public`-`private`))
  - Inner classes (classes, interfaces, enums)
  - Fields (grouped by visibility, a-z)
  - [public static methods](https://github.com/grandcentrix/AndroidCodeStyle/issues/8) (a-z)
  - Constructors
  - [Android Lifecycle methods](https://github.com/grandcentrix/AndroidCodeStyle/issues/3) in correct order
  - Methods ([grouped by visibility, a-z](https://github.com/grandcentrix/AndroidCodeStyle/issues/6))
  - static methods (grouped by visibility (except public), a-z)
 - Official [Kotlin Code Style](https://kotlinlang.org/docs/reference/coding-conventions.html)

## Installation on your local machine

### Automatically (the easiest way)
Just run the [`install`](install.sh) script.
It will automatically copy the latest Code Style to each existing `AndroidStudio` and `AndroidStudioPreview` version you have installed.

You can also install it directly into an Android Project by running
```
$ ./install.sh PATH/TO/YOUT/PROJECT
```

> **Note:** Before you commit the changes to git make sure you have opened AS/IntelliJ already.
            The IDE will slightly change the XML after the coping.

### Manually (the hard way)
1. Copy the [`grandcentrix.xml`](styles/grandcentrix.xml) into (MacOS) ``~/Library/Preferences/AndroidStudio{VERSION}/codestyles/`` or (Linux) ``~/.AndroidStudio{VERSION}/config/codestyles/``
2. Restart AndroidStudio
3. Select the codestyle scheme via `Preferences --> Editor --> Code Style`.

The codestyle will be enabled/used for **all projects** that are used with AndroidStudio!

## Enabling project specific code styles for a project
If the codestyle is added to the git repository and IntelliJ is configured accordingly each project can have it's own style.

1. Install the [`grandcentrix.xml`](styles/grandcentrix.xml) locally (see above)
2. Restart AndroidStudio
3. In AndroidStudio, go to `Preferences --> Code style`
4. Open the scheme manager by clicking on `Manage...`
5. Select the code style and click `Copy to project`
6. In the scheme drop down select `Project`

Finally add the code style to the git repository:
```
git add -f .idea/codestyles/Project.xml .idea/codestyles/codeStyleConfig.xml
```

## Contributing
To contribute just change the code style locally to your needs.
Then you can create a PR to this repository.

The PR should always contain:
* Some information what have changed.
* A updated [`grandcentrix.xml`](styles/grandcentrix.xml).

## License
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/legalcode)

# Android Code Style @ GCX

## Installation on your local machine
1. Copy the [`AndroidTeam_v1.2.xml`](styles/AndroidTeam_v1.2.xml) into ``~/Library/Preferences/AndroidStudio{VERSION}/codestyles/``
2. Restart AndroidStudio
3. Select the codestyle scheme via `Preferences --> Editor --> Code Style`.
The codestyle will be enabled/used for **all projects** that are opened with AndroidStudio!

## Enabling project specific code styles for a project
If the codestyle is added to the git repository and IntelliJ is configured accordingly each project can have it's own style.

1. Install the [`AndroidTeam_v1.2.xml`](styles/AndroidTeam_v1.2.xml) locally (see above)
2. Restart AndroidStudio
3. In AndroidStudio, go to `Preferences --> Code style`
4. Open the scheme manager by clicking on `Manage...``
5. Select the code style and click `Copy to project`
6. In the scheme drop down select `Project`

Finally add the code style to the git repository:
```
git add -f .idea/codeStyleSettings.xml
```

## History
The current version and the changelog can be seen in the [CHANGELOG](CHANGELOG.md) file.

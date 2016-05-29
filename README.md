# ocaml-cordova-plugin-activity-indicator

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-activity-indicator/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-activity-indicator.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-activity-indicator)

Binding to
[cordova-plugin-activityindicator](https://github.com/Initsogar/cordova-activityindicator)

## What does cordova-plugin-activityindicator do ?

```
Plugin for Cordova 3.0+ that allows you to show a loading spinner and a message
in your Android/iOS Cordova's app.
```

Source: [cordova-plugin-activityindicator](https://github.com/Initsogar/cordova-activityindicator)

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

* If you added
[ocaml-cordova-plugin-list](https://github.com/dannywillems/ocaml-cordova-plugin-list)
as opam package provider, you can use
```
opam install cordova-plugin-activity-indicator
```

* Else, you can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-activity-indicator https://github.com/dannywillems/ocaml-cordova-plugin-activityindicator.git
```

To compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-activity-indicator [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin activity indicator with
```Shell
cordova plugin add https://github.com/Initsogar/cordova-activityindicator
```

## How to use ?

* See the [official documentation](https://github.com/Initsogar/cordova-activityindicator)

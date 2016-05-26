# ocaml-cordova-plugin-activityindicator

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-activityindicator/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-activityindicator.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-activityindicator)

Binding to
[cordova-plugin-activityindicator](https://github.com/Initsogar/cordova-activityindicator)

## What does cordova-plugin-activityindicator do ?

```
Plugin for Cordova 3.0+ that allows you to show a loading spinner and a message
in your Android/iOS Cordova's app.
```

Source: [cordova-plugin-activityindicator](https://github.com/Initsogar/cordova-activityindicator)

## Repository branches and tags

We are migrating bindings from
[js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) (low level bindings) to
[gen_js_api](https://github.com/lexifi/gen_js_api) (high level bindings).

The gen_js_api binding allows to use *pure* ocaml types (you don't have to use
the ## syntax from js_of_ocaml or Js.string type but only # and string type).

The js_of_ocaml version is available in the branch
[*js_of_ocaml*](https://github.com/dannywillems/ocaml-cordova-plugin-activityindicator/tree/js_of_ocaml)
but we **recommend** to use the gen_js_api version which is the master branch.

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-activity-indicator https://github.com/dannywillems/ocaml-cordova-plugin-activityindicator.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-activity-indicator [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin activity indicator with
```Shell
cordova plugin add https://github.com/Initsogar/cordova-activityindicator
```

## How to use ?

* See the [official documentation](https://github.com/Initsogar/cordova-activityindicator)

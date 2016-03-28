# ocaml-cordova-plugin-activityindicator

Binding to
[cordova-plugin-activityindicator](https://github.com/Initsogar/cordova-activityindicator)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-activityindicator-example).
**Not developed**

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

## How to use ?

* See the [official documentation](https://github.com/Initsogar/cordova-activityindicator)

## ! BE CAREFUL !

The plugin creates a new object called *ActivityIndicator*, but the object is
available when the *deviceready* event is handled.

We don't provide a *activity_indicator* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *ActivityIndicator* will be set to **undefined**
because the *Activityindicator* object doesn't exist when we create the variable.

Instead, we provide a function *t* of type *unit -> activity_indicator* which creates the
binding to the *Activityindicator* javascript object. You must call it when the deviceready
event is handled, eg

```OCaml
let on_device_ready _ =
  let activity_indicator = Activityindicator.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```

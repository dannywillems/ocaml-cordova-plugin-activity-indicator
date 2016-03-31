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

## How to use ?

* See the [official documentation](https://github.com/Initsogar/cordova-activityindicator)

## ! BE CAREFUL !

The plugin creates a new object called *Activityindicator*, but the object is
available when the *deviceready* event is handled.

We don't provide a *activity_indicator* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *activity_indicator* will be set to **undefined**
because the *Activityindicator* object doesn't exist when we create the variable.

Instead, we provide a function *activity_indicator* of type *unit -> activity_indicator Js.t* which creates the
binding to the *Activityindicator* javascript object. You must call it when the deviceready
event is handled, eg

```OCaml
let on_device_ready _ =
  let activity_indicator = Activity_indicator.activity_indicator () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```

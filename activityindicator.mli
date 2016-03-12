class type activity_indicator =
  object
    method show : Js.js_string Js.t -> unit Js.meth
    method hide : unit Js.meth
  end

val activity_indicator : unit -> activity_indicator Js.t

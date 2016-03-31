class type activity_indicator =
  object
    method show : Js.js_string Js.t -> unit Js.meth
    method hide : unit Js.meth
  end

let activity_indicator () = Js.Unsafe.js_expr ("ActivityIndicator")

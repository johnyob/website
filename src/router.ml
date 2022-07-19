let asset_loader =
  let open Lwt.Let_syntax in
  let store = Asset.connect () in
  fun _local_root path req ->
    let%bind store = store in
    let%bind result = Asset.get store (Mirage_kv.Key.v path) in
    match result with
    | Error _ -> Handler.not_found req
    | Ok asset -> Dream.respond ~headers:(Dream.mime_lookup path) asset
;;

let page_routes =
  Dream.scope
    ""
    []
    [ Dream.get "/" Handler.index; Dream.get "/projects/" Handler.projects ]
;;

let router =
  Dream.router
    [ page_routes
    ; Dream.get "/asset/img/**" (Dream.static "asset/img")
    ; Dream.scope "" [] [ Dream.get "/**" (Dream.static ~loader:asset_loader "") ]
    (* ; Dream_livereload.route () *)
    ]
;;

(* comment *)

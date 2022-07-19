open! Import

module Post = struct
  type t = 
    { img : string
    ; href : string
    ; title : string
    ; preview : string
    }

  let render { img; href; title; preview } = 
    Container.render @@
    <div class="flex flex-row rounded items-center text-gray-600">
      <img class="object-cover w-72 h-auto rounded-l" src="/asset/img/<%s! img %>" />
      <div class="px-6 py-4 flex flex-col">
        <div class="font-bold text-xl mb-2"><%s title %></div>
        <p class="text-gray-700 text-base">
          <%s preview %>
        </p>
        <a class="text-base font-bold text-gray-600" href="/blogs/<%s! href %>">Read more →</a>
      </div>
    </div>

end

let posts : Post.t list = 
  [ { img = "ocaml.svg"
    ; href = "`ocaml/"
    ; title = "OCaml from the Very Beginning - A University Tale"
    ; preview = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.In gravida ligula et mauris rhoncus, nec egestas dui vulputate.Vestibulum vehicula diam nisi, ac vehicula felis faucibus ac.Suspendisse potenti. Curabitur ultricies, eros eu tempus tempus,felis magna rhoncus eros, eget malesuada tortor libero a erat"
    } 
  ]

let render () = 
  Layout.render ~title:"Blog" ~description:"Blog"  @@
  <div>
    <%s! Nav.render ()  %>
%   List.iter posts ~f:(fun post ->
      <%s! Post.render post %>
%   );
  </div>
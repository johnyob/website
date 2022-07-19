open! Import

let projects : Project.t list = 
  [ { title = "Project 1" 
    ; description = "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Ingravida ligula et mauris rhonc" 
    ; tags = [ "bg-orange-200", "OCaml"; "bg-red-200", "Compilers"; "bg-green-100", "Library" ]
    ; href = "/project/1"
    ; github_url = "https://github.com/johnyob"
    }
  ; { title = "Project 2" 
    ; description = "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Ingravida ligula et mauris rhonc" 
    ; tags = [ "bg-orange-200", "OCaml"; "bg-red-200", "Compilers"; "bg-green-100", "Library" ]
    ; href = "/project/2"
    ; github_url = "https://github.com/johnyob"
    }
  ; { title = "Project 3" 
    ; description = "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Ingravida ligula et mauris rhonc" 
    ; tags = [ "bg-orange-200", "OCaml"; "bg-red-200", "Compilers"; "bg-green-100", "Library" ]
    ; href = "/project/3"
    ; github_url = "https://github.com/johnyob"
    }
  ; { title = "Project 4" 
    ; description = "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Ingravida ligula et mauris rhonc" 
    ; tags = [ "bg-orange-200", "OCaml"; "bg-red-200", "Compilers"; "bg-green-100", "Library" ]
    ; href = "/project/4"
    ; github_url = "https://github.com/johnyob"
    }
  ]

let featured_projects () = 
  Container.render @@
  <div class="pt-14 pb-10">
    <%s! Title.render ~title:"Featured Projects" ~style:"" %>
    <div class="grid gap-4 grid-cols-3 pt-10">
%     List.iter projects ~f:(fun project ->
        <%s! Project.render project %>
%     );
    </div>
  </div>

let other_project Project.{ title; description; tags; github_url; _ } = 
  <a class="block rounded text-gray-600 hover:bg-gray-100" href="<%s! github_url %>">
    <div class="px-6 py-4">
      <div class="font-bold text-xl mb-2">
        <%s! title %>      
      </div>
      <div class="text-gray-700 text-base">
        <%s! description %>
      </div>
    </div>
    <div class="px-6 pt-4 pb-2">
%     List.iter tags ~f:(fun (color, tag) ->
        <span class="inline-block rounded px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2 <%s! color %>">
          <%s tag %>
        </span>
%     );
    </div>
  </a>

let other_projects () = 
  Container.render @@
  <div class="py-10">
    <%s! Title.render ~title:"Other Projects" ~style:"" %>
    <div class="pt-10">
%     List.iter projects ~f:(fun project ->
        <%s! other_project project %>
%     );
    </div>
  </div>

let render () = 
  Layout.render ~title:"Projects" ~description:"Varous personal projects"  @@
  <main>
    <%s! Nav.render ()  %>
    <%s! featured_projects () %>
    <%s! other_projects () %>
  </main>
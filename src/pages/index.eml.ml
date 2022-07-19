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
    ]

let featured_projects () = 
  Container.render @@
  <div class="py-10">
    <%s! Title.render ~title:"Featured Projects" ~style:"" %>
    <div class="grid gap-4 grid-cols-3 pt-10">
%     List.iter projects ~f:(fun project ->
        <%s! Project.render project %>
%     );
    </div>
  </div>

let render () = 
  Layout.render ~title:"ALISTAIR" ~description:"Personal Website"  @@
  <main>
    <%s! Hero.render () %>
    <%s! Nav.render ()  %>
    <%s! About.render () %>
    <%s! featured_projects () %>
  </main>
open! Import

module Item = struct
  type t = 
    { title : string
    ; href : string
    ; icon : string
    }

  let render ~title ~href ~icon = 
    <li>
      <a
        class="text-2xl font-medium flex items-center px-4 h-full hover:bg-gray-100"
        href="<%s! href %>"
      >
        <img class="w-8 h-8 mr-4" src="../asset/img/<%s! icon %>" />
        <span><%s title %></span>
      </a>
    </li>
end

let items : Item.t list = 
  [ { title = "Projects"; href = "/projects/"; icon = "package.svg" }
  ; { title = "Blog"; href = "/blog/"; icon = "megaphone.svg" }
  ; { title = "Notes"; href = "/notes/"; icon = "book.svg" }
  ]

let render () = 
  let child = 
    Container.render @@
    <ul class="flex h-24">
%     List.iter items ~f:(fun { title; href; icon } ->
        <%s! Item.render ~title ~href ~icon %>
%     );
      <li class="ml-auto flex h-full items-center">
        <a href="https://github.com" class="mr-4 hover:opacity-75">
          <img class="w-8 h-8" src="../asset/img/github-brands.svg"/>
        </a>
        <a href="https://twitter.com" class="mr-4 hover:opacity-75">
          <img class="w-8 h-8" src="../asset/img/twitter-brands.svg"/>
        </a>
        <a href="https://linkedin.com" class="hover:opacity-75">
          <img class="w-8 h-8" src="../asset/img/linkedin-brands.svg"/>
        </a>
      </li>
    </ul>
  in
  <nav class="shadow-lg text-gray-600">
    <%s! child %>
  </nav>
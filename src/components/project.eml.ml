open! Import

type t = 
  { title : string
  ; description : string
  ; tags : (string * string) list
  ; href : string
  ; github_url : string
  }

let render { title; description; tags; href; github_url } = 
  <div class="rounded shadow-lg text-gray-600">
    <div class="px-6 py-4">
      <div class="flex items-center font-bold text-xl mb-2">
        <a class="mr-auto hover:text-gray-400" href="<%s! href %>"><%s! title %></a>
        <a href="<%s! github_url %>" class="hover:opacity-75">
          <img
            class="w-5 h-5 ml-auto"
            src="../asset/img/github-brands.svg"
          />
        </a>
      </div>
      <div class="text-gray-700 text-base">
        <%s! description %>
      </div>
    </div>
    <div class="px-6 pt-4 pb-2">
%     List.iter tags ~f:(fun (color, tag) -> 
        <span class="inline-block rounded px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2 <%s! color %>"><%s tag %></span>
%     );
    </div>
  </div>
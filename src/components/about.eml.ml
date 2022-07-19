open! Import

let skills = [ "Full Stack OCaml Developer"; "University of Cambridge Graduate"; "5 Years Programming Experience" ]
let technology_svgs = [ "ocaml.svg"; "ocaml.svg"; "ocaml.svg"; "ocaml.svg"; "ocaml.svg" ]

let about () = 
  <div class="flex gap-11 text-gray-600 text-2xl pt-14 pb-6">
    <div class="max-w-xl mr-auto">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
      In gravida ligula et mauris rhoncus, nec egestas dui vulputate.
      Vestibulum vehicula diam nisi, ac vehicula felis faucibus ac. 
      Suspendisse potenti. Curabitur ultricies, eros eu tempus tempus,felis magna 
      rhoncus eros, eget malesuada tortor libero a erat
    </div>
    <ul class="ml-auto my-auto">
%     List.iter skills ~f:(fun skill ->
        <li>
          <div class="flex items-center px-4 h-full py-2">
            <img class="w-8 h-8 mr-4" src="/asset/img/tick.svg" />
            <span><%s skill %></span>
          </div>
        </li>
%     );
    </ul>  
  </div>

let technologies () = 
  <div class="mx-auto py-6">
    <%s! Title.render ~title:"Technologies" ~style:"pt-3 pb-6" %>
    <div class="grid grid-cols-5 gap-6 items-stretch">
%     List.iter technology_svgs ~f:(fun technology_svg ->
        <img class="max-w-full" src="/asset/img/<%s! technology_svg %>">
%     );
    </div>
  </div>

let render () = 
  Container.render @@
  <%s! about () %>
  <%s! technologies () %>
let render () =
  Layout.render ~title:"Not found" ~description:"Page is unavailable" @@
  Container.render @@
  <div class="py-8 text-center">
    <h1 class="mb-4 text-3xl font-extrabold text-gray-200">404 Not Found</h1>
    <p class="mb-4 text-4xl font-bold text-gray-700">Whoops! That page does't exist.</p>
  </div>

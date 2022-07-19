let render ~title ~style = 
  <h1 class="text-gray-600 text-6xl leading-tight <%s! style %>">
    <%s title %>
  </h1>
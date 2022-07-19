let render ~title ~description child = 
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <%s! Seo.render ~title ~description %>
      <link rel="stylesheet" href="/css/main.css" />
    </head>
    <body>
      <%s! child %>
    </body>
  </html>
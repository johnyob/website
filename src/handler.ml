let index _req = Dream.html (Index.render ())

let projects _req = Dream.html (Projects.render ())

let not_found _req = Dream.html ~code:404 (Not_found.render ())

let blog _req = Dream.html (Blog.render ())


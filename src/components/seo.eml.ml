open! Import

let index_title = "ALISTAIR"

let render ~title ~description = 
  let title = 
    if String.(title = index_title) 
    then index_title
    else title ^ " | " ^ index_title
  in
  <meta charset="utf8">
  <title><%s title %></title>
  <meta name="description" content="<%s description %>" />
  <meta property="og:title" content="<%s title %>" />
  <meta property="og:description" content="<%s description %>" />
  <meta property="og:type" content="website" />
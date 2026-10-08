defmodule HelloWeb.IndexHTML do
  use HelloWeb, :html
  import HelloWeb.HelloHTML

  embed_templates "hello_html/*"

end

defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def world(conn, %{"name" => nome}) do
    render(conn, :world, name: nome, page_title: "Hello World", page_title_suffix: " - Teste")
  end

  def saudacao(conn, %{"lang" => "pt", "name" => nome}) do
    render(conn, :saudacao, name: nome, msg: "Olá ")
  end

  def saudacao(conn, %{"lang" => "en", "name" => nome}) do
    render(conn, :saudacao, name: nome, msg: "Hello ")
  end

  def index(conn, _params) do
    conn
    |> put_view(html: HelloWeb.IndexHTML)
    |> render(:index)
  end

end

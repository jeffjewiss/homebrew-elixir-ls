class ElixirLs < Formula
  desc "A frontend-independent IDE 'smartness' server for Elixir. Implements the 'Language Server Protocol' standard and provides debugger support via the 'Debug Adapter Protocol'"
  homepage "https://github.com/elixir-lsp/elixir-ls"
  url "https://github.com/elixir-lsp/elixir-ls/releases/download/v0.6.2/elixir-ls.zip"
  sha256 "1149100e672f67824bf53bc567cca52b70a5fa6a7c4bf8a0cacc4eb7c332e4c6"
  license "Apache-2.0"
  head "https://github.com/elixir-lsp/elixir-ls.git"

  bottle :unneeded

  # depends_on "erlang"
  # depends_on "elixir"

  uses_from_macos "unzip" => :build

  def install
    prefix.install Dir["./*"]
  end

  test do
    assert_predicate testpath/"language_server.sh", :exist?
  end
end

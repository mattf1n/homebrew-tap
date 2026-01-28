class Cite < Formula
  desc "Upgrade BibTeX citations to archival venues"
  homepage "https://github.com/mattf1n/cite"
  url "https://github.com/mattf1n/cite/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "062667b59f9b3e1a15ac89b16656cb7dabd427da5a9a3b8b50029c9bed1433f2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/cite --help")
    assert_match "Upgrade BibTeX", output
  end
end

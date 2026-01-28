class Cite < Formula
  desc "Upgrade BibTeX citations to archival venues"
  homepage "https://github.com/mattf1n/cite"
  url "https://github.com/mattf1n/cite/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a339e0b6d0ca87186b386fcbab45e81fcfa84f3e577b529518d9749478c48628"
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

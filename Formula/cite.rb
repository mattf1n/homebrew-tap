class Cite < Formula
  desc "Upgrade BibTeX citations to archival venues"
  homepage "https://github.com/mattf1n/cite"
  url "https://github.com/mattf1n/cite/releases/download/v0.1.0/cite-0.1.0.tar.gz"
  sha256 "365164ae4dae280e9a1b68e0d1b018cfc16f9710698279aa3a439a1e84e47031"
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

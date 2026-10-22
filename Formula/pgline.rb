class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.4"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.4/pgline-0.1.4-aarch64-apple-darwin.tar.gz"
    sha256 "c627257a93c6a72ef0830f2bd4789df81f94c6a788651e519fc105dd91fb470a"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.4/pgline-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "efbcf85d3b6932fa061f0d04ee26d20179342dcd5c77826bad5284f5d1b280a0"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

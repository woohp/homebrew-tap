class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.1"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.1/pgline-0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "d60f822db1ace1c323f6b66f9be172adc58a4b568273c15e7cfa5be30c4b244a"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.1/pgline-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "68073917c6c7cb54d0430b1cfc39d77efe19f65ad0dd36bdcb4c90fa87c6a6e6"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

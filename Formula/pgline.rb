class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.1"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.1/pgline-0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "126a9d58d754b02d52386922617ae77cc3e9671d0ae92848a464511f74e09542"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.1/pgline-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4f8deb026c05c795673eb0927c7b7941f4a1ca0a4555dda5b362dd797c8849a8"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

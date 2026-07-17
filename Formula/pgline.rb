class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.0"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.0/pgline-0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "2dbe382c0cc60213fd9957ae0256e2fced1beaf4953e29e9cc728b37294aed36"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.0/pgline-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "07b87b9a7d78eacdde60f9324ceaa38157c6f9a55197020c3014f6d3f6fa9331"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

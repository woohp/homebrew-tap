class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.8"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.8/pgline-0.1.8-aarch64-apple-darwin.tar.gz"
    sha256 "8e056004a57f46e4e0915e2076ffea8dcdab9137302f14f5f3312ab7f520a070"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.8/pgline-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "826d6a279e3a930396aaf7e157165769eaae868a2af8ed4a5a69fd40e74ee4e6"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

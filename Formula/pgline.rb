class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.3"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.3/pgline-0.1.3-aarch64-apple-darwin.tar.gz"
    sha256 "806c6eec964bdce26d9a33b9ef2f27bab17219947c7453b2c07c3152d61460c8"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.3/pgline-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f9c5169ff39f7f9c0ea483c38511dd76747574476ddbb0310751cee5c9b673a"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

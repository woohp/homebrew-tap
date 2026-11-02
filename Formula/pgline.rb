class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.7"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.7/pgline-0.1.7-aarch64-apple-darwin.tar.gz"
    sha256 "e549f3510c520442ac77b8c54c0ad59e890878a0cc78be1de423e830fc8f1053"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.7/pgline-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b01abc016667cc4f90bad1d94e9c24e5f0154ba2b25dc23e131e4c568d765a41"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

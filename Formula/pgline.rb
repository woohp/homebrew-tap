class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.6"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.6/pgline-0.1.6-aarch64-apple-darwin.tar.gz"
    sha256 "0bb1d608a9b3ec2d334c4af17f6a97796efd18b816565f119c30f0d9bd17f982"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.6/pgline-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3bc0e045b5173de0e8453977c02041cec5a217bedfccf8c3acb9ec40c412506d"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

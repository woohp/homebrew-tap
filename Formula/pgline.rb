class Pgline < Formula
  desc "Fast, interactive PostgreSQL client"
  homepage "https://github.com/woohp/pgline"
  version "0.1.2"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/woohp/pgline/releases/download/v0.1.2/pgline-0.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "f0bdebbf1c3999304597176d77088d5641ea8fe5f86dc6b8dadf8147bb0c4d58"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/woohp/pgline/releases/download/v0.1.2/pgline-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "88c56ddafd664044ce91a10570ad27f4f199d81be4dab1b65dbd0717f07c883b"
  end

  def install
    bin.install "pgline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgline --version")
  end
end

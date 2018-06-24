class OnePasswordEnv < Formula
  homepage "https://github.com/jagregory/1password-env"
  url "https://github.com/jagregory/1password-env/archive/v1.0.0-al.tar.gz"
  version "1.0.0-alpha"
  sha256 "db6cef4f55f26abe7d7653b981585e54d25d9e904302c4d164f36ee82663e8ce"

  depends_on "jq"

  def install
    bin.install "bin/op-env"
    prefix.install Dir["lib"]
  end

  test do
    system bin/"op-env", "--version"
  end
end

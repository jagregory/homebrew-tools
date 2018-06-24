class OnePasswordEnv < Formula
  homepage "https://github.com/jagregory/1password-env"
  url "https://github.com/jagregory/1password-env/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "23149ecb62501e7bb39b6b7493a6b30487391047258e0adf6c4a2e2a962af949"

  depends_on "jq"

  def install
    bin.install "bin/op-env"
    prefix.install Dir["lib"]
  end

  test do
    system bin/"op-env", "--version"
  end
end

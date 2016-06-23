class Cfval < Formula
  desc "The CloudFormation template validator"
  homepage "https://github.com/jagregory/cfval"
  url "https://github.com/jagregory/cfval/releases/download/v0.3.0/cfval-0.3.0.tar.gz"
  sha256 "1f1811970bba43a2c0956448db725384f59d3fe7fda2527f447505e57198280c"

  bottle :unneeded

  def install
    bin.install "cfval"
  end

  test do
    system "#{bin}/cfval", "--version"
  end
end

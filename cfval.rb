class Cfval < Formula
  desc "The CloudFormation template validator"
  homepage "https://github.com/jagregory/cfval"
  url "https://github.com/jagregory/cfval/releases/download/v0.2.0/cfval-0.2.0.tar.gz"
  sha256 "076c6cba05047a1ce30764c9ad5369d83434d92009e016a3340beefdb898a0ef"

  bottle :unneeded

  def install
    bin.install "cfval"
  end

  test do
    system "#{bin}/cfval", "--version"
  end
end

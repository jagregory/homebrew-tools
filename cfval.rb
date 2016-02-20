class Cfval < Formula
  desc "The CloudFormation template validator"
  homepage "https://github.com/jagregory/cfval"
  url "https://github.com/jagregory/cfval/releases/download/v0.1.0/cfval-0.1.0.tar.gz"
  sha256 "ee27bfb203be2744039861011bd017516eabd89d6348bb18e32d33b4a8afcda2"

  bottle :unneeded

  def install
    bin.install "cfval"
  end

  test do
    system "#{bin}/cfval", "--version"
  end
end

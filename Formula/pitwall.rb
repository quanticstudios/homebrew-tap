# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.11/pitwall_darwin_arm64.tar.gz"
      sha256 "468a1de0d356b58b1df201d0633939dc63b76afc61cb60aebc4e0c1a6070d3d1"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.11/pitwall_darwin_amd64.tar.gz"
      sha256 "434c64f8967496fb1c07734f48402fce0a88834cac86e190917607cb938ccbac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.11/pitwall_linux_arm64.tar.gz"
      sha256 "b81d3ab2562f61cf32a09c46d890ed08d0f9281690492f418bfb0a65c8a39ad5"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.11/pitwall_linux_amd64.tar.gz"
      sha256 "857818d333626ee0c799050eb07c4f72089c5e86cc3a8055df53e9244712021b"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

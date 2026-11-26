# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.8/pitwall_darwin_arm64.tar.gz"
      sha256 "e074df1d1dc3b2a5042216219bfe76220df2d2d180d16a0b07dd15a82b10daa9"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.8/pitwall_darwin_amd64.tar.gz"
      sha256 "29b6ffe1427214c30981b2d7585afc09b9aba2fdf8e96e4f65b999c493cbcafc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.8/pitwall_linux_arm64.tar.gz"
      sha256 "beffaef09225d279f04fd980dfbf02de35b9df94410b17788f4976c10bb88325"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.8/pitwall_linux_amd64.tar.gz"
      sha256 "260fb7b1bb5aede451a0a045a28ce46739f1a5df2ec8025e6da01d1df1c2cf6d"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

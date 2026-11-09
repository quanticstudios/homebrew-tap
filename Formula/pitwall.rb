# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.4/pitwall_darwin_arm64.tar.gz"
      sha256 "7c6bd1c03079cb27a8fc7a8eb899fac4196d9d4aed1c7b737991a90cdf83a355"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.4/pitwall_darwin_amd64.tar.gz"
      sha256 "aa208e6f789cea50870f533892a7c6ca89bdcea19710acef9e1d41612d6d9509"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.4/pitwall_linux_arm64.tar.gz"
      sha256 "1ec0f32d0d286038ded8900097eaf77e026bf3c87c1471a8710a414026e5843b"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.4/pitwall_linux_amd64.tar.gz"
      sha256 "84ea6cbea5daa582837c42747038c2f44d89caa3c54736cca64dfc15213acf99"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

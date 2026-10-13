# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.7/pitwall_darwin_arm64.tar.gz"
      sha256 "f6ab2a23d5c97f1919967eba13b98c02e0b216d4161550de1e5c01d691ebba99"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.7/pitwall_darwin_amd64.tar.gz"
      sha256 "5095d5f2f3d7000d406fb4801335406d2131e745def633de547de8f3328fb292"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.7/pitwall_linux_arm64.tar.gz"
      sha256 "1b31c557c74a19c7a5c485b7878eb8c41dc38de61dcdaf905191fc5de35815f6"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.7/pitwall_linux_amd64.tar.gz"
      sha256 "1e2a84976982ffac5a305b67c0034df09884238b0e72828ba1046fc673a396fb"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

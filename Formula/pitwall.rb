# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.5/pitwall_darwin_arm64.tar.gz"
      sha256 "4d42a3f3392f1802b724c6d5003bceb740b593f8edeafd3f8f56569da348f697"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.5/pitwall_darwin_amd64.tar.gz"
      sha256 "ec56671989952f060805798ee387b9bec3fa65cc22964900964b707a5e09fd26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.5/pitwall_linux_arm64.tar.gz"
      sha256 "49ae5625877008697ea3acc531c3a2b019084fb31ee05ce3fd2e8e8ec7b35615"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.5/pitwall_linux_amd64.tar.gz"
      sha256 "70cbf182bae25aa03eebece47764c54b41dbae2e5fc824877fe6677cb53c10a1"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

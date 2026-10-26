# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.3/pitwall_darwin_arm64.tar.gz"
      sha256 "ec301310ee37d571fc37836bfe8acdbb18d892e471fe9d63309584202d311cb7"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.3/pitwall_darwin_amd64.tar.gz"
      sha256 "a0e3bdc3751d9d68b41f21462728dd6a9f2a4b66412d6586379d6c372d7ed285"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.3/pitwall_linux_arm64.tar.gz"
      sha256 "03305cb5a7629890f46beaaaa6aae4ca954de990c1f9aa31d759b65483325518"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.3/pitwall_linux_amd64.tar.gz"
      sha256 "0d88e5773b6c9c583a1b1bb8afbec745311881f84ca9b010938a5630cae7e2a1"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

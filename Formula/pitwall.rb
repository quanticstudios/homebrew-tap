# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.1/pitwall_darwin_arm64.tar.gz"
      sha256 "057753a8158061cad1f1a88d8972450f9f56702c9fb20035c57dafad20f9ea4a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.1/pitwall_darwin_amd64.tar.gz"
      sha256 "76c00f949c1855d706cbbca3488ef6f537eb4fac934e9b0f8d4daa38304abe19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.1/pitwall_linux_arm64.tar.gz"
      sha256 "532aa774faedd158db26c257f94932abebbc2bc0c509547515986c9dc5f015dd"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.1/pitwall_linux_amd64.tar.gz"
      sha256 "9e0c75eeb2f8277f314c4db227d04b81c94f8218f8e8c0d2040ebf146c294592"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

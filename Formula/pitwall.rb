# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.15/pitwall_darwin_arm64.tar.gz"
      sha256 "48a4c5d9d3ee1b1e154da722a1ae82d7d4c7e3b8e8cf36cf707b5414a959dcc0"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.15/pitwall_darwin_amd64.tar.gz"
      sha256 "a4bdb38e6a8f87b146f30c2bc376990d5eb9b19544ca0d89feae3db7d0f429fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.15/pitwall_linux_arm64.tar.gz"
      sha256 "704e1e96d4757438cf3041e1cb68d6b1bd78dfdea7eccc83e4cf53f97f84a7e5"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.15/pitwall_linux_amd64.tar.gz"
      sha256 "a922f8df0e4c8f55bd4becd16c6fc9fc22c357954448b627720a71dc27e0a1e3"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

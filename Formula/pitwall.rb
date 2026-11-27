# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.11/pitwall_darwin_arm64.tar.gz"
      sha256 "4374ec31a32f560a3795314b8e00a8ce9b559798ee2aa5e3511b3ff73cdf9e82"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.11/pitwall_darwin_amd64.tar.gz"
      sha256 "87dbeb5e11fdf8147d7e1c1276f682925dfd6cc285d6da8d42bc228e7f876e9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.11/pitwall_linux_arm64.tar.gz"
      sha256 "6a6c291a67fbbadd6351e1a98ee025bed276a1a27b0ba2aaf9a0421658e90ca8"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.11/pitwall_linux_amd64.tar.gz"
      sha256 "2ea265ed27b5ce2061f22915e06e5806b7c325c5551c3c5f5f2ed27aa0c2c7f6"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

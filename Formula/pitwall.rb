# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.3/pitwall_darwin_arm64.tar.gz"
      sha256 "91ce5e084e4db1d4280facf327e57e6952175cce5a9356fd083d5bf3276efb1d"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.3/pitwall_darwin_amd64.tar.gz"
      sha256 "3753f59a89632afbc9a8fc94c0937bdf3957fefc6aa1e4b6c0d4a978d9ed7083"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.3/pitwall_linux_arm64.tar.gz"
      sha256 "7e9b3111f00a1c68f93a8c8ca5d0ab0692baca868e2f183ebda62f50d3cdf726"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.3/pitwall_linux_amd64.tar.gz"
      sha256 "dfcc6ce3abd68c0c73da78cd1c661be22cb3faaa79d91f730940511a2a7e343e"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.13/pitwall_darwin_arm64.tar.gz"
      sha256 "588c19d2d772a159c1e2093fb7e90cd2b7ee5d2d6bf78abd7d9ed645a230fd30"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.13/pitwall_darwin_amd64.tar.gz"
      sha256 "5bb9e2ded7061f0609c55ca4b90081d348d288d439a717f8e8c2e549c5b53b2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.13/pitwall_linux_arm64.tar.gz"
      sha256 "5789a5e9c8ec6f98d3873dacf7fa82c97d1bdb873d96d36ccd3a2d408ac55a45"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.13/pitwall_linux_amd64.tar.gz"
      sha256 "bd1108878eef39cd2493a548c400490bc5f3cdd0a01506209c175c57d15f8cc5"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

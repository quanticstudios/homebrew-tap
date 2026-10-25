# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.2/pitwall_darwin_arm64.tar.gz"
      sha256 "b2799bf0063af5d4019a28a977e0d5155c056ffc1699a1af32122c1b0524ee28"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.2/pitwall_darwin_amd64.tar.gz"
      sha256 "8cc96616536f9b92218407bc5c84040717690ba3c58129bdab645c72f836d85e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.2/pitwall_linux_arm64.tar.gz"
      sha256 "9daad4ed3c2a7b2eefa92fc8cfc888cf4ad9b5a512008fc03f06bb1cc7f3168b"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.2/pitwall_linux_amd64.tar.gz"
      sha256 "fbf1dc836d6a1359ebe7dbf0288070d8792ee59657ee08c8cd1b8f6e7fec6c8e"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

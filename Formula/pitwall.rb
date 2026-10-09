# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.2/pitwall_darwin_arm64.tar.gz"
      sha256 "6a0e6197d05c919e3580db77beb8f70b16db24c2018ccee70ec1e938747ab42e"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.2/pitwall_darwin_amd64.tar.gz"
      sha256 "b33a4e4b99ec41bc9e4614d400f47ac1ae6820bfb3191257b84daf1e04913fb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.2/pitwall_linux_arm64.tar.gz"
      sha256 "894957398b9bf6540014f81a1cce98a93263d4e264f8e4802e8de7bbcefe52c1"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.2/pitwall_linux_amd64.tar.gz"
      sha256 "65405a4128eeea00dadcec2abaa084a3aff08c0baebd1ecd90a0819ccce13828"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

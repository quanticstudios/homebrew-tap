# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.9/pitwall_darwin_arm64.tar.gz"
      sha256 "56bee8787386792efb6be7f4c15f40ba7e9353b29a20e55d03af6411178f0532"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.9/pitwall_darwin_amd64.tar.gz"
      sha256 "0ae0fdc0c077649077fb151deae626e870da5bbf8ba467a5591633833c789356"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.9/pitwall_linux_arm64.tar.gz"
      sha256 "3d3726959f3da9c74c8bca31b677f489e844c552ee6e83cd6cefa7763ee8e264"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.9/pitwall_linux_amd64.tar.gz"
      sha256 "e9a41c9caa70b79334a659e43c3c4de0bbdcf813abe4d1cef0b712f31ed2d1c5"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

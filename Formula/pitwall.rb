# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.7/pitwall_darwin_arm64.tar.gz"
      sha256 "fd90ec987e4ad4e408c50f44bf4f2b823fcbedb7cf574f2998870138ba748d93"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.7/pitwall_darwin_amd64.tar.gz"
      sha256 "7bc42517ddba5a027782da18b99f1e9872f956626cc1c9c2f49ecc78043a97f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.7/pitwall_linux_arm64.tar.gz"
      sha256 "ffdf4b1de8147e22952828a006fe05f161111e6ddc0fb9f9bed5255f44b8eb14"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.7/pitwall_linux_amd64.tar.gz"
      sha256 "53408eda2a27a6e82ff11c0c92645c372594a447a4ffdd72e08eacb08fca359d"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.14/pitwall_darwin_arm64.tar.gz"
      sha256 "57733f888f9b6ef0ca3d0092d89a255d46a9cc392df0374812957b27a7214df2"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.14/pitwall_darwin_amd64.tar.gz"
      sha256 "5b7e82e86b6cd967e0f451095315170057d36988c7335c1dbc67a752ac712ab0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.14/pitwall_linux_arm64.tar.gz"
      sha256 "282ccc487788a9a41bd4c067c481b6a3f63d7918626094b82fd3ae8e5076d752"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.14/pitwall_linux_amd64.tar.gz"
      sha256 "87a15365652eee9d6d4dc6f10d236b4b66f0ca8609f46e5ee648810a69bc2d2f"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

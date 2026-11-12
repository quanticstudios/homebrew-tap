# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.10/pitwall_darwin_arm64.tar.gz"
      sha256 "df4be79ab0e35919dfdbb763784f3d85b969d3e3b9193b8f5a2929144b35b45f"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.10/pitwall_darwin_amd64.tar.gz"
      sha256 "1714209d57e068587d16f1c86c41fbc3167f938640240c16c0b40ec0b1a98bda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.10/pitwall_linux_arm64.tar.gz"
      sha256 "fcceaf5ae5670f23f3d55161f0e9c026dabd9ef2b2b213b458cb63df4c56111b"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.10/pitwall_linux_amd64.tar.gz"
      sha256 "0de06e8a19adf6c4df273207ca9b72f1584e4af4f1c3146baa49b2cc8b0155f9"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

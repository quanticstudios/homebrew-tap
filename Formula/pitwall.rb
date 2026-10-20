# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.16/pitwall_darwin_arm64.tar.gz"
      sha256 "469b2252410c0345d78254b81e169f352445d5ea9e6ffb2af71fdf08f7b1c355"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.16/pitwall_darwin_amd64.tar.gz"
      sha256 "79e9b9510c0bc51347636d365c42e2b76c54facba32a1996a48838b3e1ec1a22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.16/pitwall_linux_arm64.tar.gz"
      sha256 "f6de6f91706e27b82142d529c5c6e0674a1910b92dcac64a43445873bcaa633c"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.16/pitwall_linux_amd64.tar.gz"
      sha256 "3abc85165c6851f103961905c957114a4f0156f9f12fd777e688b8795e1c873a"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

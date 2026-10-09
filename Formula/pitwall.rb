# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.3/pitwall_darwin_arm64.tar.gz"
      sha256 "f533e21765a197226d4c3dad874534dc8bac3e23c57a68d89fda2d64af60007d"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.3/pitwall_darwin_amd64.tar.gz"
      sha256 "350d1578fb8c88c2399d4a317beb3b0c84e8e806aae849f994cb81014cdd174c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.3/pitwall_linux_arm64.tar.gz"
      sha256 "497526a19deda711231cb77ebd3989f81b58067b1b9c794747b334918655a391"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.3/pitwall_linux_amd64.tar.gz"
      sha256 "8a281279e19adbb5cebfaabac7283e260b2264e8413aa39fa551f12707dd840d"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

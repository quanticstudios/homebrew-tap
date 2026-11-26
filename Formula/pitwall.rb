# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.9/pitwall_darwin_arm64.tar.gz"
      sha256 "a2a06a707d69545e69a61b6d0065041b39f1129f4a0ef071b1ef27e0409a9626"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.9/pitwall_darwin_amd64.tar.gz"
      sha256 "15d255d6ba869a36839180301eaa7ff3abc002f2ae33a538ac4a7b13767abe9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.9/pitwall_linux_arm64.tar.gz"
      sha256 "ef52dfb52e5a3ff9b8f5f9498303e8145928c14ab4f363cd61b6402cb32574ec"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.9/pitwall_linux_amd64.tar.gz"
      sha256 "5bd5538cf64da3a81884b1019122017138633535652139cf60cf3621e05f18a0"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

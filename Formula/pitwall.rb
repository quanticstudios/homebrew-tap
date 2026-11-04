# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.14/pitwall_darwin_arm64.tar.gz"
      sha256 "3aad208597e88831540a2eb8ee48adcdc2bc18ba5beef4c9f264ad55b8c7751b"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.14/pitwall_darwin_amd64.tar.gz"
      sha256 "68942440511241b8ed1b8f2234d4e3fb90cefaaaec4e62845389e5deeed02491"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.14/pitwall_linux_arm64.tar.gz"
      sha256 "a44b071738b8edf522496e79365c4eff04c17fcad855ce16327a44a54e47920e"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.14/pitwall_linux_amd64.tar.gz"
      sha256 "f3d0e8c8190108133e77935aac44daa67b50ba0a0df35b22bf78c39a40e88473"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

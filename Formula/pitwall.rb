# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.6/pitwall_darwin_arm64.tar.gz"
      sha256 "6a337b31cb251cd139d1a64304480c65bb738163ba380a5acc6feac7981705fc"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.6/pitwall_darwin_amd64.tar.gz"
      sha256 "a58c19c04e053939436740f24489e09b2e009ecfe43b40a11ae70b7a3cee80b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.6/pitwall_linux_arm64.tar.gz"
      sha256 "b6ee0702086e0af9fe7bd508464b6f0130ceec076e9a1a55282709eea7500f3f"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.6/pitwall_linux_amd64.tar.gz"
      sha256 "5986f73bda16c32751395f450cae3983dab55d6a73a62d97c7a6496841e2c6d1"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

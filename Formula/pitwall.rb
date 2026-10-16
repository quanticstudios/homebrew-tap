# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.11/pitwall_darwin_arm64.tar.gz"
      sha256 "f671176c444091715f773e918c711884b8562dd193902da8d0fc3ce12e5eb7a1"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.11/pitwall_darwin_amd64.tar.gz"
      sha256 "755b611382e328b6ddc6c332e887c78c8edcbfdcd9199bb173e30b4190369277"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.11/pitwall_linux_arm64.tar.gz"
      sha256 "ae395b0c1c398fe8782c2a2e502ea47866343a294ed237d270fb9b16ff7c93ea"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.11/pitwall_linux_amd64.tar.gz"
      sha256 "e98f374b4ee8675f38f0b97b9edc634e82cb18d02effcc8cafc7d6f26bff10a1"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

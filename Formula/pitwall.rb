# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.13/pitwall_darwin_arm64.tar.gz"
      sha256 "4c90f02baa01250e24219176ceff340876b482014441c77244afb56dc64c7937"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.13/pitwall_darwin_amd64.tar.gz"
      sha256 "884e586289d24eed8369d601a4c983a8b74ac3bdc4d35e9995a69c99a5b7c407"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.13/pitwall_linux_arm64.tar.gz"
      sha256 "f76a1122a3d799d1e6f908755f596ddc2f09812e97c76210dd6eda6227974585"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.13/pitwall_linux_amd64.tar.gz"
      sha256 "457c21061feb47664b15e09ec2d77e711f4c16ef448f8a4f1521a201e70cb917"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end

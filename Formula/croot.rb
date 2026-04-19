class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.6.1/croot-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "91eb7a40b2f3285447ad579e3597ebe28aa13ffe1f4598ba39342569193820bc"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.6.1/croot-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "9c501d0248e29f80d3f78e359f8868209db6e9d89981ee573f1b3f86336fa964"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end

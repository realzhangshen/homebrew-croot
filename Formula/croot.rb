class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.5/croot-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "956798bd4d545db7ddfd16a364b91d33fe1aac3e162fec93d2872ee32d3fa5d7"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.5/croot-v0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "6de88a9d9333443fc9d922b10a82e00721a55e4c0c51fd4b24bbc7d0cc90cc65"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end

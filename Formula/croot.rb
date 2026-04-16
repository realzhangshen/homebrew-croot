class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.6.0/croot-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "1de47110cd8bb81200697767c3e08fdb153218d29aa68c948c426ef6a920c544"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.6.0/croot-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "d50c62ac98ee82c0c480c56f4838dcac276ba21941995fb08bbe8d801fff5e7d"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end

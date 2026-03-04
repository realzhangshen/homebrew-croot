class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.2/croot-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "873b0139e642dd34c23c0ee279809d29ffe778f9546556badab54766cdbc2582"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.2/croot-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "e834d98eede03f8821a7b6bd302c36e70bd2fe99cf966c48359364e098f5f60d"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end

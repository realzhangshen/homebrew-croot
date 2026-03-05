class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.5/croot-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "04d1d44efb095501febf3e80f9c70e5d20549fd60cf04412efbe8a61995d0827"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.5/croot-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "d77ad9259a805dc40c346c31c49622654f6f6d1d9b7922f22e123ff96b4afaf7"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end

class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.4.0/croot-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe1ceb0504bbb2ff064caa71c222d666742ea42be6316f381c2b94c39c4dcff1"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.4.0/croot-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "502f8155d43ad2c3530eac076dab528f490e518085ee9537a335a1fb77d7da72"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end

class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.1/croot-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "22e209504421f23d9a509876cbb30a23b513a9975aeb80bb27ed7c3f29a571ab"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.1/croot-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "608d1a143e9f7b8c9f8a8f3ef3bb91769bab1ff93dffe48f53d1e58744dc0674"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end

class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.4.1/croot-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "d068dab286950b780765169ac98f97aac26f189a315e7d43fec5562ee25c4f5c"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.4.1/croot-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "f0c127333be76ac81b07b6e4ce1cd3d7d45403de21e3e9457340dc7bfa244d82"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end

# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.22"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.22/iamlive-v1.1.22-darwin-amd64.zip"
    sha256 "16e9b4c6de7d611eb4a9c9b82c9b8a9398aa01e78a0427912e6caa36ebde1756"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.22/iamlive-v1.1.22-darwin-arm64.zip"
    sha256 "2dcd2e2d7f40ef34eb8015f334620ee8660cee1daa36cf18421c68d1e65f04ce"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.22/linux-v1.1.22-linux-386.tar.gz"
    sha256 "59a8deba43fcef7226d6bdab2248b6ae7c519c2bff90d4a7db2b9a61458fcdf0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.22/linux-v1.1.22-linux-amd64.tar.gz"
    sha256 "0512ac4ea96fe3fe5365599cb21127e97a7063c22d9eaa6ee16b3bdf2cba8b3e"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.22/linux-v1.1.22-linux-arm64.tar.gz"
    sha256 "7a14c6e594b2819e8f9b7ac0a7e14caeecd45252da227aa1e88fddde48dbf987"
  end

  def install
    bin.install "iamlive"
  end
end

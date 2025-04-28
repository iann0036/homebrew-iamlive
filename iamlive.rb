# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.24"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.24/iamlive-v1.1.24-darwin-amd64.zip"
    sha256 "db6b5ca9be779503a0f78c8347a6fd17f819115e4b45a1326e85135b440f08a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.24/iamlive-v1.1.24-darwin-arm64.zip"
    sha256 "161af504303dac989aa96be3a37dd73e6829fcc7c1526805774ee7053025ae3f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.24/linux-v1.1.24-linux-386.tar.gz"
    sha256 "3e67a41200da185fd7d7b3d78e491fcabaf2d3cdcb777e287636bf6d042b53d7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.24/linux-v1.1.24-linux-amd64.tar.gz"
    sha256 "0173d9a59e2c8cef6792d48476df55bda01f95b92ee59095ed6a257fef6f26e8"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.24/linux-v1.1.24-linux-arm64.tar.gz"
    sha256 "595448d0d3936964f3802da7a82373c7e70ecc8001bd6bdb0fd8aff750942881"
  end

  def install
    bin.install "iamlive"
  end
end

# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.13"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.13/iamlive-v1.1.13-darwin-amd64.zip"
    sha256 "e85823cf6962f99fb4c84f5bb9e72efbc9fa6b2eaf2276ec4cf51596899abbdb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.13/iamlive-v1.1.13-darwin-arm64.zip"
    sha256 "cc4ae77b4091a1f41011f2f34907541d35d3c705627898c4996ca4b96ab78a40"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.13/linux-v1.1.13-linux-386.tar.gz"
    sha256 "7947e752063444fa7856a061c289c20020ceaf0e6c614a8f3709819c4de4269b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.13/linux-v1.1.13-linux-amd64.tar.gz"
    sha256 "664ed89032eba9108ab0c24632c066ed61d6395b71f43c774390a46098e0f4fb"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.13/linux-v1.1.13-linux-arm64.tar.gz"
    sha256 "85f17422d509a7b95c2d424c07b67d375b09907085363024c7066452d36c49d7"
  end

  def install
    bin.install "iamlive"
  end
end

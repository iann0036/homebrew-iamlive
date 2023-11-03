# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.2/iamlive-v1.1.2-darwin-amd64.zip"
    sha256 "50fa7ceaafd3d17c7f7fa9b686769f8271c8cd2efa818796876cd7780645f4d2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.2/iamlive-v1.1.2-darwin-arm64.zip"
    sha256 "c7858c5afd71b1b3440ab00d6cc7a3fcf7056dae259715840da763fcb83badab"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.2/linux-v1.1.2-linux-386.tar.gz"
    sha256 "6065cf7fde27b771545c163f0eac5543dde8d5c2a27ffded28c5551f978673d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.2/linux-v1.1.2-linux-amd64.tar.gz"
    sha256 "94a526950212384bf11fe83f10896babfbcc6c5d79aeccebe4c4359608016411"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.2/linux-v1.1.2-linux-arm64.tar.gz"
    sha256 "87201042dbb02f8ea892880894b9c95422c6bcce5eb66a7388558f239cfb6667"
  end

  def install
    bin.install "iamlive"
  end
end

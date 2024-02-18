# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.7/iamlive-v1.1.7-darwin-amd64.zip"
    sha256 "2493bb6c55d409ff524640c8b6c55ff5ad2ca3543b68f5c82baacd2731614b75"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.7/iamlive-v1.1.7-darwin-arm64.zip"
    sha256 "0b68e733d18e4e3a8cae6066601f99f1c6cffad087d35436efa4569321ab6bc7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.7/linux-v1.1.7-linux-386.tar.gz"
    sha256 "86ca403af3e33011ae84e140716bef57063c3881989bda0ee04108d216a164f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.7/linux-v1.1.7-linux-amd64.tar.gz"
    sha256 "0a1083a1026eda52dff5c5f82fc87b920f400c691a5c821e34a6f2c3d2ed644f"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.7/linux-v1.1.7-linux-arm64.tar.gz"
    sha256 "5705550ac71fc65c4aaab97222778004fa7d3002f19a1131ecc135845226b44a"
  end

  def install
    bin.install "iamlive"
  end
end

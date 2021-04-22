# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.30.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.30.0/iamlive-v0.30.0-darwin-amd64.zip"
    sha256 "3c8807907eef97628479db1604a8c63814b34edde23f4f0452408232d12d148e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.30.0/iamlive-v0.30.0-darwin-arm64.zip"
    sha256 "4d5462dff193ca8a6bb375e524379ed1fce02e0b0367a435e8225a212c30c700"
  end

  def install
    bin.install "iamlive"
  end
end

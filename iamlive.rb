# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.25.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.25.0/iamlive-v0.25.0-darwin-amd64.zip"
    sha256 "c797b1b1c12f6f1225f9010016cdc4f4f50e6127f7c533d1452b750905dfea09"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.25.0/iamlive-v0.25.0-darwin-arm64.zip"
    sha256 "07b41bad006479ba9a755518db9dbaf94629c6687d88218dbb3326e8f0a0b079"
  end

  def install
    bin.install "iamlive"
  end
end

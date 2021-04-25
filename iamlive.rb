# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.33.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.33.0/iamlive-v0.33.0-darwin-amd64.zip"
    sha256 "35f0970f849bfcac1cda2c5e0c99e1e2cbcfbe6d642691fb776df62477677201"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.33.0/iamlive-v0.33.0-darwin-arm64.zip"
    sha256 "ae4477f52c79aa1fff84a7271ff74ff1bb214b72e66db9eeb57d3f9805d51a01"
  end

  def install
    bin.install "iamlive"
  end
end

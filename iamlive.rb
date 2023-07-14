# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.53.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.53.0/iamlive-v0.53.0-darwin-amd64.zip"
    sha256 "215d14c13ffa620c32defeb82969b31bb6d66a39793273d6c85ad78a24c2c24f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.53.0/iamlive-v0.53.0-darwin-arm64.zip"
    sha256 "5815cbc5b950bc7c21b9c9f6d0411e6bb7ac8ae226920746a089c4237b70f174"
  end

  def install
    bin.install "iamlive"
  end
end

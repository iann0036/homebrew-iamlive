# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.37.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.37.0/iamlive-v0.37.0-darwin-amd64.zip"
    sha256 "770f6feffde5906fdc52cd037acbb47fe909093acdc2d35c58d32986edd4b99f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.37.0/iamlive-v0.37.0-darwin-arm64.zip"
    sha256 "f5e0fec99e6f785276f4c6aa649a162278871d7316a3ce97637eaffa020fa441"
  end

  def install
    bin.install "iamlive"
  end
end

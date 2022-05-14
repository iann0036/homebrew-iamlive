# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.47.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.47.3/iamlive-v0.47.3-darwin-amd64.zip"
    sha256 "99db7e815a5fe94d4e099f22d7c29b6b160b97cbb9b4aec566c9ee3184c5b5d2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.47.3/iamlive-v0.47.3-darwin-arm64.zip"
    sha256 "cf710a197055e4236fafb503cab9bf961f6364ecf18d35b343ce4bd13674f0b1"
  end

  def install
    bin.install "iamlive"
  end
end

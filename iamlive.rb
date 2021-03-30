# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.27.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.27.0/iamlive-v0.27.0-darwin-amd64.zip"
    sha256 "cce9ab315ca0bdc80464b5a35b027cc6d244d73b4adff8193f350529a2fdc18e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.27.0/iamlive-v0.27.0-darwin-arm64.zip"
    sha256 "37fe65c681329526a38e5ed3918c94d320dcc74471dc98d3e7ceb53316474e71"
  end

  def install
    bin.install "iamlive"
  end
end

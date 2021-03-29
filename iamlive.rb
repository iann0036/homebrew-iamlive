# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.26.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.26.0/iamlive-v0.26.0-darwin-amd64.zip"
    sha256 "fb08e7acf5d95eeaf9f2c648b8b2b10b9a9781955f89281354a9f1cc5db8388e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.26.0/iamlive-v0.26.0-darwin-arm64.zip"
    sha256 "75f0bed50dc1a301153adbd874330715b2ff5f86cbec4ba87914ad166887d5bb"
  end

  def install
    bin.install "iamlive"
  end
end

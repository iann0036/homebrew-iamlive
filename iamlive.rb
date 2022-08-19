# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.49.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.49.0/iamlive-v0.49.0-darwin-amd64.zip"
    sha256 "b1ada0186aebe224167ce6ef63dd6c2d32ce0e932462a4994714a074fdf3d95f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.49.0/iamlive-v0.49.0-darwin-arm64.zip"
    sha256 "64e8fd36924fe80fc919a114108200c3142b1422957dce02bfc09d55ab44a26f"
  end

  def install
    bin.install "iamlive"
  end
end

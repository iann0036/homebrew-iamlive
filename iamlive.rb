# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.36.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.36.0/iamlive-v0.36.0-darwin-amd64.zip"
    sha256 "14f3e3d60ee51baaecf9985be60923368e256137155ff13cf4fa878414f31384"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.36.0/iamlive-v0.36.0-darwin-arm64.zip"
    sha256 "a5c8e9fd5735bc5475f766ae1e3b72cb6b9954a96a4dfde1b7744dfe06887e69"
  end

  def install
    bin.install "iamlive"
  end
end

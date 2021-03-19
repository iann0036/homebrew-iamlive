# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.0.13"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.0.13/iamlive_darwin_amd64.dmg"
    sha256 "72a58fdd8c48b6c0dca6f65d9d0cff39984927aebf38527799e6f059491871dd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.0.13/iamlive_darwin_arm64.dmg"
    sha256 "aecd9a27f9395b4d4f3b852dc449d3607003b48ec5f31c6dfe2e0f79b31282e1"
  end

  def install
    bin.install "iamlive"
  end
end

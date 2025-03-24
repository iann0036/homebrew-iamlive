# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.23"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.23/iamlive-v1.1.23-darwin-amd64.zip"
    sha256 "556db8da3a3b69517fbc302caad6226170c7a016d175715c9d0a2e5aa2e3ad4a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.23/iamlive-v1.1.23-darwin-arm64.zip"
    sha256 "3f4b8f8bd0ff143057a2c6901898c5b4b4d8b23f7ac022ec4b6653f109dc08a7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.23/linux-v1.1.23-linux-386.tar.gz"
    sha256 "3480fc2d1cd69d1010474d3debd16a000ed06fc78fa1a652415425498ee1fc1d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.23/linux-v1.1.23-linux-amd64.tar.gz"
    sha256 "bb0ed560705a8f5377e696dede9d6a0cbbbbbb62b8ff27a56ca1481fa48324f6"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.23/linux-v1.1.23-linux-arm64.tar.gz"
    sha256 "0acb20f770c4c7c4dc2c30d910e161c1d7a0c1e7501b9c295ad54f5ce84bc161"
  end

  def install
    bin.install "iamlive"
  end
end

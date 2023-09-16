# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.0/iamlive-v1.1.0-darwin-amd64.zip"
    sha256 "e72999d7a6447eb36cd3317b886c64d6807eb5bff5efbf73b752eb4ec8c5eda0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.0/iamlive-v1.1.0-darwin-arm64.zip"
    sha256 "0f5f168b36e31fc82fcc24e777adbcb7b28fe1cbaefd8315513ade5805ed053a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.0/linux-v1.1.0-linux-386.zip"
    sha256 "4fcf8891af92c02da3a5df04f5a4a6b97ae4fa5c91a4b6eac737460471d61dcb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.0/linux-v1.1.0-linux-amd64.zip"
    sha256 "2894f6135f9280c56d05c521c3c479a2452a2a25cdb944a3b68a40987f63b528"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.0/linux-v1.1.0-linux-arm64.zip"
    sha256 "e24af138487fa1530aeb601e8bd667e89278f91698a545e94f4cc782672564cd"
  end

  def install
    bin.install "iamlive"
  end
end

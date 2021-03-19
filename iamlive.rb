# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.0.12"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/homebrew-iamlive/releases/download/v0.0.12/iamlive-actiontesting_0.0.12_darwin_amd64.zip"
    sha256 "8b2036cfb0cd888c0b5aa61d58bb87bd38d5407446edca68325a696ae33d63ad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/homebrew-iamlive/releases/download/v0.0.12/iamlive-actiontesting_0.0.12_darwin_arm64.zip"
    sha256 "23861ef608a4e3d04dec7a7341c8726502dd7dd4cd4b2c47ccb0c5cf87865058"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/iann0036/homebrew-iamlive/releases/download/v0.0.12/iamlive-actiontesting_0.0.12_linux_amd64.zip"
    sha256 "c6a28efcd9fe83ad396e18c75a7d9545d3ab5ed0a8dbfecec5416264e262d372"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/homebrew-iamlive/releases/download/v0.0.12/iamlive-actiontesting_0.0.12_linux_arm64.zip"
    sha256 "272e19f81d15c9bbdc77a75d481fa797ff5bab23df263e80b177a35ccdb53003"
  end

  def install
    bin.install "iamlive-actiontesting"
  end
end
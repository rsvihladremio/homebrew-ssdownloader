#  Copyright 2022 Ryan Svihla
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
class SsDownloader < Formula

  desc "SsDownloader integrates Zendesk and SendSafely APIs to easily download tickets@"
  homepage "https://github.com/rsvihladremio/ssdownloader"
  url "https://github.com/rsvihladremio/ssdownloader/archive/v0.2.5.tar.gz"
  sha256 "66c62a0b15326067661fe394b20dc580e1b745555bffb49decd70b125d6e06f0"
  license "Apache-2.0"
  depends_on "go@1.18"
  def install
    system "./script/build"
    bin.install "./bin/ssdownloader" => "ssdownloader"
  end
  test do
  end
end

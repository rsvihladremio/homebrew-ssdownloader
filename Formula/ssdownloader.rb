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
class Ssdownloader < Formula

  desc "ssdownloader integrates Zendesk and SendSafely APIs to easily download tickets@"
  homepage "https://github.com/rsvihladremio/ssdownloader"
  url "https://github.com/rsvihladremio/ssdownloader/archive/v0.4.3.tar.gz"
  sha256 "795977a910734f8f28edc101afd93becaf6c8ed1d4e76f8b50bfd5a0740dce7d"
  license "Apache-2.0"
  depends_on "go@1.19"
  def install
    system "go build -ldflags '-X github.com/rsvihladremio/ssdownloader/cmd.GitSha=9cb08a6 -X github.com/rsvihladremio/ssdownloader/cmd.Version=v0.4.3' -o ./bin/ssdownloader"
    bin.install "./bin/ssdownloader" => "ssdownloader"
  end
  test do
  end
end

add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y g++-10 make git zlib1g-dev m4
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 30
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 30
update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
update-alternatives --set cc /usr/bin/gcc
update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
update-alternatives --set c++ /usr/bin/g++

apt-get install apt-transport-https curl gnupg -y
curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
mv bazel-archive-keyring.gpg /usr/share/keyrings
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
apt-get update && apt-get install bazel

bazel build @com_google_protobuf//:protobuf_headers
bazel build @com_google_protobuf//:protobuf_lite
bazel build @com_google_protobuf//:protobuf
bazel build @com_google_protobuf//:protoc
bazel build //:typesense-server

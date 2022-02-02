# Get Recovery Image
echo "Fetching Image Link..."
linkdl=$(curl -v --stderr - https://cros-updates-serving.appspot.com/ | grep -o 'https[^"]*'"$1"'[^"]*zip' | tail -1)
echo "Downloading From $linkdl"
curl -L ${linkdl} -output Img.bin.zip

# Process Files
#test
echo HereEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
file Img.bin.zip
7z x Img.bin.zip
ls
mv *".bin" $2
rm Img.bin.zip






# Usage
# fetchimage <Version> <Image Name>

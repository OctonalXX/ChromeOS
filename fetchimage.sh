# Get Recovery Image
echo "Fetching Image Link..."
linkdl=$(curl -v --stderr - https://cros-updates-serving.appspot.com/ | grep -o 'https[^"]*'"$1"'[^"]*zip' | tail -1)
echo "Downloading From $linkdl"
wget -o Img.bin.zip "${linkdl}"

# Process Files
fnamet=$(zipinfo -1 Img.bin.zip)
gunzip -d Img.bin.zip
mv $fnamet $2
rm Img.bin.zip






# Usage
# fetchimage <Version> <Image Name>

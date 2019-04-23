for i in {1..5}
do
mkdir /tmp/user-$i
cp docker-compose.yml /tmp/user-$i/
port=$((5000 + $i))
echo $port
sed -i "s/5000/$port/g" /tmp/user-$i/docker-compose.yml
docker-compose -f /tmp/user-$i/docker-compose.yml up -d  --scale node=2
done
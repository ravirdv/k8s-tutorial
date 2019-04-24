for i in {1..15}
do
docker-compose -f /tmp/user-$i/docker-compose.yml down -v
rm -rf /tmp/user-$i
done

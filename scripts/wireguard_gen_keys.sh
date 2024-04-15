privkey=$(wg genkey) sh -c 'echo "WIREGUARD_SERVER_PRIVKEY: $privkey
WIREGUARD_SERVER_PUBKEY: $(echo $privkey | wg pubkey)"'

privkey=$(wg genkey) sh -c 'echo "WIREGUARD_PRIVKEY: $privkey
WIREGUARD_PUBKEY: $(echo $privkey | wg pubkey)"'

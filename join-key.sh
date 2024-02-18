# Create a key
export JOIN_KEY=$(openssl rand -hex 32)
echo ${JOIN_KEY}

# Pass the created join key to helm
helm upgrade --install jfrog-platform --set artifactory.joinKey=${JOIN_KEY} --namespace jfrog-platform jfrog/jfrog-platform -f jfrog-platform/custom-values.yml



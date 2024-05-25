#! /usr/bin/env sh

set -eu

host="${PLUGIN_HOST}"
port="${PLUGIN_PORT}"

echo "checking for ${host}:${port} to be accessible."

until nc -z "${host}" "${port}"; do
  echo "waiting for service to start..."
  sleep 1
done

echo "service started."

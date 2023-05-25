APPS_JSON=./apps.json
export APPS_JSON_BASE64=$(cat ${APPS_JSON} | base64 | tr -d '\n')
podman build \
  --build-arg=FRAPPE_PATH=https://github.com/frappe/frappe \
  --build-arg=FRAPPE_BRANCH=version-14 \
  --build-arg=PYTHON_VERSION=3.10.5 \
  --build-arg=NODE_VERSION=16.18.0 \
  --build-arg=APPS_JSON_BASE64=$APPS_JSON_BASE64 \
  --tag=erpnext_hrms:latest \
  --file=Containerfile \
  --build-context app_src=$(dirname `pwd`)
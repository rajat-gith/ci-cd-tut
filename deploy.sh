version: 0.2

phases:
  build:
    commands:
      - sam package --template-file template.yaml --output-template-file packaged-template.yaml --s3-bucket $S3_BUCKET_NAME

artifacts:
  files:
    - packaged-template.yaml

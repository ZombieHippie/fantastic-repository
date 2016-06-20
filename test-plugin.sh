# This needs to be updated for Drone 0.5.0
docker run -i colelawr/drone-dryclean <<EOF
{
    "repo": {
        "clone_url": "git://github.com/drone/drone",
        "owner": "drone",
        "name": "drone",
        "full_name": "drone/drone"
    },
    "system": {
        "link_url": "https://beta.drone.io"
    },
    "build": {
        "number": 22,
        "status": "success",
        "started_at": 1421029603,
        "finished_at": 1421029813,
        "message": "Update the Readme",
        "author": "johnsmith",
        "author_email": "john.smith@gmail.com",
        "event": "push",
        "branch": "master",
        "commit": "436b7a6e2abaddfd35740527353e78a227ddcb2c",
        "ref": "refs/heads/master"
    },
    "workspace": {
        "root": "/drone/src",
        "path": "/drone/src/github.com/drone/drone"
    },
    "vargs": {
        "host": "cov.dryclean.io",
        "auth": "hello",
  "files": [
    {
      "path": "./coverage/Phantom*/coverage-final.json",
      "label": "jasmine-coverage.json",
      "postprocessor": "cobertura"
    },
    {
      "path": "./tslint-checkstyle.txt",
      "label": "tslint.txt",
      "postprocessor": "checkstyle"
    }
  ]
    }
}
EOF

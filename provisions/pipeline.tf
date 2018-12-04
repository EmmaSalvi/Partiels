# Create a Heroku pipeline
resource "heroku_pipeline" "partielapp" {
  name = "partielapp"
}

# Couple apps to different pipeline stages
resource "heroku_pipeline_coupling" "development" {
  app      = "${heroku_app.development.name}"
  pipeline = "${heroku_pipeline.partielapp.id}"
  stage    = "development"
}

resource "heroku_pipeline_coupling" "staging" {
  app      = "${heroku_app.staging.name}"
  pipeline = "${heroku_pipeline.partielapp.id}"
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app      = "${heroku_app.production.name}"
  pipeline = "${heroku_pipeline.partielapp.id}"
  stage    = "production"
}

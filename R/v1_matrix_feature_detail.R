# HCA Matrix Service
#
# Human Cell Atlas Matrix Service API
#
# The version of the OpenAPI document: 1.0.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title V1MatrixFeatureDetail
#' @description V1MatrixFeatureDetail Class
#' @format An \code{R6Class} generator object
#' @field feature   character  [optional]
#'
#' @field feature_description   character  [optional]
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1MatrixFeatureDetail <- R6::R6Class(
  'V1MatrixFeatureDetail',
  public = list(
    `feature` = NULL,
    `feature_description` = NULL,
    initialize = function(`feature`='gene', `feature_description`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`feature`)) {
        stopifnot(is.character(`feature`), length(`feature`) == 1)
        self$`feature` <- `feature`
      }
      if (!is.null(`feature_description`)) {
        stopifnot(is.character(`feature_description`), length(`feature_description`) == 1)
        self$`feature_description` <- `feature_description`
      }
    },
    toJSON = function() {
      V1MatrixFeatureDetailObject <- list()
      if (!is.null(self$`feature`)) {
        V1MatrixFeatureDetailObject[['feature']] <-
          self$`feature`
      }
      if (!is.null(self$`feature_description`)) {
        V1MatrixFeatureDetailObject[['feature_description']] <-
          self$`feature_description`
      }

      V1MatrixFeatureDetailObject
    },
    fromJSON = function(V1MatrixFeatureDetailJson) {
      V1MatrixFeatureDetailObject <- jsonlite::fromJSON(V1MatrixFeatureDetailJson)
      if (!is.null(V1MatrixFeatureDetailObject$`feature`)) {
        self$`feature` <- V1MatrixFeatureDetailObject$`feature`
      }
      if (!is.null(V1MatrixFeatureDetailObject$`feature_description`)) {
        self$`feature_description` <- V1MatrixFeatureDetailObject$`feature_description`
      }
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`feature`)) {
        sprintf(
        '"feature":
          "%s"
                ',
        self$`feature`
        )},
        if (!is.null(self$`feature_description`)) {
        sprintf(
        '"feature_description":
          "%s"
                ',
        self$`feature_description`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(V1MatrixFeatureDetailJson) {
      V1MatrixFeatureDetailObject <- jsonlite::fromJSON(V1MatrixFeatureDetailJson)
      self$`feature` <- V1MatrixFeatureDetailObject$`feature`
      self$`feature_description` <- V1MatrixFeatureDetailObject$`feature_description`
      self
    }
  )
)

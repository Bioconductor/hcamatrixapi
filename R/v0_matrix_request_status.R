# HCA Matrix Service
#
# Human Cell Atlas Matrix Service API
#
# The version of the OpenAPI document: 1.0.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title V0MatrixRequestStatus
#' @description V0MatrixRequestStatus Class
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V0MatrixRequestStatus <- R6::R6Class(
  'V0MatrixRequestStatus',
  public = list(
    initialize = function(...){
      local.optional.var <- list(...)
    },
    toJSON = function() {
      V0MatrixRequestStatusObject <- list()

      V0MatrixRequestStatusObject
    },
    fromJSON = function(V0MatrixRequestStatusJson) {
      V0MatrixRequestStatusObject <- jsonlite::fromJSON(V0MatrixRequestStatusJson)
    },
    toJSONString = function() {
      jsoncontent <- c(
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(V0MatrixRequestStatusJson) {
      V0MatrixRequestStatusObject <- jsonlite::fromJSON(V0MatrixRequestStatusJson)
      self
    }
  )
)

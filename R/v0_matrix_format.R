# HCA Matrix Service
#
# Human Cell Atlas Matrix Service API
#
# The version of the OpenAPI document: 1.0.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title V0MatrixFormat
#' @description V0MatrixFormat Class
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V0MatrixFormat <- R6::R6Class(
  'V0MatrixFormat',
  public = list(
    initialize = function(...){
      local.optional.var <- list(...)
    },
    toJSON = function() {
      V0MatrixFormatObject <- list()

      V0MatrixFormatObject
    },
    fromJSON = function(V0MatrixFormatJson) {
      V0MatrixFormatObject <- jsonlite::fromJSON(V0MatrixFormatJson)
    },
    toJSONString = function() {
      jsoncontent <- c(
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(V0MatrixFormatJson) {
      V0MatrixFormatObject <- jsonlite::fromJSON(V0MatrixFormatJson)
      self
    }
  )
)

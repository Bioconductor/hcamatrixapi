# HCA Matrix Service
#
# Human Cell Atlas Matrix Service API
#
# The version of the OpenAPI document: 1.0.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title V1MatrixFilter
#' @description V1MatrixFilter Class
#' @format An \code{R6Class} generator object
#' @field op   \link[hcamatrixapi:v1_LogicalFilterOperator]{  V1LogicalFilterOperator  }  [optional]
#'
#' @field field   character  [optional]
#'
#' @field value   \link[hcamatrixapi:oneOf&lt;v1_ComparisonFilter,v1_LogicalFilter,array&gt;]{  OneOfv1ComparisonFilterv1LogicalFilterarray  }  [optional]
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1MatrixFilter <- R6::R6Class(
  'V1MatrixFilter',
  public = list(
    `op` = NULL,
    `field` = NULL,
    `value` = NULL,
    initialize = function(`op`=NULL, `field`=NULL, `value`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`op`)) {
        stopifnot(R6::is.R6(`op`))
        self$`op` <- `op`
      }
      if (!is.null(`field`)) {
        stopifnot(is.character(`field`), length(`field`) == 1)
        self$`field` <- `field`
      }
      if (!is.null(`value`)) {
        stopifnot(R6::is.R6(`value`))
        self$`value` <- `value`
      }
    },
    toJSON = function() {
      V1MatrixFilterObject <- list()
      if (!is.null(self$`op`)) {
        V1MatrixFilterObject[['op']] <-
          self$`op`$toJSON()
      }
      if (!is.null(self$`field`)) {
        V1MatrixFilterObject[['field']] <-
          self$`field`
      }
      if (!is.null(self$`value`)) {
        V1MatrixFilterObject[['value']] <-
          self$`value`$toJSON()
      }

      V1MatrixFilterObject
    },
    fromJSON = function(V1MatrixFilterJson) {
      V1MatrixFilterObject <- jsonlite::fromJSON(V1MatrixFilterJson)
      if (!is.null(V1MatrixFilterObject$`op`)) {
        opObject <- V1LogicalFilterOperator$new()
        opObject$fromJSON(jsonlite::toJSON(V1MatrixFilterObject$op, auto_unbox = TRUE, digits = NA))
        self$`op` <- opObject
      }
      if (!is.null(V1MatrixFilterObject$`field`)) {
        self$`field` <- V1MatrixFilterObject$`field`
      }
      if (!is.null(V1MatrixFilterObject$`value`)) {
        valueObject <- OneOfv1ComparisonFilterv1LogicalFilterarray$new()
        valueObject$fromJSON(jsonlite::toJSON(V1MatrixFilterObject$value, auto_unbox = TRUE, digits = NA))
        self$`value` <- valueObject
      }
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`op`)) {
        sprintf(
        '"op":
        %s
        ',
        jsonlite::toJSON(self$`op`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`field`)) {
        sprintf(
        '"field":
          "%s"
                ',
        self$`field`
        )},
        if (!is.null(self$`value`)) {
        sprintf(
        '"value":
        %s
        ',
        jsonlite::toJSON(self$`value`$toJSON(), auto_unbox=TRUE, digits = NA)
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(V1MatrixFilterJson) {
      V1MatrixFilterObject <- jsonlite::fromJSON(V1MatrixFilterJson)
      self$`op` <- V1LogicalFilterOperator$new()$fromJSON(jsonlite::toJSON(V1MatrixFilterObject$op, auto_unbox = TRUE, digits = NA))
      self$`field` <- V1MatrixFilterObject$`field`
      self$`value` <- OneOfv1ComparisonFilterv1LogicalFilterarray$new()$fromJSON(jsonlite::toJSON(V1MatrixFilterObject$value, auto_unbox = TRUE, digits = NA))
      self
    }
  )
)

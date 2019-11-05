# hcamatrixapi::V1MatrixRequest

Request for an expression matrix.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filter** | [**V1MatrixFilter**](v1_MatrixFilter.md) |  | 
**fields** | **array[character]** | Metadata fields to include in output matrix. | [optional] 
**format** | **character** | Format for the output matrix. | [optional] [default to &#39;loom&#39;]
**feature** | **character** | Feature type to include in the output matrix. For example, genes vs. transcripts.  | [optional] [default to &#39;gene&#39;]



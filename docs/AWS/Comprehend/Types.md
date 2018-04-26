## Module AWS.Comprehend.Types

#### `options`

``` purescript
options :: Options
```

#### `AnyLengthString`

``` purescript
newtype AnyLengthString
  = AnyLengthString String
```

##### Instances
``` purescript
Newtype AnyLengthString _
Generic AnyLengthString _
Show AnyLengthString
Decode AnyLengthString
Encode AnyLengthString
```

#### `BatchDetectDominantLanguageItemResult`

``` purescript
newtype BatchDetectDominantLanguageItemResult
  = BatchDetectDominantLanguageItemResult { "Index" :: Maybe (Int), "Languages" :: Maybe (ListOfDominantLanguages) }
```

<p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>

##### Instances
``` purescript
Newtype BatchDetectDominantLanguageItemResult _
Generic BatchDetectDominantLanguageItemResult _
Show BatchDetectDominantLanguageItemResult
Decode BatchDetectDominantLanguageItemResult
Encode BatchDetectDominantLanguageItemResult
```

#### `newBatchDetectDominantLanguageItemResult`

``` purescript
newBatchDetectDominantLanguageItemResult :: BatchDetectDominantLanguageItemResult
```

Constructs BatchDetectDominantLanguageItemResult from required parameters

#### `newBatchDetectDominantLanguageItemResult'`

``` purescript
newBatchDetectDominantLanguageItemResult' :: ({ "Index" :: Maybe (Int), "Languages" :: Maybe (ListOfDominantLanguages) } -> { "Index" :: Maybe (Int), "Languages" :: Maybe (ListOfDominantLanguages) }) -> BatchDetectDominantLanguageItemResult
```

Constructs BatchDetectDominantLanguageItemResult's fields from required parameters

#### `BatchDetectDominantLanguageRequest`

``` purescript
newtype BatchDetectDominantLanguageRequest
  = BatchDetectDominantLanguageRequest { "TextList" :: StringList }
```

##### Instances
``` purescript
Newtype BatchDetectDominantLanguageRequest _
Generic BatchDetectDominantLanguageRequest _
Show BatchDetectDominantLanguageRequest
Decode BatchDetectDominantLanguageRequest
Encode BatchDetectDominantLanguageRequest
```

#### `newBatchDetectDominantLanguageRequest`

``` purescript
newBatchDetectDominantLanguageRequest :: StringList -> BatchDetectDominantLanguageRequest
```

Constructs BatchDetectDominantLanguageRequest from required parameters

#### `newBatchDetectDominantLanguageRequest'`

``` purescript
newBatchDetectDominantLanguageRequest' :: StringList -> ({ "TextList" :: StringList } -> { "TextList" :: StringList }) -> BatchDetectDominantLanguageRequest
```

Constructs BatchDetectDominantLanguageRequest's fields from required parameters

#### `BatchDetectDominantLanguageResponse`

``` purescript
newtype BatchDetectDominantLanguageResponse
  = BatchDetectDominantLanguageResponse { "ResultList" :: ListOfDetectDominantLanguageResult, "ErrorList" :: BatchItemErrorList }
```

##### Instances
``` purescript
Newtype BatchDetectDominantLanguageResponse _
Generic BatchDetectDominantLanguageResponse _
Show BatchDetectDominantLanguageResponse
Decode BatchDetectDominantLanguageResponse
Encode BatchDetectDominantLanguageResponse
```

#### `newBatchDetectDominantLanguageResponse`

``` purescript
newBatchDetectDominantLanguageResponse :: BatchItemErrorList -> ListOfDetectDominantLanguageResult -> BatchDetectDominantLanguageResponse
```

Constructs BatchDetectDominantLanguageResponse from required parameters

#### `newBatchDetectDominantLanguageResponse'`

``` purescript
newBatchDetectDominantLanguageResponse' :: BatchItemErrorList -> ListOfDetectDominantLanguageResult -> ({ "ResultList" :: ListOfDetectDominantLanguageResult, "ErrorList" :: BatchItemErrorList } -> { "ResultList" :: ListOfDetectDominantLanguageResult, "ErrorList" :: BatchItemErrorList }) -> BatchDetectDominantLanguageResponse
```

Constructs BatchDetectDominantLanguageResponse's fields from required parameters

#### `BatchDetectEntitiesItemResult`

``` purescript
newtype BatchDetectEntitiesItemResult
  = BatchDetectEntitiesItemResult { "Index" :: Maybe (Int), "Entities" :: Maybe (ListOfEntities) }
```

<p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>

##### Instances
``` purescript
Newtype BatchDetectEntitiesItemResult _
Generic BatchDetectEntitiesItemResult _
Show BatchDetectEntitiesItemResult
Decode BatchDetectEntitiesItemResult
Encode BatchDetectEntitiesItemResult
```

#### `newBatchDetectEntitiesItemResult`

``` purescript
newBatchDetectEntitiesItemResult :: BatchDetectEntitiesItemResult
```

Constructs BatchDetectEntitiesItemResult from required parameters

#### `newBatchDetectEntitiesItemResult'`

``` purescript
newBatchDetectEntitiesItemResult' :: ({ "Index" :: Maybe (Int), "Entities" :: Maybe (ListOfEntities) } -> { "Index" :: Maybe (Int), "Entities" :: Maybe (ListOfEntities) }) -> BatchDetectEntitiesItemResult
```

Constructs BatchDetectEntitiesItemResult's fields from required parameters

#### `BatchDetectEntitiesRequest`

``` purescript
newtype BatchDetectEntitiesRequest
  = BatchDetectEntitiesRequest { "TextList" :: StringList, "LanguageCode" :: String }
```

##### Instances
``` purescript
Newtype BatchDetectEntitiesRequest _
Generic BatchDetectEntitiesRequest _
Show BatchDetectEntitiesRequest
Decode BatchDetectEntitiesRequest
Encode BatchDetectEntitiesRequest
```

#### `newBatchDetectEntitiesRequest`

``` purescript
newBatchDetectEntitiesRequest :: String -> StringList -> BatchDetectEntitiesRequest
```

Constructs BatchDetectEntitiesRequest from required parameters

#### `newBatchDetectEntitiesRequest'`

``` purescript
newBatchDetectEntitiesRequest' :: String -> StringList -> ({ "TextList" :: StringList, "LanguageCode" :: String } -> { "TextList" :: StringList, "LanguageCode" :: String }) -> BatchDetectEntitiesRequest
```

Constructs BatchDetectEntitiesRequest's fields from required parameters

#### `BatchDetectEntitiesResponse`

``` purescript
newtype BatchDetectEntitiesResponse
  = BatchDetectEntitiesResponse { "ResultList" :: ListOfDetectEntitiesResult, "ErrorList" :: BatchItemErrorList }
```

##### Instances
``` purescript
Newtype BatchDetectEntitiesResponse _
Generic BatchDetectEntitiesResponse _
Show BatchDetectEntitiesResponse
Decode BatchDetectEntitiesResponse
Encode BatchDetectEntitiesResponse
```

#### `newBatchDetectEntitiesResponse`

``` purescript
newBatchDetectEntitiesResponse :: BatchItemErrorList -> ListOfDetectEntitiesResult -> BatchDetectEntitiesResponse
```

Constructs BatchDetectEntitiesResponse from required parameters

#### `newBatchDetectEntitiesResponse'`

``` purescript
newBatchDetectEntitiesResponse' :: BatchItemErrorList -> ListOfDetectEntitiesResult -> ({ "ResultList" :: ListOfDetectEntitiesResult, "ErrorList" :: BatchItemErrorList } -> { "ResultList" :: ListOfDetectEntitiesResult, "ErrorList" :: BatchItemErrorList }) -> BatchDetectEntitiesResponse
```

Constructs BatchDetectEntitiesResponse's fields from required parameters

#### `BatchDetectKeyPhrasesItemResult`

``` purescript
newtype BatchDetectKeyPhrasesItemResult
  = BatchDetectKeyPhrasesItemResult { "Index" :: Maybe (Int), "KeyPhrases" :: Maybe (ListOfKeyPhrases) }
```

<p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>

##### Instances
``` purescript
Newtype BatchDetectKeyPhrasesItemResult _
Generic BatchDetectKeyPhrasesItemResult _
Show BatchDetectKeyPhrasesItemResult
Decode BatchDetectKeyPhrasesItemResult
Encode BatchDetectKeyPhrasesItemResult
```

#### `newBatchDetectKeyPhrasesItemResult`

``` purescript
newBatchDetectKeyPhrasesItemResult :: BatchDetectKeyPhrasesItemResult
```

Constructs BatchDetectKeyPhrasesItemResult from required parameters

#### `newBatchDetectKeyPhrasesItemResult'`

``` purescript
newBatchDetectKeyPhrasesItemResult' :: ({ "Index" :: Maybe (Int), "KeyPhrases" :: Maybe (ListOfKeyPhrases) } -> { "Index" :: Maybe (Int), "KeyPhrases" :: Maybe (ListOfKeyPhrases) }) -> BatchDetectKeyPhrasesItemResult
```

Constructs BatchDetectKeyPhrasesItemResult's fields from required parameters

#### `BatchDetectKeyPhrasesRequest`

``` purescript
newtype BatchDetectKeyPhrasesRequest
  = BatchDetectKeyPhrasesRequest { "TextList" :: StringList, "LanguageCode" :: String }
```

##### Instances
``` purescript
Newtype BatchDetectKeyPhrasesRequest _
Generic BatchDetectKeyPhrasesRequest _
Show BatchDetectKeyPhrasesRequest
Decode BatchDetectKeyPhrasesRequest
Encode BatchDetectKeyPhrasesRequest
```

#### `newBatchDetectKeyPhrasesRequest`

``` purescript
newBatchDetectKeyPhrasesRequest :: String -> StringList -> BatchDetectKeyPhrasesRequest
```

Constructs BatchDetectKeyPhrasesRequest from required parameters

#### `newBatchDetectKeyPhrasesRequest'`

``` purescript
newBatchDetectKeyPhrasesRequest' :: String -> StringList -> ({ "TextList" :: StringList, "LanguageCode" :: String } -> { "TextList" :: StringList, "LanguageCode" :: String }) -> BatchDetectKeyPhrasesRequest
```

Constructs BatchDetectKeyPhrasesRequest's fields from required parameters

#### `BatchDetectKeyPhrasesResponse`

``` purescript
newtype BatchDetectKeyPhrasesResponse
  = BatchDetectKeyPhrasesResponse { "ResultList" :: ListOfDetectKeyPhrasesResult, "ErrorList" :: BatchItemErrorList }
```

##### Instances
``` purescript
Newtype BatchDetectKeyPhrasesResponse _
Generic BatchDetectKeyPhrasesResponse _
Show BatchDetectKeyPhrasesResponse
Decode BatchDetectKeyPhrasesResponse
Encode BatchDetectKeyPhrasesResponse
```

#### `newBatchDetectKeyPhrasesResponse`

``` purescript
newBatchDetectKeyPhrasesResponse :: BatchItemErrorList -> ListOfDetectKeyPhrasesResult -> BatchDetectKeyPhrasesResponse
```

Constructs BatchDetectKeyPhrasesResponse from required parameters

#### `newBatchDetectKeyPhrasesResponse'`

``` purescript
newBatchDetectKeyPhrasesResponse' :: BatchItemErrorList -> ListOfDetectKeyPhrasesResult -> ({ "ResultList" :: ListOfDetectKeyPhrasesResult, "ErrorList" :: BatchItemErrorList } -> { "ResultList" :: ListOfDetectKeyPhrasesResult, "ErrorList" :: BatchItemErrorList }) -> BatchDetectKeyPhrasesResponse
```

Constructs BatchDetectKeyPhrasesResponse's fields from required parameters

#### `BatchDetectSentimentItemResult`

``` purescript
newtype BatchDetectSentimentItemResult
  = BatchDetectSentimentItemResult { "Index" :: Maybe (Int), "Sentiment" :: Maybe (SentimentType), "SentimentScore" :: Maybe (SentimentScore) }
```

<p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>

##### Instances
``` purescript
Newtype BatchDetectSentimentItemResult _
Generic BatchDetectSentimentItemResult _
Show BatchDetectSentimentItemResult
Decode BatchDetectSentimentItemResult
Encode BatchDetectSentimentItemResult
```

#### `newBatchDetectSentimentItemResult`

``` purescript
newBatchDetectSentimentItemResult :: BatchDetectSentimentItemResult
```

Constructs BatchDetectSentimentItemResult from required parameters

#### `newBatchDetectSentimentItemResult'`

``` purescript
newBatchDetectSentimentItemResult' :: ({ "Index" :: Maybe (Int), "Sentiment" :: Maybe (SentimentType), "SentimentScore" :: Maybe (SentimentScore) } -> { "Index" :: Maybe (Int), "Sentiment" :: Maybe (SentimentType), "SentimentScore" :: Maybe (SentimentScore) }) -> BatchDetectSentimentItemResult
```

Constructs BatchDetectSentimentItemResult's fields from required parameters

#### `BatchDetectSentimentRequest`

``` purescript
newtype BatchDetectSentimentRequest
  = BatchDetectSentimentRequest { "TextList" :: StringList, "LanguageCode" :: String }
```

##### Instances
``` purescript
Newtype BatchDetectSentimentRequest _
Generic BatchDetectSentimentRequest _
Show BatchDetectSentimentRequest
Decode BatchDetectSentimentRequest
Encode BatchDetectSentimentRequest
```

#### `newBatchDetectSentimentRequest`

``` purescript
newBatchDetectSentimentRequest :: String -> StringList -> BatchDetectSentimentRequest
```

Constructs BatchDetectSentimentRequest from required parameters

#### `newBatchDetectSentimentRequest'`

``` purescript
newBatchDetectSentimentRequest' :: String -> StringList -> ({ "TextList" :: StringList, "LanguageCode" :: String } -> { "TextList" :: StringList, "LanguageCode" :: String }) -> BatchDetectSentimentRequest
```

Constructs BatchDetectSentimentRequest's fields from required parameters

#### `BatchDetectSentimentResponse`

``` purescript
newtype BatchDetectSentimentResponse
  = BatchDetectSentimentResponse { "ResultList" :: ListOfDetectSentimentResult, "ErrorList" :: BatchItemErrorList }
```

##### Instances
``` purescript
Newtype BatchDetectSentimentResponse _
Generic BatchDetectSentimentResponse _
Show BatchDetectSentimentResponse
Decode BatchDetectSentimentResponse
Encode BatchDetectSentimentResponse
```

#### `newBatchDetectSentimentResponse`

``` purescript
newBatchDetectSentimentResponse :: BatchItemErrorList -> ListOfDetectSentimentResult -> BatchDetectSentimentResponse
```

Constructs BatchDetectSentimentResponse from required parameters

#### `newBatchDetectSentimentResponse'`

``` purescript
newBatchDetectSentimentResponse' :: BatchItemErrorList -> ListOfDetectSentimentResult -> ({ "ResultList" :: ListOfDetectSentimentResult, "ErrorList" :: BatchItemErrorList } -> { "ResultList" :: ListOfDetectSentimentResult, "ErrorList" :: BatchItemErrorList }) -> BatchDetectSentimentResponse
```

Constructs BatchDetectSentimentResponse's fields from required parameters

#### `BatchItemError`

``` purescript
newtype BatchItemError
  = BatchItemError { "Index" :: Maybe (Int), "ErrorCode" :: Maybe (String), "ErrorMessage" :: Maybe (String) }
```

<p>Describes an error that occurred while processing a document in a batch. The operation returns on <code>BatchItemError</code> object for each document that contained an error.</p>

##### Instances
``` purescript
Newtype BatchItemError _
Generic BatchItemError _
Show BatchItemError
Decode BatchItemError
Encode BatchItemError
```

#### `newBatchItemError`

``` purescript
newBatchItemError :: BatchItemError
```

Constructs BatchItemError from required parameters

#### `newBatchItemError'`

``` purescript
newBatchItemError' :: ({ "Index" :: Maybe (Int), "ErrorCode" :: Maybe (String), "ErrorMessage" :: Maybe (String) } -> { "Index" :: Maybe (Int), "ErrorCode" :: Maybe (String), "ErrorMessage" :: Maybe (String) }) -> BatchItemError
```

Constructs BatchItemError's fields from required parameters

#### `BatchItemErrorList`

``` purescript
newtype BatchItemErrorList
  = BatchItemErrorList (Array BatchItemError)
```

##### Instances
``` purescript
Newtype BatchItemErrorList _
Generic BatchItemErrorList _
Show BatchItemErrorList
Decode BatchItemErrorList
Encode BatchItemErrorList
```

#### `BatchSizeLimitExceededException`

``` purescript
newtype BatchSizeLimitExceededException
  = BatchSizeLimitExceededException { "Message" :: Maybe (String) }
```

<p>The number of documents in the request exceeds the limit of 25. Try your request again with fewer documents.</p>

##### Instances
``` purescript
Newtype BatchSizeLimitExceededException _
Generic BatchSizeLimitExceededException _
Show BatchSizeLimitExceededException
Decode BatchSizeLimitExceededException
Encode BatchSizeLimitExceededException
```

#### `newBatchSizeLimitExceededException`

``` purescript
newBatchSizeLimitExceededException :: BatchSizeLimitExceededException
```

Constructs BatchSizeLimitExceededException from required parameters

#### `newBatchSizeLimitExceededException'`

``` purescript
newBatchSizeLimitExceededException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> BatchSizeLimitExceededException
```

Constructs BatchSizeLimitExceededException's fields from required parameters

#### `ClientRequestTokenString`

``` purescript
newtype ClientRequestTokenString
  = ClientRequestTokenString String
```

##### Instances
``` purescript
Newtype ClientRequestTokenString _
Generic ClientRequestTokenString _
Show ClientRequestTokenString
Decode ClientRequestTokenString
Encode ClientRequestTokenString
```

#### `DescribeTopicsDetectionJobRequest`

``` purescript
newtype DescribeTopicsDetectionJobRequest
  = DescribeTopicsDetectionJobRequest { "JobId" :: JobId }
```

##### Instances
``` purescript
Newtype DescribeTopicsDetectionJobRequest _
Generic DescribeTopicsDetectionJobRequest _
Show DescribeTopicsDetectionJobRequest
Decode DescribeTopicsDetectionJobRequest
Encode DescribeTopicsDetectionJobRequest
```

#### `newDescribeTopicsDetectionJobRequest`

``` purescript
newDescribeTopicsDetectionJobRequest :: JobId -> DescribeTopicsDetectionJobRequest
```

Constructs DescribeTopicsDetectionJobRequest from required parameters

#### `newDescribeTopicsDetectionJobRequest'`

``` purescript
newDescribeTopicsDetectionJobRequest' :: JobId -> ({ "JobId" :: JobId } -> { "JobId" :: JobId }) -> DescribeTopicsDetectionJobRequest
```

Constructs DescribeTopicsDetectionJobRequest's fields from required parameters

#### `DescribeTopicsDetectionJobResponse`

``` purescript
newtype DescribeTopicsDetectionJobResponse
  = DescribeTopicsDetectionJobResponse { "TopicsDetectionJobProperties" :: Maybe (TopicsDetectionJobProperties) }
```

##### Instances
``` purescript
Newtype DescribeTopicsDetectionJobResponse _
Generic DescribeTopicsDetectionJobResponse _
Show DescribeTopicsDetectionJobResponse
Decode DescribeTopicsDetectionJobResponse
Encode DescribeTopicsDetectionJobResponse
```

#### `newDescribeTopicsDetectionJobResponse`

``` purescript
newDescribeTopicsDetectionJobResponse :: DescribeTopicsDetectionJobResponse
```

Constructs DescribeTopicsDetectionJobResponse from required parameters

#### `newDescribeTopicsDetectionJobResponse'`

``` purescript
newDescribeTopicsDetectionJobResponse' :: ({ "TopicsDetectionJobProperties" :: Maybe (TopicsDetectionJobProperties) } -> { "TopicsDetectionJobProperties" :: Maybe (TopicsDetectionJobProperties) }) -> DescribeTopicsDetectionJobResponse
```

Constructs DescribeTopicsDetectionJobResponse's fields from required parameters

#### `DetectDominantLanguageRequest`

``` purescript
newtype DetectDominantLanguageRequest
  = DetectDominantLanguageRequest { "Text" :: String }
```

##### Instances
``` purescript
Newtype DetectDominantLanguageRequest _
Generic DetectDominantLanguageRequest _
Show DetectDominantLanguageRequest
Decode DetectDominantLanguageRequest
Encode DetectDominantLanguageRequest
```

#### `newDetectDominantLanguageRequest`

``` purescript
newDetectDominantLanguageRequest :: String -> DetectDominantLanguageRequest
```

Constructs DetectDominantLanguageRequest from required parameters

#### `newDetectDominantLanguageRequest'`

``` purescript
newDetectDominantLanguageRequest' :: String -> ({ "Text" :: String } -> { "Text" :: String }) -> DetectDominantLanguageRequest
```

Constructs DetectDominantLanguageRequest's fields from required parameters

#### `DetectDominantLanguageResponse`

``` purescript
newtype DetectDominantLanguageResponse
  = DetectDominantLanguageResponse { "Languages" :: Maybe (ListOfDominantLanguages) }
```

##### Instances
``` purescript
Newtype DetectDominantLanguageResponse _
Generic DetectDominantLanguageResponse _
Show DetectDominantLanguageResponse
Decode DetectDominantLanguageResponse
Encode DetectDominantLanguageResponse
```

#### `newDetectDominantLanguageResponse`

``` purescript
newDetectDominantLanguageResponse :: DetectDominantLanguageResponse
```

Constructs DetectDominantLanguageResponse from required parameters

#### `newDetectDominantLanguageResponse'`

``` purescript
newDetectDominantLanguageResponse' :: ({ "Languages" :: Maybe (ListOfDominantLanguages) } -> { "Languages" :: Maybe (ListOfDominantLanguages) }) -> DetectDominantLanguageResponse
```

Constructs DetectDominantLanguageResponse's fields from required parameters

#### `DetectEntitiesRequest`

``` purescript
newtype DetectEntitiesRequest
  = DetectEntitiesRequest { "Text" :: String, "LanguageCode" :: LanguageCode }
```

##### Instances
``` purescript
Newtype DetectEntitiesRequest _
Generic DetectEntitiesRequest _
Show DetectEntitiesRequest
Decode DetectEntitiesRequest
Encode DetectEntitiesRequest
```

#### `newDetectEntitiesRequest`

``` purescript
newDetectEntitiesRequest :: LanguageCode -> String -> DetectEntitiesRequest
```

Constructs DetectEntitiesRequest from required parameters

#### `newDetectEntitiesRequest'`

``` purescript
newDetectEntitiesRequest' :: LanguageCode -> String -> ({ "Text" :: String, "LanguageCode" :: LanguageCode } -> { "Text" :: String, "LanguageCode" :: LanguageCode }) -> DetectEntitiesRequest
```

Constructs DetectEntitiesRequest's fields from required parameters

#### `DetectEntitiesResponse`

``` purescript
newtype DetectEntitiesResponse
  = DetectEntitiesResponse { "Entities" :: Maybe (ListOfEntities) }
```

##### Instances
``` purescript
Newtype DetectEntitiesResponse _
Generic DetectEntitiesResponse _
Show DetectEntitiesResponse
Decode DetectEntitiesResponse
Encode DetectEntitiesResponse
```

#### `newDetectEntitiesResponse`

``` purescript
newDetectEntitiesResponse :: DetectEntitiesResponse
```

Constructs DetectEntitiesResponse from required parameters

#### `newDetectEntitiesResponse'`

``` purescript
newDetectEntitiesResponse' :: ({ "Entities" :: Maybe (ListOfEntities) } -> { "Entities" :: Maybe (ListOfEntities) }) -> DetectEntitiesResponse
```

Constructs DetectEntitiesResponse's fields from required parameters

#### `DetectKeyPhrasesRequest`

``` purescript
newtype DetectKeyPhrasesRequest
  = DetectKeyPhrasesRequest { "Text" :: String, "LanguageCode" :: LanguageCode }
```

##### Instances
``` purescript
Newtype DetectKeyPhrasesRequest _
Generic DetectKeyPhrasesRequest _
Show DetectKeyPhrasesRequest
Decode DetectKeyPhrasesRequest
Encode DetectKeyPhrasesRequest
```

#### `newDetectKeyPhrasesRequest`

``` purescript
newDetectKeyPhrasesRequest :: LanguageCode -> String -> DetectKeyPhrasesRequest
```

Constructs DetectKeyPhrasesRequest from required parameters

#### `newDetectKeyPhrasesRequest'`

``` purescript
newDetectKeyPhrasesRequest' :: LanguageCode -> String -> ({ "Text" :: String, "LanguageCode" :: LanguageCode } -> { "Text" :: String, "LanguageCode" :: LanguageCode }) -> DetectKeyPhrasesRequest
```

Constructs DetectKeyPhrasesRequest's fields from required parameters

#### `DetectKeyPhrasesResponse`

``` purescript
newtype DetectKeyPhrasesResponse
  = DetectKeyPhrasesResponse { "KeyPhrases" :: Maybe (ListOfKeyPhrases) }
```

##### Instances
``` purescript
Newtype DetectKeyPhrasesResponse _
Generic DetectKeyPhrasesResponse _
Show DetectKeyPhrasesResponse
Decode DetectKeyPhrasesResponse
Encode DetectKeyPhrasesResponse
```

#### `newDetectKeyPhrasesResponse`

``` purescript
newDetectKeyPhrasesResponse :: DetectKeyPhrasesResponse
```

Constructs DetectKeyPhrasesResponse from required parameters

#### `newDetectKeyPhrasesResponse'`

``` purescript
newDetectKeyPhrasesResponse' :: ({ "KeyPhrases" :: Maybe (ListOfKeyPhrases) } -> { "KeyPhrases" :: Maybe (ListOfKeyPhrases) }) -> DetectKeyPhrasesResponse
```

Constructs DetectKeyPhrasesResponse's fields from required parameters

#### `DetectSentimentRequest`

``` purescript
newtype DetectSentimentRequest
  = DetectSentimentRequest { "Text" :: String, "LanguageCode" :: LanguageCode }
```

##### Instances
``` purescript
Newtype DetectSentimentRequest _
Generic DetectSentimentRequest _
Show DetectSentimentRequest
Decode DetectSentimentRequest
Encode DetectSentimentRequest
```

#### `newDetectSentimentRequest`

``` purescript
newDetectSentimentRequest :: LanguageCode -> String -> DetectSentimentRequest
```

Constructs DetectSentimentRequest from required parameters

#### `newDetectSentimentRequest'`

``` purescript
newDetectSentimentRequest' :: LanguageCode -> String -> ({ "Text" :: String, "LanguageCode" :: LanguageCode } -> { "Text" :: String, "LanguageCode" :: LanguageCode }) -> DetectSentimentRequest
```

Constructs DetectSentimentRequest's fields from required parameters

#### `DetectSentimentResponse`

``` purescript
newtype DetectSentimentResponse
  = DetectSentimentResponse { "Sentiment" :: Maybe (SentimentType), "SentimentScore" :: Maybe (SentimentScore) }
```

##### Instances
``` purescript
Newtype DetectSentimentResponse _
Generic DetectSentimentResponse _
Show DetectSentimentResponse
Decode DetectSentimentResponse
Encode DetectSentimentResponse
```

#### `newDetectSentimentResponse`

``` purescript
newDetectSentimentResponse :: DetectSentimentResponse
```

Constructs DetectSentimentResponse from required parameters

#### `newDetectSentimentResponse'`

``` purescript
newDetectSentimentResponse' :: ({ "Sentiment" :: Maybe (SentimentType), "SentimentScore" :: Maybe (SentimentScore) } -> { "Sentiment" :: Maybe (SentimentType), "SentimentScore" :: Maybe (SentimentScore) }) -> DetectSentimentResponse
```

Constructs DetectSentimentResponse's fields from required parameters

#### `DominantLanguage`

``` purescript
newtype DominantLanguage
  = DominantLanguage { "LanguageCode" :: Maybe (String), "Score" :: Maybe (Number) }
```

<p>Returns the code for the dominant language in the input text and the level of confidence that Amazon Comprehend has in the accuracy of the detection.</p>

##### Instances
``` purescript
Newtype DominantLanguage _
Generic DominantLanguage _
Show DominantLanguage
Decode DominantLanguage
Encode DominantLanguage
```

#### `newDominantLanguage`

``` purescript
newDominantLanguage :: DominantLanguage
```

Constructs DominantLanguage from required parameters

#### `newDominantLanguage'`

``` purescript
newDominantLanguage' :: ({ "LanguageCode" :: Maybe (String), "Score" :: Maybe (Number) } -> { "LanguageCode" :: Maybe (String), "Score" :: Maybe (Number) }) -> DominantLanguage
```

Constructs DominantLanguage's fields from required parameters

#### `Entity`

``` purescript
newtype Entity
  = Entity { "Score" :: Maybe (Number), "Type" :: Maybe (EntityType), "Text" :: Maybe (String), "BeginOffset" :: Maybe (Int), "EndOffset" :: Maybe (Int) }
```

<p>Provides information about an entity. </p> <p> </p>

##### Instances
``` purescript
Newtype Entity _
Generic Entity _
Show Entity
Decode Entity
Encode Entity
```

#### `newEntity`

``` purescript
newEntity :: Entity
```

Constructs Entity from required parameters

#### `newEntity'`

``` purescript
newEntity' :: ({ "Score" :: Maybe (Number), "Type" :: Maybe (EntityType), "Text" :: Maybe (String), "BeginOffset" :: Maybe (Int), "EndOffset" :: Maybe (Int) } -> { "Score" :: Maybe (Number), "Type" :: Maybe (EntityType), "Text" :: Maybe (String), "BeginOffset" :: Maybe (Int), "EndOffset" :: Maybe (Int) }) -> Entity
```

Constructs Entity's fields from required parameters

#### `EntityType`

``` purescript
newtype EntityType
  = EntityType String
```

##### Instances
``` purescript
Newtype EntityType _
Generic EntityType _
Show EntityType
Decode EntityType
Encode EntityType
```

#### `IamRoleArn`

``` purescript
newtype IamRoleArn
  = IamRoleArn String
```

##### Instances
``` purescript
Newtype IamRoleArn _
Generic IamRoleArn _
Show IamRoleArn
Decode IamRoleArn
Encode IamRoleArn
```

#### `InputDataConfig`

``` purescript
newtype InputDataConfig
  = InputDataConfig { "S3Uri" :: S3Uri, "InputFormat" :: Maybe (InputFormat) }
```

<p>The input properties for a topic detection job.</p>

##### Instances
``` purescript
Newtype InputDataConfig _
Generic InputDataConfig _
Show InputDataConfig
Decode InputDataConfig
Encode InputDataConfig
```

#### `newInputDataConfig`

``` purescript
newInputDataConfig :: S3Uri -> InputDataConfig
```

Constructs InputDataConfig from required parameters

#### `newInputDataConfig'`

``` purescript
newInputDataConfig' :: S3Uri -> ({ "S3Uri" :: S3Uri, "InputFormat" :: Maybe (InputFormat) } -> { "S3Uri" :: S3Uri, "InputFormat" :: Maybe (InputFormat) }) -> InputDataConfig
```

Constructs InputDataConfig's fields from required parameters

#### `InputFormat`

``` purescript
newtype InputFormat
  = InputFormat String
```

##### Instances
``` purescript
Newtype InputFormat _
Generic InputFormat _
Show InputFormat
Decode InputFormat
Encode InputFormat
```

#### `InternalServerException`

``` purescript
newtype InternalServerException
  = InternalServerException { "Message" :: Maybe (String) }
```

<p>An internal server error occurred. Retry your request.</p>

##### Instances
``` purescript
Newtype InternalServerException _
Generic InternalServerException _
Show InternalServerException
Decode InternalServerException
Encode InternalServerException
```

#### `newInternalServerException`

``` purescript
newInternalServerException :: InternalServerException
```

Constructs InternalServerException from required parameters

#### `newInternalServerException'`

``` purescript
newInternalServerException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> InternalServerException
```

Constructs InternalServerException's fields from required parameters

#### `InvalidFilterException`

``` purescript
newtype InvalidFilterException
  = InvalidFilterException { "Message" :: Maybe (String) }
```

<p>The filter specified for the <code>ListTopicDetectionJobs</code> operation is invalid. Specify a different filter.</p>

##### Instances
``` purescript
Newtype InvalidFilterException _
Generic InvalidFilterException _
Show InvalidFilterException
Decode InvalidFilterException
Encode InvalidFilterException
```

#### `newInvalidFilterException`

``` purescript
newInvalidFilterException :: InvalidFilterException
```

Constructs InvalidFilterException from required parameters

#### `newInvalidFilterException'`

``` purescript
newInvalidFilterException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> InvalidFilterException
```

Constructs InvalidFilterException's fields from required parameters

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException { "Message" :: Maybe (String) }
```

<p>The request is invalid.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `newInvalidRequestException`

``` purescript
newInvalidRequestException :: InvalidRequestException
```

Constructs InvalidRequestException from required parameters

#### `newInvalidRequestException'`

``` purescript
newInvalidRequestException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> InvalidRequestException
```

Constructs InvalidRequestException's fields from required parameters

#### `JobId`

``` purescript
newtype JobId
  = JobId String
```

##### Instances
``` purescript
Newtype JobId _
Generic JobId _
Show JobId
Decode JobId
Encode JobId
```

#### `JobName`

``` purescript
newtype JobName
  = JobName String
```

##### Instances
``` purescript
Newtype JobName _
Generic JobName _
Show JobName
Decode JobName
Encode JobName
```

#### `JobNotFoundException`

``` purescript
newtype JobNotFoundException
  = JobNotFoundException { "Message" :: Maybe (String) }
```

<p>The specified job was not found. Check the job ID and try again.</p>

##### Instances
``` purescript
Newtype JobNotFoundException _
Generic JobNotFoundException _
Show JobNotFoundException
Decode JobNotFoundException
Encode JobNotFoundException
```

#### `newJobNotFoundException`

``` purescript
newJobNotFoundException :: JobNotFoundException
```

Constructs JobNotFoundException from required parameters

#### `newJobNotFoundException'`

``` purescript
newJobNotFoundException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> JobNotFoundException
```

Constructs JobNotFoundException's fields from required parameters

#### `JobStatus`

``` purescript
newtype JobStatus
  = JobStatus String
```

##### Instances
``` purescript
Newtype JobStatus _
Generic JobStatus _
Show JobStatus
Decode JobStatus
Encode JobStatus
```

#### `KeyPhrase`

``` purescript
newtype KeyPhrase
  = KeyPhrase { "Score" :: Maybe (Number), "Text" :: Maybe (String), "BeginOffset" :: Maybe (Int), "EndOffset" :: Maybe (Int) }
```

<p>Describes a key noun phrase.</p>

##### Instances
``` purescript
Newtype KeyPhrase _
Generic KeyPhrase _
Show KeyPhrase
Decode KeyPhrase
Encode KeyPhrase
```

#### `newKeyPhrase`

``` purescript
newKeyPhrase :: KeyPhrase
```

Constructs KeyPhrase from required parameters

#### `newKeyPhrase'`

``` purescript
newKeyPhrase' :: ({ "Score" :: Maybe (Number), "Text" :: Maybe (String), "BeginOffset" :: Maybe (Int), "EndOffset" :: Maybe (Int) } -> { "Score" :: Maybe (Number), "Text" :: Maybe (String), "BeginOffset" :: Maybe (Int), "EndOffset" :: Maybe (Int) }) -> KeyPhrase
```

Constructs KeyPhrase's fields from required parameters

#### `LanguageCode`

``` purescript
newtype LanguageCode
  = LanguageCode String
```

##### Instances
``` purescript
Newtype LanguageCode _
Generic LanguageCode _
Show LanguageCode
Decode LanguageCode
Encode LanguageCode
```

#### `ListOfDetectDominantLanguageResult`

``` purescript
newtype ListOfDetectDominantLanguageResult
  = ListOfDetectDominantLanguageResult (Array BatchDetectDominantLanguageItemResult)
```

##### Instances
``` purescript
Newtype ListOfDetectDominantLanguageResult _
Generic ListOfDetectDominantLanguageResult _
Show ListOfDetectDominantLanguageResult
Decode ListOfDetectDominantLanguageResult
Encode ListOfDetectDominantLanguageResult
```

#### `ListOfDetectEntitiesResult`

``` purescript
newtype ListOfDetectEntitiesResult
  = ListOfDetectEntitiesResult (Array BatchDetectEntitiesItemResult)
```

##### Instances
``` purescript
Newtype ListOfDetectEntitiesResult _
Generic ListOfDetectEntitiesResult _
Show ListOfDetectEntitiesResult
Decode ListOfDetectEntitiesResult
Encode ListOfDetectEntitiesResult
```

#### `ListOfDetectKeyPhrasesResult`

``` purescript
newtype ListOfDetectKeyPhrasesResult
  = ListOfDetectKeyPhrasesResult (Array BatchDetectKeyPhrasesItemResult)
```

##### Instances
``` purescript
Newtype ListOfDetectKeyPhrasesResult _
Generic ListOfDetectKeyPhrasesResult _
Show ListOfDetectKeyPhrasesResult
Decode ListOfDetectKeyPhrasesResult
Encode ListOfDetectKeyPhrasesResult
```

#### `ListOfDetectSentimentResult`

``` purescript
newtype ListOfDetectSentimentResult
  = ListOfDetectSentimentResult (Array BatchDetectSentimentItemResult)
```

##### Instances
``` purescript
Newtype ListOfDetectSentimentResult _
Generic ListOfDetectSentimentResult _
Show ListOfDetectSentimentResult
Decode ListOfDetectSentimentResult
Encode ListOfDetectSentimentResult
```

#### `ListOfDominantLanguages`

``` purescript
newtype ListOfDominantLanguages
  = ListOfDominantLanguages (Array DominantLanguage)
```

##### Instances
``` purescript
Newtype ListOfDominantLanguages _
Generic ListOfDominantLanguages _
Show ListOfDominantLanguages
Decode ListOfDominantLanguages
Encode ListOfDominantLanguages
```

#### `ListOfEntities`

``` purescript
newtype ListOfEntities
  = ListOfEntities (Array Entity)
```

##### Instances
``` purescript
Newtype ListOfEntities _
Generic ListOfEntities _
Show ListOfEntities
Decode ListOfEntities
Encode ListOfEntities
```

#### `ListOfKeyPhrases`

``` purescript
newtype ListOfKeyPhrases
  = ListOfKeyPhrases (Array KeyPhrase)
```

##### Instances
``` purescript
Newtype ListOfKeyPhrases _
Generic ListOfKeyPhrases _
Show ListOfKeyPhrases
Decode ListOfKeyPhrases
Encode ListOfKeyPhrases
```

#### `ListTopicsDetectionJobsRequest`

``` purescript
newtype ListTopicsDetectionJobsRequest
  = ListTopicsDetectionJobsRequest { "Filter" :: Maybe (TopicsDetectionJobFilter), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (MaxResultsInteger) }
```

##### Instances
``` purescript
Newtype ListTopicsDetectionJobsRequest _
Generic ListTopicsDetectionJobsRequest _
Show ListTopicsDetectionJobsRequest
Decode ListTopicsDetectionJobsRequest
Encode ListTopicsDetectionJobsRequest
```

#### `newListTopicsDetectionJobsRequest`

``` purescript
newListTopicsDetectionJobsRequest :: ListTopicsDetectionJobsRequest
```

Constructs ListTopicsDetectionJobsRequest from required parameters

#### `newListTopicsDetectionJobsRequest'`

``` purescript
newListTopicsDetectionJobsRequest' :: ({ "Filter" :: Maybe (TopicsDetectionJobFilter), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (MaxResultsInteger) } -> { "Filter" :: Maybe (TopicsDetectionJobFilter), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (MaxResultsInteger) }) -> ListTopicsDetectionJobsRequest
```

Constructs ListTopicsDetectionJobsRequest's fields from required parameters

#### `ListTopicsDetectionJobsResponse`

``` purescript
newtype ListTopicsDetectionJobsResponse
  = ListTopicsDetectionJobsResponse { "TopicsDetectionJobPropertiesList" :: Maybe (TopicsDetectionJobPropertiesList), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListTopicsDetectionJobsResponse _
Generic ListTopicsDetectionJobsResponse _
Show ListTopicsDetectionJobsResponse
Decode ListTopicsDetectionJobsResponse
Encode ListTopicsDetectionJobsResponse
```

#### `newListTopicsDetectionJobsResponse`

``` purescript
newListTopicsDetectionJobsResponse :: ListTopicsDetectionJobsResponse
```

Constructs ListTopicsDetectionJobsResponse from required parameters

#### `newListTopicsDetectionJobsResponse'`

``` purescript
newListTopicsDetectionJobsResponse' :: ({ "TopicsDetectionJobPropertiesList" :: Maybe (TopicsDetectionJobPropertiesList), "NextToken" :: Maybe (String) } -> { "TopicsDetectionJobPropertiesList" :: Maybe (TopicsDetectionJobPropertiesList), "NextToken" :: Maybe (String) }) -> ListTopicsDetectionJobsResponse
```

Constructs ListTopicsDetectionJobsResponse's fields from required parameters

#### `MaxResultsInteger`

``` purescript
newtype MaxResultsInteger
  = MaxResultsInteger Int
```

##### Instances
``` purescript
Newtype MaxResultsInteger _
Generic MaxResultsInteger _
Show MaxResultsInteger
Decode MaxResultsInteger
Encode MaxResultsInteger
```

#### `NumberOfTopicsInteger`

``` purescript
newtype NumberOfTopicsInteger
  = NumberOfTopicsInteger Int
```

##### Instances
``` purescript
Newtype NumberOfTopicsInteger _
Generic NumberOfTopicsInteger _
Show NumberOfTopicsInteger
Decode NumberOfTopicsInteger
Encode NumberOfTopicsInteger
```

#### `OutputDataConfig`

``` purescript
newtype OutputDataConfig
  = OutputDataConfig { "S3Uri" :: S3Uri }
```

<p>Provides configuration parameters for the output of topic detection jobs.</p> <p/>

##### Instances
``` purescript
Newtype OutputDataConfig _
Generic OutputDataConfig _
Show OutputDataConfig
Decode OutputDataConfig
Encode OutputDataConfig
```

#### `newOutputDataConfig`

``` purescript
newOutputDataConfig :: S3Uri -> OutputDataConfig
```

Constructs OutputDataConfig from required parameters

#### `newOutputDataConfig'`

``` purescript
newOutputDataConfig' :: S3Uri -> ({ "S3Uri" :: S3Uri } -> { "S3Uri" :: S3Uri }) -> OutputDataConfig
```

Constructs OutputDataConfig's fields from required parameters

#### `S3Uri`

``` purescript
newtype S3Uri
  = S3Uri String
```

##### Instances
``` purescript
Newtype S3Uri _
Generic S3Uri _
Show S3Uri
Decode S3Uri
Encode S3Uri
```

#### `SentimentScore`

``` purescript
newtype SentimentScore
  = SentimentScore { "Positive" :: Maybe (Number), "Negative" :: Maybe (Number), "Neutral" :: Maybe (Number), "Mixed" :: Maybe (Number) }
```

<p>Describes the level of confidence that Amazon Comprehend has in the accuracy of its detection of sentiments.</p>

##### Instances
``` purescript
Newtype SentimentScore _
Generic SentimentScore _
Show SentimentScore
Decode SentimentScore
Encode SentimentScore
```

#### `newSentimentScore`

``` purescript
newSentimentScore :: SentimentScore
```

Constructs SentimentScore from required parameters

#### `newSentimentScore'`

``` purescript
newSentimentScore' :: ({ "Positive" :: Maybe (Number), "Negative" :: Maybe (Number), "Neutral" :: Maybe (Number), "Mixed" :: Maybe (Number) } -> { "Positive" :: Maybe (Number), "Negative" :: Maybe (Number), "Neutral" :: Maybe (Number), "Mixed" :: Maybe (Number) }) -> SentimentScore
```

Constructs SentimentScore's fields from required parameters

#### `SentimentType`

``` purescript
newtype SentimentType
  = SentimentType String
```

##### Instances
``` purescript
Newtype SentimentType _
Generic SentimentType _
Show SentimentType
Decode SentimentType
Encode SentimentType
```

#### `StartTopicsDetectionJobRequest`

``` purescript
newtype StartTopicsDetectionJobRequest
  = StartTopicsDetectionJobRequest { "InputDataConfig" :: InputDataConfig, "OutputDataConfig" :: OutputDataConfig, "DataAccessRoleArn" :: IamRoleArn, "JobName" :: Maybe (JobName), "NumberOfTopics" :: Maybe (NumberOfTopicsInteger), "ClientRequestToken" :: Maybe (ClientRequestTokenString) }
```

##### Instances
``` purescript
Newtype StartTopicsDetectionJobRequest _
Generic StartTopicsDetectionJobRequest _
Show StartTopicsDetectionJobRequest
Decode StartTopicsDetectionJobRequest
Encode StartTopicsDetectionJobRequest
```

#### `newStartTopicsDetectionJobRequest`

``` purescript
newStartTopicsDetectionJobRequest :: IamRoleArn -> InputDataConfig -> OutputDataConfig -> StartTopicsDetectionJobRequest
```

Constructs StartTopicsDetectionJobRequest from required parameters

#### `newStartTopicsDetectionJobRequest'`

``` purescript
newStartTopicsDetectionJobRequest' :: IamRoleArn -> InputDataConfig -> OutputDataConfig -> ({ "InputDataConfig" :: InputDataConfig, "OutputDataConfig" :: OutputDataConfig, "DataAccessRoleArn" :: IamRoleArn, "JobName" :: Maybe (JobName), "NumberOfTopics" :: Maybe (NumberOfTopicsInteger), "ClientRequestToken" :: Maybe (ClientRequestTokenString) } -> { "InputDataConfig" :: InputDataConfig, "OutputDataConfig" :: OutputDataConfig, "DataAccessRoleArn" :: IamRoleArn, "JobName" :: Maybe (JobName), "NumberOfTopics" :: Maybe (NumberOfTopicsInteger), "ClientRequestToken" :: Maybe (ClientRequestTokenString) }) -> StartTopicsDetectionJobRequest
```

Constructs StartTopicsDetectionJobRequest's fields from required parameters

#### `StartTopicsDetectionJobResponse`

``` purescript
newtype StartTopicsDetectionJobResponse
  = StartTopicsDetectionJobResponse { "JobId" :: Maybe (JobId), "JobStatus" :: Maybe (JobStatus) }
```

##### Instances
``` purescript
Newtype StartTopicsDetectionJobResponse _
Generic StartTopicsDetectionJobResponse _
Show StartTopicsDetectionJobResponse
Decode StartTopicsDetectionJobResponse
Encode StartTopicsDetectionJobResponse
```

#### `newStartTopicsDetectionJobResponse`

``` purescript
newStartTopicsDetectionJobResponse :: StartTopicsDetectionJobResponse
```

Constructs StartTopicsDetectionJobResponse from required parameters

#### `newStartTopicsDetectionJobResponse'`

``` purescript
newStartTopicsDetectionJobResponse' :: ({ "JobId" :: Maybe (JobId), "JobStatus" :: Maybe (JobStatus) } -> { "JobId" :: Maybe (JobId), "JobStatus" :: Maybe (JobStatus) }) -> StartTopicsDetectionJobResponse
```

Constructs StartTopicsDetectionJobResponse's fields from required parameters

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array String)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `TextSizeLimitExceededException`

``` purescript
newtype TextSizeLimitExceededException
  = TextSizeLimitExceededException { "Message" :: Maybe (String) }
```

<p>The size of the input text exceeds the limit. Use a smaller document.</p>

##### Instances
``` purescript
Newtype TextSizeLimitExceededException _
Generic TextSizeLimitExceededException _
Show TextSizeLimitExceededException
Decode TextSizeLimitExceededException
Encode TextSizeLimitExceededException
```

#### `newTextSizeLimitExceededException`

``` purescript
newTextSizeLimitExceededException :: TextSizeLimitExceededException
```

Constructs TextSizeLimitExceededException from required parameters

#### `newTextSizeLimitExceededException'`

``` purescript
newTextSizeLimitExceededException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> TextSizeLimitExceededException
```

Constructs TextSizeLimitExceededException's fields from required parameters

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { "Message" :: Maybe (String) }
```

<p>The number of requests exceeds the limit. Resubmit your request later.</p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `TopicsDetectionJobFilter`

``` purescript
newtype TopicsDetectionJobFilter
  = TopicsDetectionJobFilter { "JobName" :: Maybe (JobName), "JobStatus" :: Maybe (JobStatus), "SubmitTimeBefore" :: Maybe (Timestamp), "SubmitTimeAfter" :: Maybe (Timestamp) }
```

<p>Provides information for filtering topic detection jobs. For more information, see .</p>

##### Instances
``` purescript
Newtype TopicsDetectionJobFilter _
Generic TopicsDetectionJobFilter _
Show TopicsDetectionJobFilter
Decode TopicsDetectionJobFilter
Encode TopicsDetectionJobFilter
```

#### `newTopicsDetectionJobFilter`

``` purescript
newTopicsDetectionJobFilter :: TopicsDetectionJobFilter
```

Constructs TopicsDetectionJobFilter from required parameters

#### `newTopicsDetectionJobFilter'`

``` purescript
newTopicsDetectionJobFilter' :: ({ "JobName" :: Maybe (JobName), "JobStatus" :: Maybe (JobStatus), "SubmitTimeBefore" :: Maybe (Timestamp), "SubmitTimeAfter" :: Maybe (Timestamp) } -> { "JobName" :: Maybe (JobName), "JobStatus" :: Maybe (JobStatus), "SubmitTimeBefore" :: Maybe (Timestamp), "SubmitTimeAfter" :: Maybe (Timestamp) }) -> TopicsDetectionJobFilter
```

Constructs TopicsDetectionJobFilter's fields from required parameters

#### `TopicsDetectionJobProperties`

``` purescript
newtype TopicsDetectionJobProperties
  = TopicsDetectionJobProperties { "JobId" :: Maybe (JobId), "JobName" :: Maybe (JobName), "JobStatus" :: Maybe (JobStatus), "Message" :: Maybe (AnyLengthString), "SubmitTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "InputDataConfig" :: Maybe (InputDataConfig), "OutputDataConfig" :: Maybe (OutputDataConfig), "NumberOfTopics" :: Maybe (Int) }
```

<p>Provides information about a topic detection job.</p>

##### Instances
``` purescript
Newtype TopicsDetectionJobProperties _
Generic TopicsDetectionJobProperties _
Show TopicsDetectionJobProperties
Decode TopicsDetectionJobProperties
Encode TopicsDetectionJobProperties
```

#### `newTopicsDetectionJobProperties`

``` purescript
newTopicsDetectionJobProperties :: TopicsDetectionJobProperties
```

Constructs TopicsDetectionJobProperties from required parameters

#### `newTopicsDetectionJobProperties'`

``` purescript
newTopicsDetectionJobProperties' :: ({ "JobId" :: Maybe (JobId), "JobName" :: Maybe (JobName), "JobStatus" :: Maybe (JobStatus), "Message" :: Maybe (AnyLengthString), "SubmitTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "InputDataConfig" :: Maybe (InputDataConfig), "OutputDataConfig" :: Maybe (OutputDataConfig), "NumberOfTopics" :: Maybe (Int) } -> { "JobId" :: Maybe (JobId), "JobName" :: Maybe (JobName), "JobStatus" :: Maybe (JobStatus), "Message" :: Maybe (AnyLengthString), "SubmitTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "InputDataConfig" :: Maybe (InputDataConfig), "OutputDataConfig" :: Maybe (OutputDataConfig), "NumberOfTopics" :: Maybe (Int) }) -> TopicsDetectionJobProperties
```

Constructs TopicsDetectionJobProperties's fields from required parameters

#### `TopicsDetectionJobPropertiesList`

``` purescript
newtype TopicsDetectionJobPropertiesList
  = TopicsDetectionJobPropertiesList (Array TopicsDetectionJobProperties)
```

##### Instances
``` purescript
Newtype TopicsDetectionJobPropertiesList _
Generic TopicsDetectionJobPropertiesList _
Show TopicsDetectionJobPropertiesList
Decode TopicsDetectionJobPropertiesList
Encode TopicsDetectionJobPropertiesList
```

#### `UnsupportedLanguageException`

``` purescript
newtype UnsupportedLanguageException
  = UnsupportedLanguageException { "Message" :: Maybe (String) }
```

<p>Amazon Comprehend can't process the language of the input text. For all APIs except <code>DetectDominantLanguage</code>, Amazon Comprehend accepts only English or Spanish text. For the <code>DetectDominantLanguage</code> API, Amazon Comprehend detects 100 languages. For a list of languages, see <a>how-languages</a> </p>

##### Instances
``` purescript
Newtype UnsupportedLanguageException _
Generic UnsupportedLanguageException _
Show UnsupportedLanguageException
Decode UnsupportedLanguageException
Encode UnsupportedLanguageException
```

#### `newUnsupportedLanguageException`

``` purescript
newUnsupportedLanguageException :: UnsupportedLanguageException
```

Constructs UnsupportedLanguageException from required parameters

#### `newUnsupportedLanguageException'`

``` purescript
newUnsupportedLanguageException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> UnsupportedLanguageException
```

Constructs UnsupportedLanguageException's fields from required parameters



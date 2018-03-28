
module AWS.Comprehend.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AnyLengthString = AnyLengthString String
derive instance newtypeAnyLengthString :: Newtype AnyLengthString _
derive instance repGenericAnyLengthString :: Generic AnyLengthString _
instance showAnyLengthString :: Show AnyLengthString where show = genericShow
instance decodeAnyLengthString :: Decode AnyLengthString where decode = genericDecode options
instance encodeAnyLengthString :: Encode AnyLengthString where encode = genericEncode options



-- | <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
newtype BatchDetectDominantLanguageItemResult = BatchDetectDominantLanguageItemResult 
  { "Index" :: NullOrUndefined (Int)
  , "Languages" :: NullOrUndefined (ListOfDominantLanguages)
  }
derive instance newtypeBatchDetectDominantLanguageItemResult :: Newtype BatchDetectDominantLanguageItemResult _
derive instance repGenericBatchDetectDominantLanguageItemResult :: Generic BatchDetectDominantLanguageItemResult _
instance showBatchDetectDominantLanguageItemResult :: Show BatchDetectDominantLanguageItemResult where show = genericShow
instance decodeBatchDetectDominantLanguageItemResult :: Decode BatchDetectDominantLanguageItemResult where decode = genericDecode options
instance encodeBatchDetectDominantLanguageItemResult :: Encode BatchDetectDominantLanguageItemResult where encode = genericEncode options

-- | Constructs BatchDetectDominantLanguageItemResult from required parameters
newBatchDetectDominantLanguageItemResult :: BatchDetectDominantLanguageItemResult
newBatchDetectDominantLanguageItemResult  = BatchDetectDominantLanguageItemResult { "Index": (NullOrUndefined Nothing), "Languages": (NullOrUndefined Nothing) }

-- | Constructs BatchDetectDominantLanguageItemResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectDominantLanguageItemResult' :: ( { "Index" :: NullOrUndefined (Int) , "Languages" :: NullOrUndefined (ListOfDominantLanguages) } -> {"Index" :: NullOrUndefined (Int) , "Languages" :: NullOrUndefined (ListOfDominantLanguages) } ) -> BatchDetectDominantLanguageItemResult
newBatchDetectDominantLanguageItemResult'  customize = (BatchDetectDominantLanguageItemResult <<< customize) { "Index": (NullOrUndefined Nothing), "Languages": (NullOrUndefined Nothing) }



newtype BatchDetectDominantLanguageRequest = BatchDetectDominantLanguageRequest 
  { "TextList" :: (StringList)
  }
derive instance newtypeBatchDetectDominantLanguageRequest :: Newtype BatchDetectDominantLanguageRequest _
derive instance repGenericBatchDetectDominantLanguageRequest :: Generic BatchDetectDominantLanguageRequest _
instance showBatchDetectDominantLanguageRequest :: Show BatchDetectDominantLanguageRequest where show = genericShow
instance decodeBatchDetectDominantLanguageRequest :: Decode BatchDetectDominantLanguageRequest where decode = genericDecode options
instance encodeBatchDetectDominantLanguageRequest :: Encode BatchDetectDominantLanguageRequest where encode = genericEncode options

-- | Constructs BatchDetectDominantLanguageRequest from required parameters
newBatchDetectDominantLanguageRequest :: StringList -> BatchDetectDominantLanguageRequest
newBatchDetectDominantLanguageRequest _TextList = BatchDetectDominantLanguageRequest { "TextList": _TextList }

-- | Constructs BatchDetectDominantLanguageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectDominantLanguageRequest' :: StringList -> ( { "TextList" :: (StringList) } -> {"TextList" :: (StringList) } ) -> BatchDetectDominantLanguageRequest
newBatchDetectDominantLanguageRequest' _TextList customize = (BatchDetectDominantLanguageRequest <<< customize) { "TextList": _TextList }



newtype BatchDetectDominantLanguageResponse = BatchDetectDominantLanguageResponse 
  { "ResultList" :: (ListOfDetectDominantLanguageResult)
  , "ErrorList" :: (BatchItemErrorList)
  }
derive instance newtypeBatchDetectDominantLanguageResponse :: Newtype BatchDetectDominantLanguageResponse _
derive instance repGenericBatchDetectDominantLanguageResponse :: Generic BatchDetectDominantLanguageResponse _
instance showBatchDetectDominantLanguageResponse :: Show BatchDetectDominantLanguageResponse where show = genericShow
instance decodeBatchDetectDominantLanguageResponse :: Decode BatchDetectDominantLanguageResponse where decode = genericDecode options
instance encodeBatchDetectDominantLanguageResponse :: Encode BatchDetectDominantLanguageResponse where encode = genericEncode options

-- | Constructs BatchDetectDominantLanguageResponse from required parameters
newBatchDetectDominantLanguageResponse :: BatchItemErrorList -> ListOfDetectDominantLanguageResult -> BatchDetectDominantLanguageResponse
newBatchDetectDominantLanguageResponse _ErrorList _ResultList = BatchDetectDominantLanguageResponse { "ErrorList": _ErrorList, "ResultList": _ResultList }

-- | Constructs BatchDetectDominantLanguageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectDominantLanguageResponse' :: BatchItemErrorList -> ListOfDetectDominantLanguageResult -> ( { "ResultList" :: (ListOfDetectDominantLanguageResult) , "ErrorList" :: (BatchItemErrorList) } -> {"ResultList" :: (ListOfDetectDominantLanguageResult) , "ErrorList" :: (BatchItemErrorList) } ) -> BatchDetectDominantLanguageResponse
newBatchDetectDominantLanguageResponse' _ErrorList _ResultList customize = (BatchDetectDominantLanguageResponse <<< customize) { "ErrorList": _ErrorList, "ResultList": _ResultList }



-- | <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
newtype BatchDetectEntitiesItemResult = BatchDetectEntitiesItemResult 
  { "Index" :: NullOrUndefined (Int)
  , "Entities" :: NullOrUndefined (ListOfEntities)
  }
derive instance newtypeBatchDetectEntitiesItemResult :: Newtype BatchDetectEntitiesItemResult _
derive instance repGenericBatchDetectEntitiesItemResult :: Generic BatchDetectEntitiesItemResult _
instance showBatchDetectEntitiesItemResult :: Show BatchDetectEntitiesItemResult where show = genericShow
instance decodeBatchDetectEntitiesItemResult :: Decode BatchDetectEntitiesItemResult where decode = genericDecode options
instance encodeBatchDetectEntitiesItemResult :: Encode BatchDetectEntitiesItemResult where encode = genericEncode options

-- | Constructs BatchDetectEntitiesItemResult from required parameters
newBatchDetectEntitiesItemResult :: BatchDetectEntitiesItemResult
newBatchDetectEntitiesItemResult  = BatchDetectEntitiesItemResult { "Entities": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }

-- | Constructs BatchDetectEntitiesItemResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectEntitiesItemResult' :: ( { "Index" :: NullOrUndefined (Int) , "Entities" :: NullOrUndefined (ListOfEntities) } -> {"Index" :: NullOrUndefined (Int) , "Entities" :: NullOrUndefined (ListOfEntities) } ) -> BatchDetectEntitiesItemResult
newBatchDetectEntitiesItemResult'  customize = (BatchDetectEntitiesItemResult <<< customize) { "Entities": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }



newtype BatchDetectEntitiesRequest = BatchDetectEntitiesRequest 
  { "TextList" :: (StringList)
  , "LanguageCode" :: (String)
  }
derive instance newtypeBatchDetectEntitiesRequest :: Newtype BatchDetectEntitiesRequest _
derive instance repGenericBatchDetectEntitiesRequest :: Generic BatchDetectEntitiesRequest _
instance showBatchDetectEntitiesRequest :: Show BatchDetectEntitiesRequest where show = genericShow
instance decodeBatchDetectEntitiesRequest :: Decode BatchDetectEntitiesRequest where decode = genericDecode options
instance encodeBatchDetectEntitiesRequest :: Encode BatchDetectEntitiesRequest where encode = genericEncode options

-- | Constructs BatchDetectEntitiesRequest from required parameters
newBatchDetectEntitiesRequest :: String -> StringList -> BatchDetectEntitiesRequest
newBatchDetectEntitiesRequest _LanguageCode _TextList = BatchDetectEntitiesRequest { "LanguageCode": _LanguageCode, "TextList": _TextList }

-- | Constructs BatchDetectEntitiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectEntitiesRequest' :: String -> StringList -> ( { "TextList" :: (StringList) , "LanguageCode" :: (String) } -> {"TextList" :: (StringList) , "LanguageCode" :: (String) } ) -> BatchDetectEntitiesRequest
newBatchDetectEntitiesRequest' _LanguageCode _TextList customize = (BatchDetectEntitiesRequest <<< customize) { "LanguageCode": _LanguageCode, "TextList": _TextList }



newtype BatchDetectEntitiesResponse = BatchDetectEntitiesResponse 
  { "ResultList" :: (ListOfDetectEntitiesResult)
  , "ErrorList" :: (BatchItemErrorList)
  }
derive instance newtypeBatchDetectEntitiesResponse :: Newtype BatchDetectEntitiesResponse _
derive instance repGenericBatchDetectEntitiesResponse :: Generic BatchDetectEntitiesResponse _
instance showBatchDetectEntitiesResponse :: Show BatchDetectEntitiesResponse where show = genericShow
instance decodeBatchDetectEntitiesResponse :: Decode BatchDetectEntitiesResponse where decode = genericDecode options
instance encodeBatchDetectEntitiesResponse :: Encode BatchDetectEntitiesResponse where encode = genericEncode options

-- | Constructs BatchDetectEntitiesResponse from required parameters
newBatchDetectEntitiesResponse :: BatchItemErrorList -> ListOfDetectEntitiesResult -> BatchDetectEntitiesResponse
newBatchDetectEntitiesResponse _ErrorList _ResultList = BatchDetectEntitiesResponse { "ErrorList": _ErrorList, "ResultList": _ResultList }

-- | Constructs BatchDetectEntitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectEntitiesResponse' :: BatchItemErrorList -> ListOfDetectEntitiesResult -> ( { "ResultList" :: (ListOfDetectEntitiesResult) , "ErrorList" :: (BatchItemErrorList) } -> {"ResultList" :: (ListOfDetectEntitiesResult) , "ErrorList" :: (BatchItemErrorList) } ) -> BatchDetectEntitiesResponse
newBatchDetectEntitiesResponse' _ErrorList _ResultList customize = (BatchDetectEntitiesResponse <<< customize) { "ErrorList": _ErrorList, "ResultList": _ResultList }



-- | <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
newtype BatchDetectKeyPhrasesItemResult = BatchDetectKeyPhrasesItemResult 
  { "Index" :: NullOrUndefined (Int)
  , "KeyPhrases" :: NullOrUndefined (ListOfKeyPhrases)
  }
derive instance newtypeBatchDetectKeyPhrasesItemResult :: Newtype BatchDetectKeyPhrasesItemResult _
derive instance repGenericBatchDetectKeyPhrasesItemResult :: Generic BatchDetectKeyPhrasesItemResult _
instance showBatchDetectKeyPhrasesItemResult :: Show BatchDetectKeyPhrasesItemResult where show = genericShow
instance decodeBatchDetectKeyPhrasesItemResult :: Decode BatchDetectKeyPhrasesItemResult where decode = genericDecode options
instance encodeBatchDetectKeyPhrasesItemResult :: Encode BatchDetectKeyPhrasesItemResult where encode = genericEncode options

-- | Constructs BatchDetectKeyPhrasesItemResult from required parameters
newBatchDetectKeyPhrasesItemResult :: BatchDetectKeyPhrasesItemResult
newBatchDetectKeyPhrasesItemResult  = BatchDetectKeyPhrasesItemResult { "Index": (NullOrUndefined Nothing), "KeyPhrases": (NullOrUndefined Nothing) }

-- | Constructs BatchDetectKeyPhrasesItemResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectKeyPhrasesItemResult' :: ( { "Index" :: NullOrUndefined (Int) , "KeyPhrases" :: NullOrUndefined (ListOfKeyPhrases) } -> {"Index" :: NullOrUndefined (Int) , "KeyPhrases" :: NullOrUndefined (ListOfKeyPhrases) } ) -> BatchDetectKeyPhrasesItemResult
newBatchDetectKeyPhrasesItemResult'  customize = (BatchDetectKeyPhrasesItemResult <<< customize) { "Index": (NullOrUndefined Nothing), "KeyPhrases": (NullOrUndefined Nothing) }



newtype BatchDetectKeyPhrasesRequest = BatchDetectKeyPhrasesRequest 
  { "TextList" :: (StringList)
  , "LanguageCode" :: (String)
  }
derive instance newtypeBatchDetectKeyPhrasesRequest :: Newtype BatchDetectKeyPhrasesRequest _
derive instance repGenericBatchDetectKeyPhrasesRequest :: Generic BatchDetectKeyPhrasesRequest _
instance showBatchDetectKeyPhrasesRequest :: Show BatchDetectKeyPhrasesRequest where show = genericShow
instance decodeBatchDetectKeyPhrasesRequest :: Decode BatchDetectKeyPhrasesRequest where decode = genericDecode options
instance encodeBatchDetectKeyPhrasesRequest :: Encode BatchDetectKeyPhrasesRequest where encode = genericEncode options

-- | Constructs BatchDetectKeyPhrasesRequest from required parameters
newBatchDetectKeyPhrasesRequest :: String -> StringList -> BatchDetectKeyPhrasesRequest
newBatchDetectKeyPhrasesRequest _LanguageCode _TextList = BatchDetectKeyPhrasesRequest { "LanguageCode": _LanguageCode, "TextList": _TextList }

-- | Constructs BatchDetectKeyPhrasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectKeyPhrasesRequest' :: String -> StringList -> ( { "TextList" :: (StringList) , "LanguageCode" :: (String) } -> {"TextList" :: (StringList) , "LanguageCode" :: (String) } ) -> BatchDetectKeyPhrasesRequest
newBatchDetectKeyPhrasesRequest' _LanguageCode _TextList customize = (BatchDetectKeyPhrasesRequest <<< customize) { "LanguageCode": _LanguageCode, "TextList": _TextList }



newtype BatchDetectKeyPhrasesResponse = BatchDetectKeyPhrasesResponse 
  { "ResultList" :: (ListOfDetectKeyPhrasesResult)
  , "ErrorList" :: (BatchItemErrorList)
  }
derive instance newtypeBatchDetectKeyPhrasesResponse :: Newtype BatchDetectKeyPhrasesResponse _
derive instance repGenericBatchDetectKeyPhrasesResponse :: Generic BatchDetectKeyPhrasesResponse _
instance showBatchDetectKeyPhrasesResponse :: Show BatchDetectKeyPhrasesResponse where show = genericShow
instance decodeBatchDetectKeyPhrasesResponse :: Decode BatchDetectKeyPhrasesResponse where decode = genericDecode options
instance encodeBatchDetectKeyPhrasesResponse :: Encode BatchDetectKeyPhrasesResponse where encode = genericEncode options

-- | Constructs BatchDetectKeyPhrasesResponse from required parameters
newBatchDetectKeyPhrasesResponse :: BatchItemErrorList -> ListOfDetectKeyPhrasesResult -> BatchDetectKeyPhrasesResponse
newBatchDetectKeyPhrasesResponse _ErrorList _ResultList = BatchDetectKeyPhrasesResponse { "ErrorList": _ErrorList, "ResultList": _ResultList }

-- | Constructs BatchDetectKeyPhrasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectKeyPhrasesResponse' :: BatchItemErrorList -> ListOfDetectKeyPhrasesResult -> ( { "ResultList" :: (ListOfDetectKeyPhrasesResult) , "ErrorList" :: (BatchItemErrorList) } -> {"ResultList" :: (ListOfDetectKeyPhrasesResult) , "ErrorList" :: (BatchItemErrorList) } ) -> BatchDetectKeyPhrasesResponse
newBatchDetectKeyPhrasesResponse' _ErrorList _ResultList customize = (BatchDetectKeyPhrasesResponse <<< customize) { "ErrorList": _ErrorList, "ResultList": _ResultList }



-- | <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
newtype BatchDetectSentimentItemResult = BatchDetectSentimentItemResult 
  { "Index" :: NullOrUndefined (Int)
  , "Sentiment" :: NullOrUndefined (SentimentType)
  , "SentimentScore" :: NullOrUndefined (SentimentScore)
  }
derive instance newtypeBatchDetectSentimentItemResult :: Newtype BatchDetectSentimentItemResult _
derive instance repGenericBatchDetectSentimentItemResult :: Generic BatchDetectSentimentItemResult _
instance showBatchDetectSentimentItemResult :: Show BatchDetectSentimentItemResult where show = genericShow
instance decodeBatchDetectSentimentItemResult :: Decode BatchDetectSentimentItemResult where decode = genericDecode options
instance encodeBatchDetectSentimentItemResult :: Encode BatchDetectSentimentItemResult where encode = genericEncode options

-- | Constructs BatchDetectSentimentItemResult from required parameters
newBatchDetectSentimentItemResult :: BatchDetectSentimentItemResult
newBatchDetectSentimentItemResult  = BatchDetectSentimentItemResult { "Index": (NullOrUndefined Nothing), "Sentiment": (NullOrUndefined Nothing), "SentimentScore": (NullOrUndefined Nothing) }

-- | Constructs BatchDetectSentimentItemResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectSentimentItemResult' :: ( { "Index" :: NullOrUndefined (Int) , "Sentiment" :: NullOrUndefined (SentimentType) , "SentimentScore" :: NullOrUndefined (SentimentScore) } -> {"Index" :: NullOrUndefined (Int) , "Sentiment" :: NullOrUndefined (SentimentType) , "SentimentScore" :: NullOrUndefined (SentimentScore) } ) -> BatchDetectSentimentItemResult
newBatchDetectSentimentItemResult'  customize = (BatchDetectSentimentItemResult <<< customize) { "Index": (NullOrUndefined Nothing), "Sentiment": (NullOrUndefined Nothing), "SentimentScore": (NullOrUndefined Nothing) }



newtype BatchDetectSentimentRequest = BatchDetectSentimentRequest 
  { "TextList" :: (StringList)
  , "LanguageCode" :: (String)
  }
derive instance newtypeBatchDetectSentimentRequest :: Newtype BatchDetectSentimentRequest _
derive instance repGenericBatchDetectSentimentRequest :: Generic BatchDetectSentimentRequest _
instance showBatchDetectSentimentRequest :: Show BatchDetectSentimentRequest where show = genericShow
instance decodeBatchDetectSentimentRequest :: Decode BatchDetectSentimentRequest where decode = genericDecode options
instance encodeBatchDetectSentimentRequest :: Encode BatchDetectSentimentRequest where encode = genericEncode options

-- | Constructs BatchDetectSentimentRequest from required parameters
newBatchDetectSentimentRequest :: String -> StringList -> BatchDetectSentimentRequest
newBatchDetectSentimentRequest _LanguageCode _TextList = BatchDetectSentimentRequest { "LanguageCode": _LanguageCode, "TextList": _TextList }

-- | Constructs BatchDetectSentimentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectSentimentRequest' :: String -> StringList -> ( { "TextList" :: (StringList) , "LanguageCode" :: (String) } -> {"TextList" :: (StringList) , "LanguageCode" :: (String) } ) -> BatchDetectSentimentRequest
newBatchDetectSentimentRequest' _LanguageCode _TextList customize = (BatchDetectSentimentRequest <<< customize) { "LanguageCode": _LanguageCode, "TextList": _TextList }



newtype BatchDetectSentimentResponse = BatchDetectSentimentResponse 
  { "ResultList" :: (ListOfDetectSentimentResult)
  , "ErrorList" :: (BatchItemErrorList)
  }
derive instance newtypeBatchDetectSentimentResponse :: Newtype BatchDetectSentimentResponse _
derive instance repGenericBatchDetectSentimentResponse :: Generic BatchDetectSentimentResponse _
instance showBatchDetectSentimentResponse :: Show BatchDetectSentimentResponse where show = genericShow
instance decodeBatchDetectSentimentResponse :: Decode BatchDetectSentimentResponse where decode = genericDecode options
instance encodeBatchDetectSentimentResponse :: Encode BatchDetectSentimentResponse where encode = genericEncode options

-- | Constructs BatchDetectSentimentResponse from required parameters
newBatchDetectSentimentResponse :: BatchItemErrorList -> ListOfDetectSentimentResult -> BatchDetectSentimentResponse
newBatchDetectSentimentResponse _ErrorList _ResultList = BatchDetectSentimentResponse { "ErrorList": _ErrorList, "ResultList": _ResultList }

-- | Constructs BatchDetectSentimentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectSentimentResponse' :: BatchItemErrorList -> ListOfDetectSentimentResult -> ( { "ResultList" :: (ListOfDetectSentimentResult) , "ErrorList" :: (BatchItemErrorList) } -> {"ResultList" :: (ListOfDetectSentimentResult) , "ErrorList" :: (BatchItemErrorList) } ) -> BatchDetectSentimentResponse
newBatchDetectSentimentResponse' _ErrorList _ResultList customize = (BatchDetectSentimentResponse <<< customize) { "ErrorList": _ErrorList, "ResultList": _ResultList }



-- | <p>Describes an error that occurred while processing a document in a batch. The operation returns on <code>BatchItemError</code> object for each document that contained an error.</p>
newtype BatchItemError = BatchItemError 
  { "Index" :: NullOrUndefined (Int)
  , "ErrorCode" :: NullOrUndefined (String)
  , "ErrorMessage" :: NullOrUndefined (String)
  }
derive instance newtypeBatchItemError :: Newtype BatchItemError _
derive instance repGenericBatchItemError :: Generic BatchItemError _
instance showBatchItemError :: Show BatchItemError where show = genericShow
instance decodeBatchItemError :: Decode BatchItemError where decode = genericDecode options
instance encodeBatchItemError :: Encode BatchItemError where encode = genericEncode options

-- | Constructs BatchItemError from required parameters
newBatchItemError :: BatchItemError
newBatchItemError  = BatchItemError { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }

-- | Constructs BatchItemError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchItemError' :: ( { "Index" :: NullOrUndefined (Int) , "ErrorCode" :: NullOrUndefined (String) , "ErrorMessage" :: NullOrUndefined (String) } -> {"Index" :: NullOrUndefined (Int) , "ErrorCode" :: NullOrUndefined (String) , "ErrorMessage" :: NullOrUndefined (String) } ) -> BatchItemError
newBatchItemError'  customize = (BatchItemError <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }



newtype BatchItemErrorList = BatchItemErrorList (Array BatchItemError)
derive instance newtypeBatchItemErrorList :: Newtype BatchItemErrorList _
derive instance repGenericBatchItemErrorList :: Generic BatchItemErrorList _
instance showBatchItemErrorList :: Show BatchItemErrorList where show = genericShow
instance decodeBatchItemErrorList :: Decode BatchItemErrorList where decode = genericDecode options
instance encodeBatchItemErrorList :: Encode BatchItemErrorList where encode = genericEncode options



-- | <p>The number of documents in the request exceeds the limit of 25. Try your request again with fewer documents.</p>
newtype BatchSizeLimitExceededException = BatchSizeLimitExceededException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeBatchSizeLimitExceededException :: Newtype BatchSizeLimitExceededException _
derive instance repGenericBatchSizeLimitExceededException :: Generic BatchSizeLimitExceededException _
instance showBatchSizeLimitExceededException :: Show BatchSizeLimitExceededException where show = genericShow
instance decodeBatchSizeLimitExceededException :: Decode BatchSizeLimitExceededException where decode = genericDecode options
instance encodeBatchSizeLimitExceededException :: Encode BatchSizeLimitExceededException where encode = genericEncode options

-- | Constructs BatchSizeLimitExceededException from required parameters
newBatchSizeLimitExceededException :: BatchSizeLimitExceededException
newBatchSizeLimitExceededException  = BatchSizeLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs BatchSizeLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchSizeLimitExceededException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> BatchSizeLimitExceededException
newBatchSizeLimitExceededException'  customize = (BatchSizeLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ClientRequestTokenString = ClientRequestTokenString String
derive instance newtypeClientRequestTokenString :: Newtype ClientRequestTokenString _
derive instance repGenericClientRequestTokenString :: Generic ClientRequestTokenString _
instance showClientRequestTokenString :: Show ClientRequestTokenString where show = genericShow
instance decodeClientRequestTokenString :: Decode ClientRequestTokenString where decode = genericDecode options
instance encodeClientRequestTokenString :: Encode ClientRequestTokenString where encode = genericEncode options



newtype DescribeTopicsDetectionJobRequest = DescribeTopicsDetectionJobRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeDescribeTopicsDetectionJobRequest :: Newtype DescribeTopicsDetectionJobRequest _
derive instance repGenericDescribeTopicsDetectionJobRequest :: Generic DescribeTopicsDetectionJobRequest _
instance showDescribeTopicsDetectionJobRequest :: Show DescribeTopicsDetectionJobRequest where show = genericShow
instance decodeDescribeTopicsDetectionJobRequest :: Decode DescribeTopicsDetectionJobRequest where decode = genericDecode options
instance encodeDescribeTopicsDetectionJobRequest :: Encode DescribeTopicsDetectionJobRequest where encode = genericEncode options

-- | Constructs DescribeTopicsDetectionJobRequest from required parameters
newDescribeTopicsDetectionJobRequest :: JobId -> DescribeTopicsDetectionJobRequest
newDescribeTopicsDetectionJobRequest _JobId = DescribeTopicsDetectionJobRequest { "JobId": _JobId }

-- | Constructs DescribeTopicsDetectionJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTopicsDetectionJobRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> DescribeTopicsDetectionJobRequest
newDescribeTopicsDetectionJobRequest' _JobId customize = (DescribeTopicsDetectionJobRequest <<< customize) { "JobId": _JobId }



newtype DescribeTopicsDetectionJobResponse = DescribeTopicsDetectionJobResponse 
  { "TopicsDetectionJobProperties" :: NullOrUndefined (TopicsDetectionJobProperties)
  }
derive instance newtypeDescribeTopicsDetectionJobResponse :: Newtype DescribeTopicsDetectionJobResponse _
derive instance repGenericDescribeTopicsDetectionJobResponse :: Generic DescribeTopicsDetectionJobResponse _
instance showDescribeTopicsDetectionJobResponse :: Show DescribeTopicsDetectionJobResponse where show = genericShow
instance decodeDescribeTopicsDetectionJobResponse :: Decode DescribeTopicsDetectionJobResponse where decode = genericDecode options
instance encodeDescribeTopicsDetectionJobResponse :: Encode DescribeTopicsDetectionJobResponse where encode = genericEncode options

-- | Constructs DescribeTopicsDetectionJobResponse from required parameters
newDescribeTopicsDetectionJobResponse :: DescribeTopicsDetectionJobResponse
newDescribeTopicsDetectionJobResponse  = DescribeTopicsDetectionJobResponse { "TopicsDetectionJobProperties": (NullOrUndefined Nothing) }

-- | Constructs DescribeTopicsDetectionJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTopicsDetectionJobResponse' :: ( { "TopicsDetectionJobProperties" :: NullOrUndefined (TopicsDetectionJobProperties) } -> {"TopicsDetectionJobProperties" :: NullOrUndefined (TopicsDetectionJobProperties) } ) -> DescribeTopicsDetectionJobResponse
newDescribeTopicsDetectionJobResponse'  customize = (DescribeTopicsDetectionJobResponse <<< customize) { "TopicsDetectionJobProperties": (NullOrUndefined Nothing) }



newtype DetectDominantLanguageRequest = DetectDominantLanguageRequest 
  { "Text" :: (String)
  }
derive instance newtypeDetectDominantLanguageRequest :: Newtype DetectDominantLanguageRequest _
derive instance repGenericDetectDominantLanguageRequest :: Generic DetectDominantLanguageRequest _
instance showDetectDominantLanguageRequest :: Show DetectDominantLanguageRequest where show = genericShow
instance decodeDetectDominantLanguageRequest :: Decode DetectDominantLanguageRequest where decode = genericDecode options
instance encodeDetectDominantLanguageRequest :: Encode DetectDominantLanguageRequest where encode = genericEncode options

-- | Constructs DetectDominantLanguageRequest from required parameters
newDetectDominantLanguageRequest :: String -> DetectDominantLanguageRequest
newDetectDominantLanguageRequest _Text = DetectDominantLanguageRequest { "Text": _Text }

-- | Constructs DetectDominantLanguageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectDominantLanguageRequest' :: String -> ( { "Text" :: (String) } -> {"Text" :: (String) } ) -> DetectDominantLanguageRequest
newDetectDominantLanguageRequest' _Text customize = (DetectDominantLanguageRequest <<< customize) { "Text": _Text }



newtype DetectDominantLanguageResponse = DetectDominantLanguageResponse 
  { "Languages" :: NullOrUndefined (ListOfDominantLanguages)
  }
derive instance newtypeDetectDominantLanguageResponse :: Newtype DetectDominantLanguageResponse _
derive instance repGenericDetectDominantLanguageResponse :: Generic DetectDominantLanguageResponse _
instance showDetectDominantLanguageResponse :: Show DetectDominantLanguageResponse where show = genericShow
instance decodeDetectDominantLanguageResponse :: Decode DetectDominantLanguageResponse where decode = genericDecode options
instance encodeDetectDominantLanguageResponse :: Encode DetectDominantLanguageResponse where encode = genericEncode options

-- | Constructs DetectDominantLanguageResponse from required parameters
newDetectDominantLanguageResponse :: DetectDominantLanguageResponse
newDetectDominantLanguageResponse  = DetectDominantLanguageResponse { "Languages": (NullOrUndefined Nothing) }

-- | Constructs DetectDominantLanguageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectDominantLanguageResponse' :: ( { "Languages" :: NullOrUndefined (ListOfDominantLanguages) } -> {"Languages" :: NullOrUndefined (ListOfDominantLanguages) } ) -> DetectDominantLanguageResponse
newDetectDominantLanguageResponse'  customize = (DetectDominantLanguageResponse <<< customize) { "Languages": (NullOrUndefined Nothing) }



newtype DetectEntitiesRequest = DetectEntitiesRequest 
  { "Text" :: (String)
  , "LanguageCode" :: (LanguageCode)
  }
derive instance newtypeDetectEntitiesRequest :: Newtype DetectEntitiesRequest _
derive instance repGenericDetectEntitiesRequest :: Generic DetectEntitiesRequest _
instance showDetectEntitiesRequest :: Show DetectEntitiesRequest where show = genericShow
instance decodeDetectEntitiesRequest :: Decode DetectEntitiesRequest where decode = genericDecode options
instance encodeDetectEntitiesRequest :: Encode DetectEntitiesRequest where encode = genericEncode options

-- | Constructs DetectEntitiesRequest from required parameters
newDetectEntitiesRequest :: LanguageCode -> String -> DetectEntitiesRequest
newDetectEntitiesRequest _LanguageCode _Text = DetectEntitiesRequest { "LanguageCode": _LanguageCode, "Text": _Text }

-- | Constructs DetectEntitiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectEntitiesRequest' :: LanguageCode -> String -> ( { "Text" :: (String) , "LanguageCode" :: (LanguageCode) } -> {"Text" :: (String) , "LanguageCode" :: (LanguageCode) } ) -> DetectEntitiesRequest
newDetectEntitiesRequest' _LanguageCode _Text customize = (DetectEntitiesRequest <<< customize) { "LanguageCode": _LanguageCode, "Text": _Text }



newtype DetectEntitiesResponse = DetectEntitiesResponse 
  { "Entities" :: NullOrUndefined (ListOfEntities)
  }
derive instance newtypeDetectEntitiesResponse :: Newtype DetectEntitiesResponse _
derive instance repGenericDetectEntitiesResponse :: Generic DetectEntitiesResponse _
instance showDetectEntitiesResponse :: Show DetectEntitiesResponse where show = genericShow
instance decodeDetectEntitiesResponse :: Decode DetectEntitiesResponse where decode = genericDecode options
instance encodeDetectEntitiesResponse :: Encode DetectEntitiesResponse where encode = genericEncode options

-- | Constructs DetectEntitiesResponse from required parameters
newDetectEntitiesResponse :: DetectEntitiesResponse
newDetectEntitiesResponse  = DetectEntitiesResponse { "Entities": (NullOrUndefined Nothing) }

-- | Constructs DetectEntitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectEntitiesResponse' :: ( { "Entities" :: NullOrUndefined (ListOfEntities) } -> {"Entities" :: NullOrUndefined (ListOfEntities) } ) -> DetectEntitiesResponse
newDetectEntitiesResponse'  customize = (DetectEntitiesResponse <<< customize) { "Entities": (NullOrUndefined Nothing) }



newtype DetectKeyPhrasesRequest = DetectKeyPhrasesRequest 
  { "Text" :: (String)
  , "LanguageCode" :: (LanguageCode)
  }
derive instance newtypeDetectKeyPhrasesRequest :: Newtype DetectKeyPhrasesRequest _
derive instance repGenericDetectKeyPhrasesRequest :: Generic DetectKeyPhrasesRequest _
instance showDetectKeyPhrasesRequest :: Show DetectKeyPhrasesRequest where show = genericShow
instance decodeDetectKeyPhrasesRequest :: Decode DetectKeyPhrasesRequest where decode = genericDecode options
instance encodeDetectKeyPhrasesRequest :: Encode DetectKeyPhrasesRequest where encode = genericEncode options

-- | Constructs DetectKeyPhrasesRequest from required parameters
newDetectKeyPhrasesRequest :: LanguageCode -> String -> DetectKeyPhrasesRequest
newDetectKeyPhrasesRequest _LanguageCode _Text = DetectKeyPhrasesRequest { "LanguageCode": _LanguageCode, "Text": _Text }

-- | Constructs DetectKeyPhrasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectKeyPhrasesRequest' :: LanguageCode -> String -> ( { "Text" :: (String) , "LanguageCode" :: (LanguageCode) } -> {"Text" :: (String) , "LanguageCode" :: (LanguageCode) } ) -> DetectKeyPhrasesRequest
newDetectKeyPhrasesRequest' _LanguageCode _Text customize = (DetectKeyPhrasesRequest <<< customize) { "LanguageCode": _LanguageCode, "Text": _Text }



newtype DetectKeyPhrasesResponse = DetectKeyPhrasesResponse 
  { "KeyPhrases" :: NullOrUndefined (ListOfKeyPhrases)
  }
derive instance newtypeDetectKeyPhrasesResponse :: Newtype DetectKeyPhrasesResponse _
derive instance repGenericDetectKeyPhrasesResponse :: Generic DetectKeyPhrasesResponse _
instance showDetectKeyPhrasesResponse :: Show DetectKeyPhrasesResponse where show = genericShow
instance decodeDetectKeyPhrasesResponse :: Decode DetectKeyPhrasesResponse where decode = genericDecode options
instance encodeDetectKeyPhrasesResponse :: Encode DetectKeyPhrasesResponse where encode = genericEncode options

-- | Constructs DetectKeyPhrasesResponse from required parameters
newDetectKeyPhrasesResponse :: DetectKeyPhrasesResponse
newDetectKeyPhrasesResponse  = DetectKeyPhrasesResponse { "KeyPhrases": (NullOrUndefined Nothing) }

-- | Constructs DetectKeyPhrasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectKeyPhrasesResponse' :: ( { "KeyPhrases" :: NullOrUndefined (ListOfKeyPhrases) } -> {"KeyPhrases" :: NullOrUndefined (ListOfKeyPhrases) } ) -> DetectKeyPhrasesResponse
newDetectKeyPhrasesResponse'  customize = (DetectKeyPhrasesResponse <<< customize) { "KeyPhrases": (NullOrUndefined Nothing) }



newtype DetectSentimentRequest = DetectSentimentRequest 
  { "Text" :: (String)
  , "LanguageCode" :: (LanguageCode)
  }
derive instance newtypeDetectSentimentRequest :: Newtype DetectSentimentRequest _
derive instance repGenericDetectSentimentRequest :: Generic DetectSentimentRequest _
instance showDetectSentimentRequest :: Show DetectSentimentRequest where show = genericShow
instance decodeDetectSentimentRequest :: Decode DetectSentimentRequest where decode = genericDecode options
instance encodeDetectSentimentRequest :: Encode DetectSentimentRequest where encode = genericEncode options

-- | Constructs DetectSentimentRequest from required parameters
newDetectSentimentRequest :: LanguageCode -> String -> DetectSentimentRequest
newDetectSentimentRequest _LanguageCode _Text = DetectSentimentRequest { "LanguageCode": _LanguageCode, "Text": _Text }

-- | Constructs DetectSentimentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectSentimentRequest' :: LanguageCode -> String -> ( { "Text" :: (String) , "LanguageCode" :: (LanguageCode) } -> {"Text" :: (String) , "LanguageCode" :: (LanguageCode) } ) -> DetectSentimentRequest
newDetectSentimentRequest' _LanguageCode _Text customize = (DetectSentimentRequest <<< customize) { "LanguageCode": _LanguageCode, "Text": _Text }



newtype DetectSentimentResponse = DetectSentimentResponse 
  { "Sentiment" :: NullOrUndefined (SentimentType)
  , "SentimentScore" :: NullOrUndefined (SentimentScore)
  }
derive instance newtypeDetectSentimentResponse :: Newtype DetectSentimentResponse _
derive instance repGenericDetectSentimentResponse :: Generic DetectSentimentResponse _
instance showDetectSentimentResponse :: Show DetectSentimentResponse where show = genericShow
instance decodeDetectSentimentResponse :: Decode DetectSentimentResponse where decode = genericDecode options
instance encodeDetectSentimentResponse :: Encode DetectSentimentResponse where encode = genericEncode options

-- | Constructs DetectSentimentResponse from required parameters
newDetectSentimentResponse :: DetectSentimentResponse
newDetectSentimentResponse  = DetectSentimentResponse { "Sentiment": (NullOrUndefined Nothing), "SentimentScore": (NullOrUndefined Nothing) }

-- | Constructs DetectSentimentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectSentimentResponse' :: ( { "Sentiment" :: NullOrUndefined (SentimentType) , "SentimentScore" :: NullOrUndefined (SentimentScore) } -> {"Sentiment" :: NullOrUndefined (SentimentType) , "SentimentScore" :: NullOrUndefined (SentimentScore) } ) -> DetectSentimentResponse
newDetectSentimentResponse'  customize = (DetectSentimentResponse <<< customize) { "Sentiment": (NullOrUndefined Nothing), "SentimentScore": (NullOrUndefined Nothing) }



-- | <p>Returns the code for the dominant language in the input text and the level of confidence that Amazon Comprehend has in the accuracy of the detection.</p>
newtype DominantLanguage = DominantLanguage 
  { "LanguageCode" :: NullOrUndefined (String)
  , "Score" :: NullOrUndefined (Number)
  }
derive instance newtypeDominantLanguage :: Newtype DominantLanguage _
derive instance repGenericDominantLanguage :: Generic DominantLanguage _
instance showDominantLanguage :: Show DominantLanguage where show = genericShow
instance decodeDominantLanguage :: Decode DominantLanguage where decode = genericDecode options
instance encodeDominantLanguage :: Encode DominantLanguage where encode = genericEncode options

-- | Constructs DominantLanguage from required parameters
newDominantLanguage :: DominantLanguage
newDominantLanguage  = DominantLanguage { "LanguageCode": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing) }

-- | Constructs DominantLanguage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDominantLanguage' :: ( { "LanguageCode" :: NullOrUndefined (String) , "Score" :: NullOrUndefined (Number) } -> {"LanguageCode" :: NullOrUndefined (String) , "Score" :: NullOrUndefined (Number) } ) -> DominantLanguage
newDominantLanguage'  customize = (DominantLanguage <<< customize) { "LanguageCode": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing) }



-- | <p>Provides information about an entity. </p> <p> </p>
newtype Entity = Entity 
  { "Score" :: NullOrUndefined (Number)
  , "Type" :: NullOrUndefined (EntityType)
  , "Text" :: NullOrUndefined (String)
  , "BeginOffset" :: NullOrUndefined (Int)
  , "EndOffset" :: NullOrUndefined (Int)
  }
derive instance newtypeEntity :: Newtype Entity _
derive instance repGenericEntity :: Generic Entity _
instance showEntity :: Show Entity where show = genericShow
instance decodeEntity :: Decode Entity where decode = genericDecode options
instance encodeEntity :: Encode Entity where encode = genericEncode options

-- | Constructs Entity from required parameters
newEntity :: Entity
newEntity  = Entity { "BeginOffset": (NullOrUndefined Nothing), "EndOffset": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing), "Text": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Entity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntity' :: ( { "Score" :: NullOrUndefined (Number) , "Type" :: NullOrUndefined (EntityType) , "Text" :: NullOrUndefined (String) , "BeginOffset" :: NullOrUndefined (Int) , "EndOffset" :: NullOrUndefined (Int) } -> {"Score" :: NullOrUndefined (Number) , "Type" :: NullOrUndefined (EntityType) , "Text" :: NullOrUndefined (String) , "BeginOffset" :: NullOrUndefined (Int) , "EndOffset" :: NullOrUndefined (Int) } ) -> Entity
newEntity'  customize = (Entity <<< customize) { "BeginOffset": (NullOrUndefined Nothing), "EndOffset": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing), "Text": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype EntityType = EntityType String
derive instance newtypeEntityType :: Newtype EntityType _
derive instance repGenericEntityType :: Generic EntityType _
instance showEntityType :: Show EntityType where show = genericShow
instance decodeEntityType :: Decode EntityType where decode = genericDecode options
instance encodeEntityType :: Encode EntityType where encode = genericEncode options



newtype IamRoleArn = IamRoleArn String
derive instance newtypeIamRoleArn :: Newtype IamRoleArn _
derive instance repGenericIamRoleArn :: Generic IamRoleArn _
instance showIamRoleArn :: Show IamRoleArn where show = genericShow
instance decodeIamRoleArn :: Decode IamRoleArn where decode = genericDecode options
instance encodeIamRoleArn :: Encode IamRoleArn where encode = genericEncode options



-- | <p>The input properties for a topic detection job.</p>
newtype InputDataConfig = InputDataConfig 
  { "S3Uri" :: (S3Uri)
  , "InputFormat" :: NullOrUndefined (InputFormat)
  }
derive instance newtypeInputDataConfig :: Newtype InputDataConfig _
derive instance repGenericInputDataConfig :: Generic InputDataConfig _
instance showInputDataConfig :: Show InputDataConfig where show = genericShow
instance decodeInputDataConfig :: Decode InputDataConfig where decode = genericDecode options
instance encodeInputDataConfig :: Encode InputDataConfig where encode = genericEncode options

-- | Constructs InputDataConfig from required parameters
newInputDataConfig :: S3Uri -> InputDataConfig
newInputDataConfig _S3Uri = InputDataConfig { "S3Uri": _S3Uri, "InputFormat": (NullOrUndefined Nothing) }

-- | Constructs InputDataConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInputDataConfig' :: S3Uri -> ( { "S3Uri" :: (S3Uri) , "InputFormat" :: NullOrUndefined (InputFormat) } -> {"S3Uri" :: (S3Uri) , "InputFormat" :: NullOrUndefined (InputFormat) } ) -> InputDataConfig
newInputDataConfig' _S3Uri customize = (InputDataConfig <<< customize) { "S3Uri": _S3Uri, "InputFormat": (NullOrUndefined Nothing) }



newtype InputFormat = InputFormat String
derive instance newtypeInputFormat :: Newtype InputFormat _
derive instance repGenericInputFormat :: Generic InputFormat _
instance showInputFormat :: Show InputFormat where show = genericShow
instance decodeInputFormat :: Decode InputFormat where decode = genericDecode options
instance encodeInputFormat :: Encode InputFormat where encode = genericEncode options



-- | <p>An internal server error occurred. Retry your request.</p>
newtype InternalServerException = InternalServerException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInternalServerException :: Newtype InternalServerException _
derive instance repGenericInternalServerException :: Generic InternalServerException _
instance showInternalServerException :: Show InternalServerException where show = genericShow
instance decodeInternalServerException :: Decode InternalServerException where decode = genericDecode options
instance encodeInternalServerException :: Encode InternalServerException where encode = genericEncode options

-- | Constructs InternalServerException from required parameters
newInternalServerException :: InternalServerException
newInternalServerException  = InternalServerException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InternalServerException
newInternalServerException'  customize = (InternalServerException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The filter specified for the <code>ListTopicDetectionJobs</code> operation is invalid. Specify a different filter.</p>
newtype InvalidFilterException = InvalidFilterException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidFilterException :: Newtype InvalidFilterException _
derive instance repGenericInvalidFilterException :: Generic InvalidFilterException _
instance showInvalidFilterException :: Show InvalidFilterException where show = genericShow
instance decodeInvalidFilterException :: Decode InvalidFilterException where decode = genericDecode options
instance encodeInvalidFilterException :: Encode InvalidFilterException where encode = genericEncode options

-- | Constructs InvalidFilterException from required parameters
newInvalidFilterException :: InvalidFilterException
newInvalidFilterException  = InvalidFilterException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidFilterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidFilterException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidFilterException
newInvalidFilterException'  customize = (InvalidFilterException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The request is invalid.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where decode = genericDecode options
instance encodeInvalidRequestException :: Encode InvalidRequestException where encode = genericEncode options

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype JobId = JobId String
derive instance newtypeJobId :: Newtype JobId _
derive instance repGenericJobId :: Generic JobId _
instance showJobId :: Show JobId where show = genericShow
instance decodeJobId :: Decode JobId where decode = genericDecode options
instance encodeJobId :: Encode JobId where encode = genericEncode options



newtype JobName = JobName String
derive instance newtypeJobName :: Newtype JobName _
derive instance repGenericJobName :: Generic JobName _
instance showJobName :: Show JobName where show = genericShow
instance decodeJobName :: Decode JobName where decode = genericDecode options
instance encodeJobName :: Encode JobName where encode = genericEncode options



-- | <p>The specified job was not found. Check the job ID and try again.</p>
newtype JobNotFoundException = JobNotFoundException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeJobNotFoundException :: Newtype JobNotFoundException _
derive instance repGenericJobNotFoundException :: Generic JobNotFoundException _
instance showJobNotFoundException :: Show JobNotFoundException where show = genericShow
instance decodeJobNotFoundException :: Decode JobNotFoundException where decode = genericDecode options
instance encodeJobNotFoundException :: Encode JobNotFoundException where encode = genericEncode options

-- | Constructs JobNotFoundException from required parameters
newJobNotFoundException :: JobNotFoundException
newJobNotFoundException  = JobNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs JobNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobNotFoundException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> JobNotFoundException
newJobNotFoundException'  customize = (JobNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype JobStatus = JobStatus String
derive instance newtypeJobStatus :: Newtype JobStatus _
derive instance repGenericJobStatus :: Generic JobStatus _
instance showJobStatus :: Show JobStatus where show = genericShow
instance decodeJobStatus :: Decode JobStatus where decode = genericDecode options
instance encodeJobStatus :: Encode JobStatus where encode = genericEncode options



-- | <p>Describes a key noun phrase.</p>
newtype KeyPhrase = KeyPhrase 
  { "Score" :: NullOrUndefined (Number)
  , "Text" :: NullOrUndefined (String)
  , "BeginOffset" :: NullOrUndefined (Int)
  , "EndOffset" :: NullOrUndefined (Int)
  }
derive instance newtypeKeyPhrase :: Newtype KeyPhrase _
derive instance repGenericKeyPhrase :: Generic KeyPhrase _
instance showKeyPhrase :: Show KeyPhrase where show = genericShow
instance decodeKeyPhrase :: Decode KeyPhrase where decode = genericDecode options
instance encodeKeyPhrase :: Encode KeyPhrase where encode = genericEncode options

-- | Constructs KeyPhrase from required parameters
newKeyPhrase :: KeyPhrase
newKeyPhrase  = KeyPhrase { "BeginOffset": (NullOrUndefined Nothing), "EndOffset": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing), "Text": (NullOrUndefined Nothing) }

-- | Constructs KeyPhrase's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyPhrase' :: ( { "Score" :: NullOrUndefined (Number) , "Text" :: NullOrUndefined (String) , "BeginOffset" :: NullOrUndefined (Int) , "EndOffset" :: NullOrUndefined (Int) } -> {"Score" :: NullOrUndefined (Number) , "Text" :: NullOrUndefined (String) , "BeginOffset" :: NullOrUndefined (Int) , "EndOffset" :: NullOrUndefined (Int) } ) -> KeyPhrase
newKeyPhrase'  customize = (KeyPhrase <<< customize) { "BeginOffset": (NullOrUndefined Nothing), "EndOffset": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing), "Text": (NullOrUndefined Nothing) }



newtype LanguageCode = LanguageCode String
derive instance newtypeLanguageCode :: Newtype LanguageCode _
derive instance repGenericLanguageCode :: Generic LanguageCode _
instance showLanguageCode :: Show LanguageCode where show = genericShow
instance decodeLanguageCode :: Decode LanguageCode where decode = genericDecode options
instance encodeLanguageCode :: Encode LanguageCode where encode = genericEncode options



newtype ListOfDetectDominantLanguageResult = ListOfDetectDominantLanguageResult (Array BatchDetectDominantLanguageItemResult)
derive instance newtypeListOfDetectDominantLanguageResult :: Newtype ListOfDetectDominantLanguageResult _
derive instance repGenericListOfDetectDominantLanguageResult :: Generic ListOfDetectDominantLanguageResult _
instance showListOfDetectDominantLanguageResult :: Show ListOfDetectDominantLanguageResult where show = genericShow
instance decodeListOfDetectDominantLanguageResult :: Decode ListOfDetectDominantLanguageResult where decode = genericDecode options
instance encodeListOfDetectDominantLanguageResult :: Encode ListOfDetectDominantLanguageResult where encode = genericEncode options



newtype ListOfDetectEntitiesResult = ListOfDetectEntitiesResult (Array BatchDetectEntitiesItemResult)
derive instance newtypeListOfDetectEntitiesResult :: Newtype ListOfDetectEntitiesResult _
derive instance repGenericListOfDetectEntitiesResult :: Generic ListOfDetectEntitiesResult _
instance showListOfDetectEntitiesResult :: Show ListOfDetectEntitiesResult where show = genericShow
instance decodeListOfDetectEntitiesResult :: Decode ListOfDetectEntitiesResult where decode = genericDecode options
instance encodeListOfDetectEntitiesResult :: Encode ListOfDetectEntitiesResult where encode = genericEncode options



newtype ListOfDetectKeyPhrasesResult = ListOfDetectKeyPhrasesResult (Array BatchDetectKeyPhrasesItemResult)
derive instance newtypeListOfDetectKeyPhrasesResult :: Newtype ListOfDetectKeyPhrasesResult _
derive instance repGenericListOfDetectKeyPhrasesResult :: Generic ListOfDetectKeyPhrasesResult _
instance showListOfDetectKeyPhrasesResult :: Show ListOfDetectKeyPhrasesResult where show = genericShow
instance decodeListOfDetectKeyPhrasesResult :: Decode ListOfDetectKeyPhrasesResult where decode = genericDecode options
instance encodeListOfDetectKeyPhrasesResult :: Encode ListOfDetectKeyPhrasesResult where encode = genericEncode options



newtype ListOfDetectSentimentResult = ListOfDetectSentimentResult (Array BatchDetectSentimentItemResult)
derive instance newtypeListOfDetectSentimentResult :: Newtype ListOfDetectSentimentResult _
derive instance repGenericListOfDetectSentimentResult :: Generic ListOfDetectSentimentResult _
instance showListOfDetectSentimentResult :: Show ListOfDetectSentimentResult where show = genericShow
instance decodeListOfDetectSentimentResult :: Decode ListOfDetectSentimentResult where decode = genericDecode options
instance encodeListOfDetectSentimentResult :: Encode ListOfDetectSentimentResult where encode = genericEncode options



newtype ListOfDominantLanguages = ListOfDominantLanguages (Array DominantLanguage)
derive instance newtypeListOfDominantLanguages :: Newtype ListOfDominantLanguages _
derive instance repGenericListOfDominantLanguages :: Generic ListOfDominantLanguages _
instance showListOfDominantLanguages :: Show ListOfDominantLanguages where show = genericShow
instance decodeListOfDominantLanguages :: Decode ListOfDominantLanguages where decode = genericDecode options
instance encodeListOfDominantLanguages :: Encode ListOfDominantLanguages where encode = genericEncode options



newtype ListOfEntities = ListOfEntities (Array Entity)
derive instance newtypeListOfEntities :: Newtype ListOfEntities _
derive instance repGenericListOfEntities :: Generic ListOfEntities _
instance showListOfEntities :: Show ListOfEntities where show = genericShow
instance decodeListOfEntities :: Decode ListOfEntities where decode = genericDecode options
instance encodeListOfEntities :: Encode ListOfEntities where encode = genericEncode options



newtype ListOfKeyPhrases = ListOfKeyPhrases (Array KeyPhrase)
derive instance newtypeListOfKeyPhrases :: Newtype ListOfKeyPhrases _
derive instance repGenericListOfKeyPhrases :: Generic ListOfKeyPhrases _
instance showListOfKeyPhrases :: Show ListOfKeyPhrases where show = genericShow
instance decodeListOfKeyPhrases :: Decode ListOfKeyPhrases where decode = genericDecode options
instance encodeListOfKeyPhrases :: Encode ListOfKeyPhrases where encode = genericEncode options



newtype ListTopicsDetectionJobsRequest = ListTopicsDetectionJobsRequest 
  { "Filter" :: NullOrUndefined (TopicsDetectionJobFilter)
  , "NextToken" :: NullOrUndefined (String)
  , "MaxResults" :: NullOrUndefined (MaxResultsInteger)
  }
derive instance newtypeListTopicsDetectionJobsRequest :: Newtype ListTopicsDetectionJobsRequest _
derive instance repGenericListTopicsDetectionJobsRequest :: Generic ListTopicsDetectionJobsRequest _
instance showListTopicsDetectionJobsRequest :: Show ListTopicsDetectionJobsRequest where show = genericShow
instance decodeListTopicsDetectionJobsRequest :: Decode ListTopicsDetectionJobsRequest where decode = genericDecode options
instance encodeListTopicsDetectionJobsRequest :: Encode ListTopicsDetectionJobsRequest where encode = genericEncode options

-- | Constructs ListTopicsDetectionJobsRequest from required parameters
newListTopicsDetectionJobsRequest :: ListTopicsDetectionJobsRequest
newListTopicsDetectionJobsRequest  = ListTopicsDetectionJobsRequest { "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListTopicsDetectionJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicsDetectionJobsRequest' :: ( { "Filter" :: NullOrUndefined (TopicsDetectionJobFilter) , "NextToken" :: NullOrUndefined (String) , "MaxResults" :: NullOrUndefined (MaxResultsInteger) } -> {"Filter" :: NullOrUndefined (TopicsDetectionJobFilter) , "NextToken" :: NullOrUndefined (String) , "MaxResults" :: NullOrUndefined (MaxResultsInteger) } ) -> ListTopicsDetectionJobsRequest
newListTopicsDetectionJobsRequest'  customize = (ListTopicsDetectionJobsRequest <<< customize) { "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListTopicsDetectionJobsResponse = ListTopicsDetectionJobsResponse 
  { "TopicsDetectionJobPropertiesList" :: NullOrUndefined (TopicsDetectionJobPropertiesList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListTopicsDetectionJobsResponse :: Newtype ListTopicsDetectionJobsResponse _
derive instance repGenericListTopicsDetectionJobsResponse :: Generic ListTopicsDetectionJobsResponse _
instance showListTopicsDetectionJobsResponse :: Show ListTopicsDetectionJobsResponse where show = genericShow
instance decodeListTopicsDetectionJobsResponse :: Decode ListTopicsDetectionJobsResponse where decode = genericDecode options
instance encodeListTopicsDetectionJobsResponse :: Encode ListTopicsDetectionJobsResponse where encode = genericEncode options

-- | Constructs ListTopicsDetectionJobsResponse from required parameters
newListTopicsDetectionJobsResponse :: ListTopicsDetectionJobsResponse
newListTopicsDetectionJobsResponse  = ListTopicsDetectionJobsResponse { "NextToken": (NullOrUndefined Nothing), "TopicsDetectionJobPropertiesList": (NullOrUndefined Nothing) }

-- | Constructs ListTopicsDetectionJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicsDetectionJobsResponse' :: ( { "TopicsDetectionJobPropertiesList" :: NullOrUndefined (TopicsDetectionJobPropertiesList) , "NextToken" :: NullOrUndefined (String) } -> {"TopicsDetectionJobPropertiesList" :: NullOrUndefined (TopicsDetectionJobPropertiesList) , "NextToken" :: NullOrUndefined (String) } ) -> ListTopicsDetectionJobsResponse
newListTopicsDetectionJobsResponse'  customize = (ListTopicsDetectionJobsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "TopicsDetectionJobPropertiesList": (NullOrUndefined Nothing) }



newtype MaxResultsInteger = MaxResultsInteger Int
derive instance newtypeMaxResultsInteger :: Newtype MaxResultsInteger _
derive instance repGenericMaxResultsInteger :: Generic MaxResultsInteger _
instance showMaxResultsInteger :: Show MaxResultsInteger where show = genericShow
instance decodeMaxResultsInteger :: Decode MaxResultsInteger where decode = genericDecode options
instance encodeMaxResultsInteger :: Encode MaxResultsInteger where encode = genericEncode options



newtype NumberOfTopicsInteger = NumberOfTopicsInteger Int
derive instance newtypeNumberOfTopicsInteger :: Newtype NumberOfTopicsInteger _
derive instance repGenericNumberOfTopicsInteger :: Generic NumberOfTopicsInteger _
instance showNumberOfTopicsInteger :: Show NumberOfTopicsInteger where show = genericShow
instance decodeNumberOfTopicsInteger :: Decode NumberOfTopicsInteger where decode = genericDecode options
instance encodeNumberOfTopicsInteger :: Encode NumberOfTopicsInteger where encode = genericEncode options



-- | <p>Provides configuration parameters for the output of topic detection jobs.</p> <p/>
newtype OutputDataConfig = OutputDataConfig 
  { "S3Uri" :: (S3Uri)
  }
derive instance newtypeOutputDataConfig :: Newtype OutputDataConfig _
derive instance repGenericOutputDataConfig :: Generic OutputDataConfig _
instance showOutputDataConfig :: Show OutputDataConfig where show = genericShow
instance decodeOutputDataConfig :: Decode OutputDataConfig where decode = genericDecode options
instance encodeOutputDataConfig :: Encode OutputDataConfig where encode = genericEncode options

-- | Constructs OutputDataConfig from required parameters
newOutputDataConfig :: S3Uri -> OutputDataConfig
newOutputDataConfig _S3Uri = OutputDataConfig { "S3Uri": _S3Uri }

-- | Constructs OutputDataConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputDataConfig' :: S3Uri -> ( { "S3Uri" :: (S3Uri) } -> {"S3Uri" :: (S3Uri) } ) -> OutputDataConfig
newOutputDataConfig' _S3Uri customize = (OutputDataConfig <<< customize) { "S3Uri": _S3Uri }



newtype S3Uri = S3Uri String
derive instance newtypeS3Uri :: Newtype S3Uri _
derive instance repGenericS3Uri :: Generic S3Uri _
instance showS3Uri :: Show S3Uri where show = genericShow
instance decodeS3Uri :: Decode S3Uri where decode = genericDecode options
instance encodeS3Uri :: Encode S3Uri where encode = genericEncode options



-- | <p>Describes the level of confidence that Amazon Comprehend has in the accuracy of its detection of sentiments.</p>
newtype SentimentScore = SentimentScore 
  { "Positive" :: NullOrUndefined (Number)
  , "Negative" :: NullOrUndefined (Number)
  , "Neutral" :: NullOrUndefined (Number)
  , "Mixed" :: NullOrUndefined (Number)
  }
derive instance newtypeSentimentScore :: Newtype SentimentScore _
derive instance repGenericSentimentScore :: Generic SentimentScore _
instance showSentimentScore :: Show SentimentScore where show = genericShow
instance decodeSentimentScore :: Decode SentimentScore where decode = genericDecode options
instance encodeSentimentScore :: Encode SentimentScore where encode = genericEncode options

-- | Constructs SentimentScore from required parameters
newSentimentScore :: SentimentScore
newSentimentScore  = SentimentScore { "Mixed": (NullOrUndefined Nothing), "Negative": (NullOrUndefined Nothing), "Neutral": (NullOrUndefined Nothing), "Positive": (NullOrUndefined Nothing) }

-- | Constructs SentimentScore's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSentimentScore' :: ( { "Positive" :: NullOrUndefined (Number) , "Negative" :: NullOrUndefined (Number) , "Neutral" :: NullOrUndefined (Number) , "Mixed" :: NullOrUndefined (Number) } -> {"Positive" :: NullOrUndefined (Number) , "Negative" :: NullOrUndefined (Number) , "Neutral" :: NullOrUndefined (Number) , "Mixed" :: NullOrUndefined (Number) } ) -> SentimentScore
newSentimentScore'  customize = (SentimentScore <<< customize) { "Mixed": (NullOrUndefined Nothing), "Negative": (NullOrUndefined Nothing), "Neutral": (NullOrUndefined Nothing), "Positive": (NullOrUndefined Nothing) }



newtype SentimentType = SentimentType String
derive instance newtypeSentimentType :: Newtype SentimentType _
derive instance repGenericSentimentType :: Generic SentimentType _
instance showSentimentType :: Show SentimentType where show = genericShow
instance decodeSentimentType :: Decode SentimentType where decode = genericDecode options
instance encodeSentimentType :: Encode SentimentType where encode = genericEncode options



newtype StartTopicsDetectionJobRequest = StartTopicsDetectionJobRequest 
  { "InputDataConfig" :: (InputDataConfig)
  , "OutputDataConfig" :: (OutputDataConfig)
  , "DataAccessRoleArn" :: (IamRoleArn)
  , "JobName" :: NullOrUndefined (JobName)
  , "NumberOfTopics" :: NullOrUndefined (NumberOfTopicsInteger)
  , "ClientRequestToken" :: NullOrUndefined (ClientRequestTokenString)
  }
derive instance newtypeStartTopicsDetectionJobRequest :: Newtype StartTopicsDetectionJobRequest _
derive instance repGenericStartTopicsDetectionJobRequest :: Generic StartTopicsDetectionJobRequest _
instance showStartTopicsDetectionJobRequest :: Show StartTopicsDetectionJobRequest where show = genericShow
instance decodeStartTopicsDetectionJobRequest :: Decode StartTopicsDetectionJobRequest where decode = genericDecode options
instance encodeStartTopicsDetectionJobRequest :: Encode StartTopicsDetectionJobRequest where encode = genericEncode options

-- | Constructs StartTopicsDetectionJobRequest from required parameters
newStartTopicsDetectionJobRequest :: IamRoleArn -> InputDataConfig -> OutputDataConfig -> StartTopicsDetectionJobRequest
newStartTopicsDetectionJobRequest _DataAccessRoleArn _InputDataConfig _OutputDataConfig = StartTopicsDetectionJobRequest { "DataAccessRoleArn": _DataAccessRoleArn, "InputDataConfig": _InputDataConfig, "OutputDataConfig": _OutputDataConfig, "ClientRequestToken": (NullOrUndefined Nothing), "JobName": (NullOrUndefined Nothing), "NumberOfTopics": (NullOrUndefined Nothing) }

-- | Constructs StartTopicsDetectionJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTopicsDetectionJobRequest' :: IamRoleArn -> InputDataConfig -> OutputDataConfig -> ( { "InputDataConfig" :: (InputDataConfig) , "OutputDataConfig" :: (OutputDataConfig) , "DataAccessRoleArn" :: (IamRoleArn) , "JobName" :: NullOrUndefined (JobName) , "NumberOfTopics" :: NullOrUndefined (NumberOfTopicsInteger) , "ClientRequestToken" :: NullOrUndefined (ClientRequestTokenString) } -> {"InputDataConfig" :: (InputDataConfig) , "OutputDataConfig" :: (OutputDataConfig) , "DataAccessRoleArn" :: (IamRoleArn) , "JobName" :: NullOrUndefined (JobName) , "NumberOfTopics" :: NullOrUndefined (NumberOfTopicsInteger) , "ClientRequestToken" :: NullOrUndefined (ClientRequestTokenString) } ) -> StartTopicsDetectionJobRequest
newStartTopicsDetectionJobRequest' _DataAccessRoleArn _InputDataConfig _OutputDataConfig customize = (StartTopicsDetectionJobRequest <<< customize) { "DataAccessRoleArn": _DataAccessRoleArn, "InputDataConfig": _InputDataConfig, "OutputDataConfig": _OutputDataConfig, "ClientRequestToken": (NullOrUndefined Nothing), "JobName": (NullOrUndefined Nothing), "NumberOfTopics": (NullOrUndefined Nothing) }



newtype StartTopicsDetectionJobResponse = StartTopicsDetectionJobResponse 
  { "JobId" :: NullOrUndefined (JobId)
  , "JobStatus" :: NullOrUndefined (JobStatus)
  }
derive instance newtypeStartTopicsDetectionJobResponse :: Newtype StartTopicsDetectionJobResponse _
derive instance repGenericStartTopicsDetectionJobResponse :: Generic StartTopicsDetectionJobResponse _
instance showStartTopicsDetectionJobResponse :: Show StartTopicsDetectionJobResponse where show = genericShow
instance decodeStartTopicsDetectionJobResponse :: Decode StartTopicsDetectionJobResponse where decode = genericDecode options
instance encodeStartTopicsDetectionJobResponse :: Encode StartTopicsDetectionJobResponse where encode = genericEncode options

-- | Constructs StartTopicsDetectionJobResponse from required parameters
newStartTopicsDetectionJobResponse :: StartTopicsDetectionJobResponse
newStartTopicsDetectionJobResponse  = StartTopicsDetectionJobResponse { "JobId": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing) }

-- | Constructs StartTopicsDetectionJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTopicsDetectionJobResponse' :: ( { "JobId" :: NullOrUndefined (JobId) , "JobStatus" :: NullOrUndefined (JobStatus) } -> {"JobId" :: NullOrUndefined (JobId) , "JobStatus" :: NullOrUndefined (JobStatus) } ) -> StartTopicsDetectionJobResponse
newStartTopicsDetectionJobResponse'  customize = (StartTopicsDetectionJobResponse <<< customize) { "JobId": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing) }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



-- | <p>The size of the input text exceeds the limit. Use a smaller document.</p>
newtype TextSizeLimitExceededException = TextSizeLimitExceededException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeTextSizeLimitExceededException :: Newtype TextSizeLimitExceededException _
derive instance repGenericTextSizeLimitExceededException :: Generic TextSizeLimitExceededException _
instance showTextSizeLimitExceededException :: Show TextSizeLimitExceededException where show = genericShow
instance decodeTextSizeLimitExceededException :: Decode TextSizeLimitExceededException where decode = genericDecode options
instance encodeTextSizeLimitExceededException :: Encode TextSizeLimitExceededException where encode = genericEncode options

-- | Constructs TextSizeLimitExceededException from required parameters
newTextSizeLimitExceededException :: TextSizeLimitExceededException
newTextSizeLimitExceededException  = TextSizeLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs TextSizeLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTextSizeLimitExceededException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> TextSizeLimitExceededException
newTextSizeLimitExceededException'  customize = (TextSizeLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The number of requests exceeds the limit. Resubmit your request later.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": (NullOrUndefined Nothing) }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Provides information for filtering topic detection jobs. For more information, see .</p>
newtype TopicsDetectionJobFilter = TopicsDetectionJobFilter 
  { "JobName" :: NullOrUndefined (JobName)
  , "JobStatus" :: NullOrUndefined (JobStatus)
  , "SubmitTimeBefore" :: NullOrUndefined (Types.Timestamp)
  , "SubmitTimeAfter" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeTopicsDetectionJobFilter :: Newtype TopicsDetectionJobFilter _
derive instance repGenericTopicsDetectionJobFilter :: Generic TopicsDetectionJobFilter _
instance showTopicsDetectionJobFilter :: Show TopicsDetectionJobFilter where show = genericShow
instance decodeTopicsDetectionJobFilter :: Decode TopicsDetectionJobFilter where decode = genericDecode options
instance encodeTopicsDetectionJobFilter :: Encode TopicsDetectionJobFilter where encode = genericEncode options

-- | Constructs TopicsDetectionJobFilter from required parameters
newTopicsDetectionJobFilter :: TopicsDetectionJobFilter
newTopicsDetectionJobFilter  = TopicsDetectionJobFilter { "JobName": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "SubmitTimeAfter": (NullOrUndefined Nothing), "SubmitTimeBefore": (NullOrUndefined Nothing) }

-- | Constructs TopicsDetectionJobFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicsDetectionJobFilter' :: ( { "JobName" :: NullOrUndefined (JobName) , "JobStatus" :: NullOrUndefined (JobStatus) , "SubmitTimeBefore" :: NullOrUndefined (Types.Timestamp) , "SubmitTimeAfter" :: NullOrUndefined (Types.Timestamp) } -> {"JobName" :: NullOrUndefined (JobName) , "JobStatus" :: NullOrUndefined (JobStatus) , "SubmitTimeBefore" :: NullOrUndefined (Types.Timestamp) , "SubmitTimeAfter" :: NullOrUndefined (Types.Timestamp) } ) -> TopicsDetectionJobFilter
newTopicsDetectionJobFilter'  customize = (TopicsDetectionJobFilter <<< customize) { "JobName": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "SubmitTimeAfter": (NullOrUndefined Nothing), "SubmitTimeBefore": (NullOrUndefined Nothing) }



-- | <p>Provides information about a topic detection job.</p>
newtype TopicsDetectionJobProperties = TopicsDetectionJobProperties 
  { "JobId" :: NullOrUndefined (JobId)
  , "JobName" :: NullOrUndefined (JobName)
  , "JobStatus" :: NullOrUndefined (JobStatus)
  , "Message" :: NullOrUndefined (AnyLengthString)
  , "SubmitTime" :: NullOrUndefined (Types.Timestamp)
  , "EndTime" :: NullOrUndefined (Types.Timestamp)
  , "InputDataConfig" :: NullOrUndefined (InputDataConfig)
  , "OutputDataConfig" :: NullOrUndefined (OutputDataConfig)
  , "NumberOfTopics" :: NullOrUndefined (Int)
  }
derive instance newtypeTopicsDetectionJobProperties :: Newtype TopicsDetectionJobProperties _
derive instance repGenericTopicsDetectionJobProperties :: Generic TopicsDetectionJobProperties _
instance showTopicsDetectionJobProperties :: Show TopicsDetectionJobProperties where show = genericShow
instance decodeTopicsDetectionJobProperties :: Decode TopicsDetectionJobProperties where decode = genericDecode options
instance encodeTopicsDetectionJobProperties :: Encode TopicsDetectionJobProperties where encode = genericEncode options

-- | Constructs TopicsDetectionJobProperties from required parameters
newTopicsDetectionJobProperties :: TopicsDetectionJobProperties
newTopicsDetectionJobProperties  = TopicsDetectionJobProperties { "EndTime": (NullOrUndefined Nothing), "InputDataConfig": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobName": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "NumberOfTopics": (NullOrUndefined Nothing), "OutputDataConfig": (NullOrUndefined Nothing), "SubmitTime": (NullOrUndefined Nothing) }

-- | Constructs TopicsDetectionJobProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicsDetectionJobProperties' :: ( { "JobId" :: NullOrUndefined (JobId) , "JobName" :: NullOrUndefined (JobName) , "JobStatus" :: NullOrUndefined (JobStatus) , "Message" :: NullOrUndefined (AnyLengthString) , "SubmitTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "InputDataConfig" :: NullOrUndefined (InputDataConfig) , "OutputDataConfig" :: NullOrUndefined (OutputDataConfig) , "NumberOfTopics" :: NullOrUndefined (Int) } -> {"JobId" :: NullOrUndefined (JobId) , "JobName" :: NullOrUndefined (JobName) , "JobStatus" :: NullOrUndefined (JobStatus) , "Message" :: NullOrUndefined (AnyLengthString) , "SubmitTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "InputDataConfig" :: NullOrUndefined (InputDataConfig) , "OutputDataConfig" :: NullOrUndefined (OutputDataConfig) , "NumberOfTopics" :: NullOrUndefined (Int) } ) -> TopicsDetectionJobProperties
newTopicsDetectionJobProperties'  customize = (TopicsDetectionJobProperties <<< customize) { "EndTime": (NullOrUndefined Nothing), "InputDataConfig": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobName": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "NumberOfTopics": (NullOrUndefined Nothing), "OutputDataConfig": (NullOrUndefined Nothing), "SubmitTime": (NullOrUndefined Nothing) }



newtype TopicsDetectionJobPropertiesList = TopicsDetectionJobPropertiesList (Array TopicsDetectionJobProperties)
derive instance newtypeTopicsDetectionJobPropertiesList :: Newtype TopicsDetectionJobPropertiesList _
derive instance repGenericTopicsDetectionJobPropertiesList :: Generic TopicsDetectionJobPropertiesList _
instance showTopicsDetectionJobPropertiesList :: Show TopicsDetectionJobPropertiesList where show = genericShow
instance decodeTopicsDetectionJobPropertiesList :: Decode TopicsDetectionJobPropertiesList where decode = genericDecode options
instance encodeTopicsDetectionJobPropertiesList :: Encode TopicsDetectionJobPropertiesList where encode = genericEncode options



-- | <p>Amazon Comprehend can't process the language of the input text. For all APIs except <code>DetectDominantLanguage</code>, Amazon Comprehend accepts only English or Spanish text. For the <code>DetectDominantLanguage</code> API, Amazon Comprehend detects 100 languages. For a list of languages, see <a>how-languages</a> </p>
newtype UnsupportedLanguageException = UnsupportedLanguageException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeUnsupportedLanguageException :: Newtype UnsupportedLanguageException _
derive instance repGenericUnsupportedLanguageException :: Generic UnsupportedLanguageException _
instance showUnsupportedLanguageException :: Show UnsupportedLanguageException where show = genericShow
instance decodeUnsupportedLanguageException :: Decode UnsupportedLanguageException where decode = genericDecode options
instance encodeUnsupportedLanguageException :: Encode UnsupportedLanguageException where encode = genericEncode options

-- | Constructs UnsupportedLanguageException from required parameters
newUnsupportedLanguageException :: UnsupportedLanguageException
newUnsupportedLanguageException  = UnsupportedLanguageException { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedLanguageException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedLanguageException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> UnsupportedLanguageException
newUnsupportedLanguageException'  customize = (UnsupportedLanguageException <<< customize) { "Message": (NullOrUndefined Nothing) }


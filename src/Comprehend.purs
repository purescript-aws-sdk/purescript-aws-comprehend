

-- | <p>Amazon Comprehend is an AWS service for gaining insight into the content of documents. Use these actions to determine the topics contained in your documents, the topics they discuss, the predominant sentiment expressed in them, the predominant language used, and more.</p>
module AWS.Comprehend where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "Comprehend" :: String


-- | <p>Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see <a href="http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>. </p>
batchDetectDominantLanguage :: forall eff. BatchDetectDominantLanguageRequest -> Aff (exception :: EXCEPTION | eff) BatchDetectDominantLanguageResponse
batchDetectDominantLanguage = Request.request serviceName "batchDetectDominantLanguage" 


-- | <p>Inspects the text of a batch of documents and returns information about them. For more information about entities, see <a>how-entities</a> </p>
batchDetectEntities :: forall eff. BatchDetectEntitiesRequest -> Aff (exception :: EXCEPTION | eff) BatchDetectEntitiesResponse
batchDetectEntities = Request.request serviceName "batchDetectEntities" 


-- | <p>Detects the key noun phrases found in a batch of documents.</p>
batchDetectKeyPhrases :: forall eff. BatchDetectKeyPhrasesRequest -> Aff (exception :: EXCEPTION | eff) BatchDetectKeyPhrasesResponse
batchDetectKeyPhrases = Request.request serviceName "batchDetectKeyPhrases" 


-- | <p>Inspects a batch of documents and returns an inference of the prevailing sentiment, <code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>, in each one.</p>
batchDetectSentiment :: forall eff. BatchDetectSentimentRequest -> Aff (exception :: EXCEPTION | eff) BatchDetectSentimentResponse
batchDetectSentiment = Request.request serviceName "batchDetectSentiment" 


-- | <p>Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.</p>
describeTopicsDetectionJob :: forall eff. DescribeTopicsDetectionJobRequest -> Aff (exception :: EXCEPTION | eff) DescribeTopicsDetectionJobResponse
describeTopicsDetectionJob = Request.request serviceName "describeTopicsDetectionJob" 


-- | <p>Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see <a href="http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>. </p>
detectDominantLanguage :: forall eff. DetectDominantLanguageRequest -> Aff (exception :: EXCEPTION | eff) DetectDominantLanguageResponse
detectDominantLanguage = Request.request serviceName "detectDominantLanguage" 


-- | <p>Inspects text for entities, and returns information about them. For more information, about entities, see <a>how-entities</a>. </p>
detectEntities :: forall eff. DetectEntitiesRequest -> Aff (exception :: EXCEPTION | eff) DetectEntitiesResponse
detectEntities = Request.request serviceName "detectEntities" 


-- | <p>Detects the key noun phrases found in the text. </p>
detectKeyPhrases :: forall eff. DetectKeyPhrasesRequest -> Aff (exception :: EXCEPTION | eff) DetectKeyPhrasesResponse
detectKeyPhrases = Request.request serviceName "detectKeyPhrases" 


-- | <p>Inspects text and returns an inference of the prevailing sentiment (<code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>). </p>
detectSentiment :: forall eff. DetectSentimentRequest -> Aff (exception :: EXCEPTION | eff) DetectSentimentResponse
detectSentiment = Request.request serviceName "detectSentiment" 


-- | <p>Gets a list of the topic detection jobs that you have submitted.</p>
listTopicsDetectionJobs :: forall eff. ListTopicsDetectionJobsRequest -> Aff (exception :: EXCEPTION | eff) ListTopicsDetectionJobsResponse
listTopicsDetectionJobs = Request.request serviceName "listTopicsDetectionJobs" 


-- | <p>Starts an asynchronous topic detection job. Use the <code>DescribeTopicDetectionJob</code> operation to track the status of a job.</p>
startTopicsDetectionJob :: forall eff. StartTopicsDetectionJobRequest -> Aff (exception :: EXCEPTION | eff) StartTopicsDetectionJobResponse
startTopicsDetectionJob = Request.request serviceName "startTopicsDetectionJob" 


newtype AnyLengthString = AnyLengthString String
derive instance newtypeAnyLengthString :: Newtype AnyLengthString _
derive instance repGenericAnyLengthString :: Generic AnyLengthString _
instance showAnyLengthString :: Show AnyLengthString where
  show = genericShow
instance decodeAnyLengthString :: Decode AnyLengthString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAnyLengthString :: Encode AnyLengthString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
newtype BatchDetectDominantLanguageItemResult = BatchDetectDominantLanguageItemResult 
  { "Index" :: NullOrUndefined.NullOrUndefined (Int)
  , "Languages" :: NullOrUndefined.NullOrUndefined (ListOfDominantLanguages)
  }
derive instance newtypeBatchDetectDominantLanguageItemResult :: Newtype BatchDetectDominantLanguageItemResult _
derive instance repGenericBatchDetectDominantLanguageItemResult :: Generic BatchDetectDominantLanguageItemResult _
instance showBatchDetectDominantLanguageItemResult :: Show BatchDetectDominantLanguageItemResult where
  show = genericShow
instance decodeBatchDetectDominantLanguageItemResult :: Decode BatchDetectDominantLanguageItemResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectDominantLanguageItemResult :: Encode BatchDetectDominantLanguageItemResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDetectDominantLanguageItemResult from required parameters
newBatchDetectDominantLanguageItemResult :: BatchDetectDominantLanguageItemResult
newBatchDetectDominantLanguageItemResult  = BatchDetectDominantLanguageItemResult { "Index": (NullOrUndefined Nothing), "Languages": (NullOrUndefined Nothing) }

-- | Constructs BatchDetectDominantLanguageItemResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectDominantLanguageItemResult' :: ( { "Index" :: NullOrUndefined.NullOrUndefined (Int) , "Languages" :: NullOrUndefined.NullOrUndefined (ListOfDominantLanguages) } -> {"Index" :: NullOrUndefined.NullOrUndefined (Int) , "Languages" :: NullOrUndefined.NullOrUndefined (ListOfDominantLanguages) } ) -> BatchDetectDominantLanguageItemResult
newBatchDetectDominantLanguageItemResult'  customize = (BatchDetectDominantLanguageItemResult <<< customize) { "Index": (NullOrUndefined Nothing), "Languages": (NullOrUndefined Nothing) }



newtype BatchDetectDominantLanguageRequest = BatchDetectDominantLanguageRequest 
  { "TextList" :: (StringList)
  }
derive instance newtypeBatchDetectDominantLanguageRequest :: Newtype BatchDetectDominantLanguageRequest _
derive instance repGenericBatchDetectDominantLanguageRequest :: Generic BatchDetectDominantLanguageRequest _
instance showBatchDetectDominantLanguageRequest :: Show BatchDetectDominantLanguageRequest where
  show = genericShow
instance decodeBatchDetectDominantLanguageRequest :: Decode BatchDetectDominantLanguageRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectDominantLanguageRequest :: Encode BatchDetectDominantLanguageRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showBatchDetectDominantLanguageResponse :: Show BatchDetectDominantLanguageResponse where
  show = genericShow
instance decodeBatchDetectDominantLanguageResponse :: Decode BatchDetectDominantLanguageResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectDominantLanguageResponse :: Encode BatchDetectDominantLanguageResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDetectDominantLanguageResponse from required parameters
newBatchDetectDominantLanguageResponse :: BatchItemErrorList -> ListOfDetectDominantLanguageResult -> BatchDetectDominantLanguageResponse
newBatchDetectDominantLanguageResponse _ErrorList _ResultList = BatchDetectDominantLanguageResponse { "ErrorList": _ErrorList, "ResultList": _ResultList }

-- | Constructs BatchDetectDominantLanguageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectDominantLanguageResponse' :: BatchItemErrorList -> ListOfDetectDominantLanguageResult -> ( { "ResultList" :: (ListOfDetectDominantLanguageResult) , "ErrorList" :: (BatchItemErrorList) } -> {"ResultList" :: (ListOfDetectDominantLanguageResult) , "ErrorList" :: (BatchItemErrorList) } ) -> BatchDetectDominantLanguageResponse
newBatchDetectDominantLanguageResponse' _ErrorList _ResultList customize = (BatchDetectDominantLanguageResponse <<< customize) { "ErrorList": _ErrorList, "ResultList": _ResultList }



-- | <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
newtype BatchDetectEntitiesItemResult = BatchDetectEntitiesItemResult 
  { "Index" :: NullOrUndefined.NullOrUndefined (Int)
  , "Entities" :: NullOrUndefined.NullOrUndefined (ListOfEntities)
  }
derive instance newtypeBatchDetectEntitiesItemResult :: Newtype BatchDetectEntitiesItemResult _
derive instance repGenericBatchDetectEntitiesItemResult :: Generic BatchDetectEntitiesItemResult _
instance showBatchDetectEntitiesItemResult :: Show BatchDetectEntitiesItemResult where
  show = genericShow
instance decodeBatchDetectEntitiesItemResult :: Decode BatchDetectEntitiesItemResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectEntitiesItemResult :: Encode BatchDetectEntitiesItemResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDetectEntitiesItemResult from required parameters
newBatchDetectEntitiesItemResult :: BatchDetectEntitiesItemResult
newBatchDetectEntitiesItemResult  = BatchDetectEntitiesItemResult { "Entities": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }

-- | Constructs BatchDetectEntitiesItemResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectEntitiesItemResult' :: ( { "Index" :: NullOrUndefined.NullOrUndefined (Int) , "Entities" :: NullOrUndefined.NullOrUndefined (ListOfEntities) } -> {"Index" :: NullOrUndefined.NullOrUndefined (Int) , "Entities" :: NullOrUndefined.NullOrUndefined (ListOfEntities) } ) -> BatchDetectEntitiesItemResult
newBatchDetectEntitiesItemResult'  customize = (BatchDetectEntitiesItemResult <<< customize) { "Entities": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }



newtype BatchDetectEntitiesRequest = BatchDetectEntitiesRequest 
  { "TextList" :: (StringList)
  , "LanguageCode" :: (String)
  }
derive instance newtypeBatchDetectEntitiesRequest :: Newtype BatchDetectEntitiesRequest _
derive instance repGenericBatchDetectEntitiesRequest :: Generic BatchDetectEntitiesRequest _
instance showBatchDetectEntitiesRequest :: Show BatchDetectEntitiesRequest where
  show = genericShow
instance decodeBatchDetectEntitiesRequest :: Decode BatchDetectEntitiesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectEntitiesRequest :: Encode BatchDetectEntitiesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showBatchDetectEntitiesResponse :: Show BatchDetectEntitiesResponse where
  show = genericShow
instance decodeBatchDetectEntitiesResponse :: Decode BatchDetectEntitiesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectEntitiesResponse :: Encode BatchDetectEntitiesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDetectEntitiesResponse from required parameters
newBatchDetectEntitiesResponse :: BatchItemErrorList -> ListOfDetectEntitiesResult -> BatchDetectEntitiesResponse
newBatchDetectEntitiesResponse _ErrorList _ResultList = BatchDetectEntitiesResponse { "ErrorList": _ErrorList, "ResultList": _ResultList }

-- | Constructs BatchDetectEntitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectEntitiesResponse' :: BatchItemErrorList -> ListOfDetectEntitiesResult -> ( { "ResultList" :: (ListOfDetectEntitiesResult) , "ErrorList" :: (BatchItemErrorList) } -> {"ResultList" :: (ListOfDetectEntitiesResult) , "ErrorList" :: (BatchItemErrorList) } ) -> BatchDetectEntitiesResponse
newBatchDetectEntitiesResponse' _ErrorList _ResultList customize = (BatchDetectEntitiesResponse <<< customize) { "ErrorList": _ErrorList, "ResultList": _ResultList }



-- | <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
newtype BatchDetectKeyPhrasesItemResult = BatchDetectKeyPhrasesItemResult 
  { "Index" :: NullOrUndefined.NullOrUndefined (Int)
  , "KeyPhrases" :: NullOrUndefined.NullOrUndefined (ListOfKeyPhrases)
  }
derive instance newtypeBatchDetectKeyPhrasesItemResult :: Newtype BatchDetectKeyPhrasesItemResult _
derive instance repGenericBatchDetectKeyPhrasesItemResult :: Generic BatchDetectKeyPhrasesItemResult _
instance showBatchDetectKeyPhrasesItemResult :: Show BatchDetectKeyPhrasesItemResult where
  show = genericShow
instance decodeBatchDetectKeyPhrasesItemResult :: Decode BatchDetectKeyPhrasesItemResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectKeyPhrasesItemResult :: Encode BatchDetectKeyPhrasesItemResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDetectKeyPhrasesItemResult from required parameters
newBatchDetectKeyPhrasesItemResult :: BatchDetectKeyPhrasesItemResult
newBatchDetectKeyPhrasesItemResult  = BatchDetectKeyPhrasesItemResult { "Index": (NullOrUndefined Nothing), "KeyPhrases": (NullOrUndefined Nothing) }

-- | Constructs BatchDetectKeyPhrasesItemResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectKeyPhrasesItemResult' :: ( { "Index" :: NullOrUndefined.NullOrUndefined (Int) , "KeyPhrases" :: NullOrUndefined.NullOrUndefined (ListOfKeyPhrases) } -> {"Index" :: NullOrUndefined.NullOrUndefined (Int) , "KeyPhrases" :: NullOrUndefined.NullOrUndefined (ListOfKeyPhrases) } ) -> BatchDetectKeyPhrasesItemResult
newBatchDetectKeyPhrasesItemResult'  customize = (BatchDetectKeyPhrasesItemResult <<< customize) { "Index": (NullOrUndefined Nothing), "KeyPhrases": (NullOrUndefined Nothing) }



newtype BatchDetectKeyPhrasesRequest = BatchDetectKeyPhrasesRequest 
  { "TextList" :: (StringList)
  , "LanguageCode" :: (String)
  }
derive instance newtypeBatchDetectKeyPhrasesRequest :: Newtype BatchDetectKeyPhrasesRequest _
derive instance repGenericBatchDetectKeyPhrasesRequest :: Generic BatchDetectKeyPhrasesRequest _
instance showBatchDetectKeyPhrasesRequest :: Show BatchDetectKeyPhrasesRequest where
  show = genericShow
instance decodeBatchDetectKeyPhrasesRequest :: Decode BatchDetectKeyPhrasesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectKeyPhrasesRequest :: Encode BatchDetectKeyPhrasesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showBatchDetectKeyPhrasesResponse :: Show BatchDetectKeyPhrasesResponse where
  show = genericShow
instance decodeBatchDetectKeyPhrasesResponse :: Decode BatchDetectKeyPhrasesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectKeyPhrasesResponse :: Encode BatchDetectKeyPhrasesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDetectKeyPhrasesResponse from required parameters
newBatchDetectKeyPhrasesResponse :: BatchItemErrorList -> ListOfDetectKeyPhrasesResult -> BatchDetectKeyPhrasesResponse
newBatchDetectKeyPhrasesResponse _ErrorList _ResultList = BatchDetectKeyPhrasesResponse { "ErrorList": _ErrorList, "ResultList": _ResultList }

-- | Constructs BatchDetectKeyPhrasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectKeyPhrasesResponse' :: BatchItemErrorList -> ListOfDetectKeyPhrasesResult -> ( { "ResultList" :: (ListOfDetectKeyPhrasesResult) , "ErrorList" :: (BatchItemErrorList) } -> {"ResultList" :: (ListOfDetectKeyPhrasesResult) , "ErrorList" :: (BatchItemErrorList) } ) -> BatchDetectKeyPhrasesResponse
newBatchDetectKeyPhrasesResponse' _ErrorList _ResultList customize = (BatchDetectKeyPhrasesResponse <<< customize) { "ErrorList": _ErrorList, "ResultList": _ResultList }



-- | <p>The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.</p>
newtype BatchDetectSentimentItemResult = BatchDetectSentimentItemResult 
  { "Index" :: NullOrUndefined.NullOrUndefined (Int)
  , "Sentiment" :: NullOrUndefined.NullOrUndefined (SentimentType)
  , "SentimentScore" :: NullOrUndefined.NullOrUndefined (SentimentScore)
  }
derive instance newtypeBatchDetectSentimentItemResult :: Newtype BatchDetectSentimentItemResult _
derive instance repGenericBatchDetectSentimentItemResult :: Generic BatchDetectSentimentItemResult _
instance showBatchDetectSentimentItemResult :: Show BatchDetectSentimentItemResult where
  show = genericShow
instance decodeBatchDetectSentimentItemResult :: Decode BatchDetectSentimentItemResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectSentimentItemResult :: Encode BatchDetectSentimentItemResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDetectSentimentItemResult from required parameters
newBatchDetectSentimentItemResult :: BatchDetectSentimentItemResult
newBatchDetectSentimentItemResult  = BatchDetectSentimentItemResult { "Index": (NullOrUndefined Nothing), "Sentiment": (NullOrUndefined Nothing), "SentimentScore": (NullOrUndefined Nothing) }

-- | Constructs BatchDetectSentimentItemResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectSentimentItemResult' :: ( { "Index" :: NullOrUndefined.NullOrUndefined (Int) , "Sentiment" :: NullOrUndefined.NullOrUndefined (SentimentType) , "SentimentScore" :: NullOrUndefined.NullOrUndefined (SentimentScore) } -> {"Index" :: NullOrUndefined.NullOrUndefined (Int) , "Sentiment" :: NullOrUndefined.NullOrUndefined (SentimentType) , "SentimentScore" :: NullOrUndefined.NullOrUndefined (SentimentScore) } ) -> BatchDetectSentimentItemResult
newBatchDetectSentimentItemResult'  customize = (BatchDetectSentimentItemResult <<< customize) { "Index": (NullOrUndefined Nothing), "Sentiment": (NullOrUndefined Nothing), "SentimentScore": (NullOrUndefined Nothing) }



newtype BatchDetectSentimentRequest = BatchDetectSentimentRequest 
  { "TextList" :: (StringList)
  , "LanguageCode" :: (String)
  }
derive instance newtypeBatchDetectSentimentRequest :: Newtype BatchDetectSentimentRequest _
derive instance repGenericBatchDetectSentimentRequest :: Generic BatchDetectSentimentRequest _
instance showBatchDetectSentimentRequest :: Show BatchDetectSentimentRequest where
  show = genericShow
instance decodeBatchDetectSentimentRequest :: Decode BatchDetectSentimentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectSentimentRequest :: Encode BatchDetectSentimentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showBatchDetectSentimentResponse :: Show BatchDetectSentimentResponse where
  show = genericShow
instance decodeBatchDetectSentimentResponse :: Decode BatchDetectSentimentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchDetectSentimentResponse :: Encode BatchDetectSentimentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchDetectSentimentResponse from required parameters
newBatchDetectSentimentResponse :: BatchItemErrorList -> ListOfDetectSentimentResult -> BatchDetectSentimentResponse
newBatchDetectSentimentResponse _ErrorList _ResultList = BatchDetectSentimentResponse { "ErrorList": _ErrorList, "ResultList": _ResultList }

-- | Constructs BatchDetectSentimentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchDetectSentimentResponse' :: BatchItemErrorList -> ListOfDetectSentimentResult -> ( { "ResultList" :: (ListOfDetectSentimentResult) , "ErrorList" :: (BatchItemErrorList) } -> {"ResultList" :: (ListOfDetectSentimentResult) , "ErrorList" :: (BatchItemErrorList) } ) -> BatchDetectSentimentResponse
newBatchDetectSentimentResponse' _ErrorList _ResultList customize = (BatchDetectSentimentResponse <<< customize) { "ErrorList": _ErrorList, "ResultList": _ResultList }



-- | <p>Describes an error that occurred while processing a document in a batch. The operation returns on <code>BatchItemError</code> object for each document that contained an error.</p>
newtype BatchItemError = BatchItemError 
  { "Index" :: NullOrUndefined.NullOrUndefined (Int)
  , "ErrorCode" :: NullOrUndefined.NullOrUndefined (String)
  , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeBatchItemError :: Newtype BatchItemError _
derive instance repGenericBatchItemError :: Generic BatchItemError _
instance showBatchItemError :: Show BatchItemError where
  show = genericShow
instance decodeBatchItemError :: Decode BatchItemError where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchItemError :: Encode BatchItemError where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchItemError from required parameters
newBatchItemError :: BatchItemError
newBatchItemError  = BatchItemError { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }

-- | Constructs BatchItemError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchItemError' :: ( { "Index" :: NullOrUndefined.NullOrUndefined (Int) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (String) } -> {"Index" :: NullOrUndefined.NullOrUndefined (Int) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (String) } ) -> BatchItemError
newBatchItemError'  customize = (BatchItemError <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }



newtype BatchItemErrorList = BatchItemErrorList (Array BatchItemError)
derive instance newtypeBatchItemErrorList :: Newtype BatchItemErrorList _
derive instance repGenericBatchItemErrorList :: Generic BatchItemErrorList _
instance showBatchItemErrorList :: Show BatchItemErrorList where
  show = genericShow
instance decodeBatchItemErrorList :: Decode BatchItemErrorList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchItemErrorList :: Encode BatchItemErrorList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The number of documents in the request exceeds the limit of 25. Try your request again with fewer documents.</p>
newtype BatchSizeLimitExceededException = BatchSizeLimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeBatchSizeLimitExceededException :: Newtype BatchSizeLimitExceededException _
derive instance repGenericBatchSizeLimitExceededException :: Generic BatchSizeLimitExceededException _
instance showBatchSizeLimitExceededException :: Show BatchSizeLimitExceededException where
  show = genericShow
instance decodeBatchSizeLimitExceededException :: Decode BatchSizeLimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBatchSizeLimitExceededException :: Encode BatchSizeLimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BatchSizeLimitExceededException from required parameters
newBatchSizeLimitExceededException :: BatchSizeLimitExceededException
newBatchSizeLimitExceededException  = BatchSizeLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs BatchSizeLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchSizeLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> BatchSizeLimitExceededException
newBatchSizeLimitExceededException'  customize = (BatchSizeLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ClientRequestTokenString = ClientRequestTokenString String
derive instance newtypeClientRequestTokenString :: Newtype ClientRequestTokenString _
derive instance repGenericClientRequestTokenString :: Generic ClientRequestTokenString _
instance showClientRequestTokenString :: Show ClientRequestTokenString where
  show = genericShow
instance decodeClientRequestTokenString :: Decode ClientRequestTokenString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClientRequestTokenString :: Encode ClientRequestTokenString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeTopicsDetectionJobRequest = DescribeTopicsDetectionJobRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeDescribeTopicsDetectionJobRequest :: Newtype DescribeTopicsDetectionJobRequest _
derive instance repGenericDescribeTopicsDetectionJobRequest :: Generic DescribeTopicsDetectionJobRequest _
instance showDescribeTopicsDetectionJobRequest :: Show DescribeTopicsDetectionJobRequest where
  show = genericShow
instance decodeDescribeTopicsDetectionJobRequest :: Decode DescribeTopicsDetectionJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeTopicsDetectionJobRequest :: Encode DescribeTopicsDetectionJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeTopicsDetectionJobRequest from required parameters
newDescribeTopicsDetectionJobRequest :: JobId -> DescribeTopicsDetectionJobRequest
newDescribeTopicsDetectionJobRequest _JobId = DescribeTopicsDetectionJobRequest { "JobId": _JobId }

-- | Constructs DescribeTopicsDetectionJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTopicsDetectionJobRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> DescribeTopicsDetectionJobRequest
newDescribeTopicsDetectionJobRequest' _JobId customize = (DescribeTopicsDetectionJobRequest <<< customize) { "JobId": _JobId }



newtype DescribeTopicsDetectionJobResponse = DescribeTopicsDetectionJobResponse 
  { "TopicsDetectionJobProperties" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobProperties)
  }
derive instance newtypeDescribeTopicsDetectionJobResponse :: Newtype DescribeTopicsDetectionJobResponse _
derive instance repGenericDescribeTopicsDetectionJobResponse :: Generic DescribeTopicsDetectionJobResponse _
instance showDescribeTopicsDetectionJobResponse :: Show DescribeTopicsDetectionJobResponse where
  show = genericShow
instance decodeDescribeTopicsDetectionJobResponse :: Decode DescribeTopicsDetectionJobResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeTopicsDetectionJobResponse :: Encode DescribeTopicsDetectionJobResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeTopicsDetectionJobResponse from required parameters
newDescribeTopicsDetectionJobResponse :: DescribeTopicsDetectionJobResponse
newDescribeTopicsDetectionJobResponse  = DescribeTopicsDetectionJobResponse { "TopicsDetectionJobProperties": (NullOrUndefined Nothing) }

-- | Constructs DescribeTopicsDetectionJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTopicsDetectionJobResponse' :: ( { "TopicsDetectionJobProperties" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobProperties) } -> {"TopicsDetectionJobProperties" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobProperties) } ) -> DescribeTopicsDetectionJobResponse
newDescribeTopicsDetectionJobResponse'  customize = (DescribeTopicsDetectionJobResponse <<< customize) { "TopicsDetectionJobProperties": (NullOrUndefined Nothing) }



newtype DetectDominantLanguageRequest = DetectDominantLanguageRequest 
  { "Text" :: (String)
  }
derive instance newtypeDetectDominantLanguageRequest :: Newtype DetectDominantLanguageRequest _
derive instance repGenericDetectDominantLanguageRequest :: Generic DetectDominantLanguageRequest _
instance showDetectDominantLanguageRequest :: Show DetectDominantLanguageRequest where
  show = genericShow
instance decodeDetectDominantLanguageRequest :: Decode DetectDominantLanguageRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetectDominantLanguageRequest :: Encode DetectDominantLanguageRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetectDominantLanguageRequest from required parameters
newDetectDominantLanguageRequest :: String -> DetectDominantLanguageRequest
newDetectDominantLanguageRequest _Text = DetectDominantLanguageRequest { "Text": _Text }

-- | Constructs DetectDominantLanguageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectDominantLanguageRequest' :: String -> ( { "Text" :: (String) } -> {"Text" :: (String) } ) -> DetectDominantLanguageRequest
newDetectDominantLanguageRequest' _Text customize = (DetectDominantLanguageRequest <<< customize) { "Text": _Text }



newtype DetectDominantLanguageResponse = DetectDominantLanguageResponse 
  { "Languages" :: NullOrUndefined.NullOrUndefined (ListOfDominantLanguages)
  }
derive instance newtypeDetectDominantLanguageResponse :: Newtype DetectDominantLanguageResponse _
derive instance repGenericDetectDominantLanguageResponse :: Generic DetectDominantLanguageResponse _
instance showDetectDominantLanguageResponse :: Show DetectDominantLanguageResponse where
  show = genericShow
instance decodeDetectDominantLanguageResponse :: Decode DetectDominantLanguageResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetectDominantLanguageResponse :: Encode DetectDominantLanguageResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetectDominantLanguageResponse from required parameters
newDetectDominantLanguageResponse :: DetectDominantLanguageResponse
newDetectDominantLanguageResponse  = DetectDominantLanguageResponse { "Languages": (NullOrUndefined Nothing) }

-- | Constructs DetectDominantLanguageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectDominantLanguageResponse' :: ( { "Languages" :: NullOrUndefined.NullOrUndefined (ListOfDominantLanguages) } -> {"Languages" :: NullOrUndefined.NullOrUndefined (ListOfDominantLanguages) } ) -> DetectDominantLanguageResponse
newDetectDominantLanguageResponse'  customize = (DetectDominantLanguageResponse <<< customize) { "Languages": (NullOrUndefined Nothing) }



newtype DetectEntitiesRequest = DetectEntitiesRequest 
  { "Text" :: (String)
  , "LanguageCode" :: (LanguageCode)
  }
derive instance newtypeDetectEntitiesRequest :: Newtype DetectEntitiesRequest _
derive instance repGenericDetectEntitiesRequest :: Generic DetectEntitiesRequest _
instance showDetectEntitiesRequest :: Show DetectEntitiesRequest where
  show = genericShow
instance decodeDetectEntitiesRequest :: Decode DetectEntitiesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetectEntitiesRequest :: Encode DetectEntitiesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetectEntitiesRequest from required parameters
newDetectEntitiesRequest :: LanguageCode -> String -> DetectEntitiesRequest
newDetectEntitiesRequest _LanguageCode _Text = DetectEntitiesRequest { "LanguageCode": _LanguageCode, "Text": _Text }

-- | Constructs DetectEntitiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectEntitiesRequest' :: LanguageCode -> String -> ( { "Text" :: (String) , "LanguageCode" :: (LanguageCode) } -> {"Text" :: (String) , "LanguageCode" :: (LanguageCode) } ) -> DetectEntitiesRequest
newDetectEntitiesRequest' _LanguageCode _Text customize = (DetectEntitiesRequest <<< customize) { "LanguageCode": _LanguageCode, "Text": _Text }



newtype DetectEntitiesResponse = DetectEntitiesResponse 
  { "Entities" :: NullOrUndefined.NullOrUndefined (ListOfEntities)
  }
derive instance newtypeDetectEntitiesResponse :: Newtype DetectEntitiesResponse _
derive instance repGenericDetectEntitiesResponse :: Generic DetectEntitiesResponse _
instance showDetectEntitiesResponse :: Show DetectEntitiesResponse where
  show = genericShow
instance decodeDetectEntitiesResponse :: Decode DetectEntitiesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetectEntitiesResponse :: Encode DetectEntitiesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetectEntitiesResponse from required parameters
newDetectEntitiesResponse :: DetectEntitiesResponse
newDetectEntitiesResponse  = DetectEntitiesResponse { "Entities": (NullOrUndefined Nothing) }

-- | Constructs DetectEntitiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectEntitiesResponse' :: ( { "Entities" :: NullOrUndefined.NullOrUndefined (ListOfEntities) } -> {"Entities" :: NullOrUndefined.NullOrUndefined (ListOfEntities) } ) -> DetectEntitiesResponse
newDetectEntitiesResponse'  customize = (DetectEntitiesResponse <<< customize) { "Entities": (NullOrUndefined Nothing) }



newtype DetectKeyPhrasesRequest = DetectKeyPhrasesRequest 
  { "Text" :: (String)
  , "LanguageCode" :: (LanguageCode)
  }
derive instance newtypeDetectKeyPhrasesRequest :: Newtype DetectKeyPhrasesRequest _
derive instance repGenericDetectKeyPhrasesRequest :: Generic DetectKeyPhrasesRequest _
instance showDetectKeyPhrasesRequest :: Show DetectKeyPhrasesRequest where
  show = genericShow
instance decodeDetectKeyPhrasesRequest :: Decode DetectKeyPhrasesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetectKeyPhrasesRequest :: Encode DetectKeyPhrasesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetectKeyPhrasesRequest from required parameters
newDetectKeyPhrasesRequest :: LanguageCode -> String -> DetectKeyPhrasesRequest
newDetectKeyPhrasesRequest _LanguageCode _Text = DetectKeyPhrasesRequest { "LanguageCode": _LanguageCode, "Text": _Text }

-- | Constructs DetectKeyPhrasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectKeyPhrasesRequest' :: LanguageCode -> String -> ( { "Text" :: (String) , "LanguageCode" :: (LanguageCode) } -> {"Text" :: (String) , "LanguageCode" :: (LanguageCode) } ) -> DetectKeyPhrasesRequest
newDetectKeyPhrasesRequest' _LanguageCode _Text customize = (DetectKeyPhrasesRequest <<< customize) { "LanguageCode": _LanguageCode, "Text": _Text }



newtype DetectKeyPhrasesResponse = DetectKeyPhrasesResponse 
  { "KeyPhrases" :: NullOrUndefined.NullOrUndefined (ListOfKeyPhrases)
  }
derive instance newtypeDetectKeyPhrasesResponse :: Newtype DetectKeyPhrasesResponse _
derive instance repGenericDetectKeyPhrasesResponse :: Generic DetectKeyPhrasesResponse _
instance showDetectKeyPhrasesResponse :: Show DetectKeyPhrasesResponse where
  show = genericShow
instance decodeDetectKeyPhrasesResponse :: Decode DetectKeyPhrasesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetectKeyPhrasesResponse :: Encode DetectKeyPhrasesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetectKeyPhrasesResponse from required parameters
newDetectKeyPhrasesResponse :: DetectKeyPhrasesResponse
newDetectKeyPhrasesResponse  = DetectKeyPhrasesResponse { "KeyPhrases": (NullOrUndefined Nothing) }

-- | Constructs DetectKeyPhrasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectKeyPhrasesResponse' :: ( { "KeyPhrases" :: NullOrUndefined.NullOrUndefined (ListOfKeyPhrases) } -> {"KeyPhrases" :: NullOrUndefined.NullOrUndefined (ListOfKeyPhrases) } ) -> DetectKeyPhrasesResponse
newDetectKeyPhrasesResponse'  customize = (DetectKeyPhrasesResponse <<< customize) { "KeyPhrases": (NullOrUndefined Nothing) }



newtype DetectSentimentRequest = DetectSentimentRequest 
  { "Text" :: (String)
  , "LanguageCode" :: (LanguageCode)
  }
derive instance newtypeDetectSentimentRequest :: Newtype DetectSentimentRequest _
derive instance repGenericDetectSentimentRequest :: Generic DetectSentimentRequest _
instance showDetectSentimentRequest :: Show DetectSentimentRequest where
  show = genericShow
instance decodeDetectSentimentRequest :: Decode DetectSentimentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetectSentimentRequest :: Encode DetectSentimentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetectSentimentRequest from required parameters
newDetectSentimentRequest :: LanguageCode -> String -> DetectSentimentRequest
newDetectSentimentRequest _LanguageCode _Text = DetectSentimentRequest { "LanguageCode": _LanguageCode, "Text": _Text }

-- | Constructs DetectSentimentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectSentimentRequest' :: LanguageCode -> String -> ( { "Text" :: (String) , "LanguageCode" :: (LanguageCode) } -> {"Text" :: (String) , "LanguageCode" :: (LanguageCode) } ) -> DetectSentimentRequest
newDetectSentimentRequest' _LanguageCode _Text customize = (DetectSentimentRequest <<< customize) { "LanguageCode": _LanguageCode, "Text": _Text }



newtype DetectSentimentResponse = DetectSentimentResponse 
  { "Sentiment" :: NullOrUndefined.NullOrUndefined (SentimentType)
  , "SentimentScore" :: NullOrUndefined.NullOrUndefined (SentimentScore)
  }
derive instance newtypeDetectSentimentResponse :: Newtype DetectSentimentResponse _
derive instance repGenericDetectSentimentResponse :: Generic DetectSentimentResponse _
instance showDetectSentimentResponse :: Show DetectSentimentResponse where
  show = genericShow
instance decodeDetectSentimentResponse :: Decode DetectSentimentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetectSentimentResponse :: Encode DetectSentimentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DetectSentimentResponse from required parameters
newDetectSentimentResponse :: DetectSentimentResponse
newDetectSentimentResponse  = DetectSentimentResponse { "Sentiment": (NullOrUndefined Nothing), "SentimentScore": (NullOrUndefined Nothing) }

-- | Constructs DetectSentimentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectSentimentResponse' :: ( { "Sentiment" :: NullOrUndefined.NullOrUndefined (SentimentType) , "SentimentScore" :: NullOrUndefined.NullOrUndefined (SentimentScore) } -> {"Sentiment" :: NullOrUndefined.NullOrUndefined (SentimentType) , "SentimentScore" :: NullOrUndefined.NullOrUndefined (SentimentScore) } ) -> DetectSentimentResponse
newDetectSentimentResponse'  customize = (DetectSentimentResponse <<< customize) { "Sentiment": (NullOrUndefined Nothing), "SentimentScore": (NullOrUndefined Nothing) }



-- | <p>Returns the code for the dominant language in the input text and the level of confidence that Amazon Comprehend has in the accuracy of the detection.</p>
newtype DominantLanguage = DominantLanguage 
  { "LanguageCode" :: NullOrUndefined.NullOrUndefined (String)
  , "Score" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeDominantLanguage :: Newtype DominantLanguage _
derive instance repGenericDominantLanguage :: Generic DominantLanguage _
instance showDominantLanguage :: Show DominantLanguage where
  show = genericShow
instance decodeDominantLanguage :: Decode DominantLanguage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDominantLanguage :: Encode DominantLanguage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DominantLanguage from required parameters
newDominantLanguage :: DominantLanguage
newDominantLanguage  = DominantLanguage { "LanguageCode": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing) }

-- | Constructs DominantLanguage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDominantLanguage' :: ( { "LanguageCode" :: NullOrUndefined.NullOrUndefined (String) , "Score" :: NullOrUndefined.NullOrUndefined (Number) } -> {"LanguageCode" :: NullOrUndefined.NullOrUndefined (String) , "Score" :: NullOrUndefined.NullOrUndefined (Number) } ) -> DominantLanguage
newDominantLanguage'  customize = (DominantLanguage <<< customize) { "LanguageCode": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing) }



-- | <p>Provides information about an entity. </p> <p> </p>
newtype Entity = Entity 
  { "Score" :: NullOrUndefined.NullOrUndefined (Number)
  , "Type" :: NullOrUndefined.NullOrUndefined (EntityType)
  , "Text" :: NullOrUndefined.NullOrUndefined (String)
  , "BeginOffset" :: NullOrUndefined.NullOrUndefined (Int)
  , "EndOffset" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeEntity :: Newtype Entity _
derive instance repGenericEntity :: Generic Entity _
instance showEntity :: Show Entity where
  show = genericShow
instance decodeEntity :: Decode Entity where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntity :: Encode Entity where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Entity from required parameters
newEntity :: Entity
newEntity  = Entity { "BeginOffset": (NullOrUndefined Nothing), "EndOffset": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing), "Text": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Entity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEntity' :: ( { "Score" :: NullOrUndefined.NullOrUndefined (Number) , "Type" :: NullOrUndefined.NullOrUndefined (EntityType) , "Text" :: NullOrUndefined.NullOrUndefined (String) , "BeginOffset" :: NullOrUndefined.NullOrUndefined (Int) , "EndOffset" :: NullOrUndefined.NullOrUndefined (Int) } -> {"Score" :: NullOrUndefined.NullOrUndefined (Number) , "Type" :: NullOrUndefined.NullOrUndefined (EntityType) , "Text" :: NullOrUndefined.NullOrUndefined (String) , "BeginOffset" :: NullOrUndefined.NullOrUndefined (Int) , "EndOffset" :: NullOrUndefined.NullOrUndefined (Int) } ) -> Entity
newEntity'  customize = (Entity <<< customize) { "BeginOffset": (NullOrUndefined Nothing), "EndOffset": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing), "Text": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype EntityType = EntityType String
derive instance newtypeEntityType :: Newtype EntityType _
derive instance repGenericEntityType :: Generic EntityType _
instance showEntityType :: Show EntityType where
  show = genericShow
instance decodeEntityType :: Decode EntityType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEntityType :: Encode EntityType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype IamRoleArn = IamRoleArn String
derive instance newtypeIamRoleArn :: Newtype IamRoleArn _
derive instance repGenericIamRoleArn :: Generic IamRoleArn _
instance showIamRoleArn :: Show IamRoleArn where
  show = genericShow
instance decodeIamRoleArn :: Decode IamRoleArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIamRoleArn :: Encode IamRoleArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The input properties for a topic detection job.</p>
newtype InputDataConfig = InputDataConfig 
  { "S3Uri" :: (S3Uri)
  , "InputFormat" :: NullOrUndefined.NullOrUndefined (InputFormat)
  }
derive instance newtypeInputDataConfig :: Newtype InputDataConfig _
derive instance repGenericInputDataConfig :: Generic InputDataConfig _
instance showInputDataConfig :: Show InputDataConfig where
  show = genericShow
instance decodeInputDataConfig :: Decode InputDataConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInputDataConfig :: Encode InputDataConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InputDataConfig from required parameters
newInputDataConfig :: S3Uri -> InputDataConfig
newInputDataConfig _S3Uri = InputDataConfig { "S3Uri": _S3Uri, "InputFormat": (NullOrUndefined Nothing) }

-- | Constructs InputDataConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInputDataConfig' :: S3Uri -> ( { "S3Uri" :: (S3Uri) , "InputFormat" :: NullOrUndefined.NullOrUndefined (InputFormat) } -> {"S3Uri" :: (S3Uri) , "InputFormat" :: NullOrUndefined.NullOrUndefined (InputFormat) } ) -> InputDataConfig
newInputDataConfig' _S3Uri customize = (InputDataConfig <<< customize) { "S3Uri": _S3Uri, "InputFormat": (NullOrUndefined Nothing) }



newtype InputFormat = InputFormat String
derive instance newtypeInputFormat :: Newtype InputFormat _
derive instance repGenericInputFormat :: Generic InputFormat _
instance showInputFormat :: Show InputFormat where
  show = genericShow
instance decodeInputFormat :: Decode InputFormat where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInputFormat :: Encode InputFormat where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An internal server error occurred. Retry your request.</p>
newtype InternalServerException = InternalServerException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInternalServerException :: Newtype InternalServerException _
derive instance repGenericInternalServerException :: Generic InternalServerException _
instance showInternalServerException :: Show InternalServerException where
  show = genericShow
instance decodeInternalServerException :: Decode InternalServerException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerException :: Encode InternalServerException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerException from required parameters
newInternalServerException :: InternalServerException
newInternalServerException  = InternalServerException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InternalServerException
newInternalServerException'  customize = (InternalServerException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The filter specified for the <code>ListTopicDetectionJobs</code> operation is invalid. Specify a different filter.</p>
newtype InvalidFilterException = InvalidFilterException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidFilterException :: Newtype InvalidFilterException _
derive instance repGenericInvalidFilterException :: Generic InvalidFilterException _
instance showInvalidFilterException :: Show InvalidFilterException where
  show = genericShow
instance decodeInvalidFilterException :: Decode InvalidFilterException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidFilterException :: Encode InvalidFilterException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidFilterException from required parameters
newInvalidFilterException :: InvalidFilterException
newInvalidFilterException  = InvalidFilterException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidFilterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidFilterException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidFilterException
newInvalidFilterException'  customize = (InvalidFilterException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The request is invalid.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where
  show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidRequestException :: Encode InvalidRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype JobId = JobId String
derive instance newtypeJobId :: Newtype JobId _
derive instance repGenericJobId :: Generic JobId _
instance showJobId :: Show JobId where
  show = genericShow
instance decodeJobId :: Decode JobId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobId :: Encode JobId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype JobName = JobName String
derive instance newtypeJobName :: Newtype JobName _
derive instance repGenericJobName :: Generic JobName _
instance showJobName :: Show JobName where
  show = genericShow
instance decodeJobName :: Decode JobName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobName :: Encode JobName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified job was not found. Check the job ID and try again.</p>
newtype JobNotFoundException = JobNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeJobNotFoundException :: Newtype JobNotFoundException _
derive instance repGenericJobNotFoundException :: Generic JobNotFoundException _
instance showJobNotFoundException :: Show JobNotFoundException where
  show = genericShow
instance decodeJobNotFoundException :: Decode JobNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobNotFoundException :: Encode JobNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobNotFoundException from required parameters
newJobNotFoundException :: JobNotFoundException
newJobNotFoundException  = JobNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs JobNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> JobNotFoundException
newJobNotFoundException'  customize = (JobNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype JobStatus = JobStatus String
derive instance newtypeJobStatus :: Newtype JobStatus _
derive instance repGenericJobStatus :: Generic JobStatus _
instance showJobStatus :: Show JobStatus where
  show = genericShow
instance decodeJobStatus :: Decode JobStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobStatus :: Encode JobStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes a key noun phrase.</p>
newtype KeyPhrase = KeyPhrase 
  { "Score" :: NullOrUndefined.NullOrUndefined (Number)
  , "Text" :: NullOrUndefined.NullOrUndefined (String)
  , "BeginOffset" :: NullOrUndefined.NullOrUndefined (Int)
  , "EndOffset" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeKeyPhrase :: Newtype KeyPhrase _
derive instance repGenericKeyPhrase :: Generic KeyPhrase _
instance showKeyPhrase :: Show KeyPhrase where
  show = genericShow
instance decodeKeyPhrase :: Decode KeyPhrase where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyPhrase :: Encode KeyPhrase where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeyPhrase from required parameters
newKeyPhrase :: KeyPhrase
newKeyPhrase  = KeyPhrase { "BeginOffset": (NullOrUndefined Nothing), "EndOffset": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing), "Text": (NullOrUndefined Nothing) }

-- | Constructs KeyPhrase's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyPhrase' :: ( { "Score" :: NullOrUndefined.NullOrUndefined (Number) , "Text" :: NullOrUndefined.NullOrUndefined (String) , "BeginOffset" :: NullOrUndefined.NullOrUndefined (Int) , "EndOffset" :: NullOrUndefined.NullOrUndefined (Int) } -> {"Score" :: NullOrUndefined.NullOrUndefined (Number) , "Text" :: NullOrUndefined.NullOrUndefined (String) , "BeginOffset" :: NullOrUndefined.NullOrUndefined (Int) , "EndOffset" :: NullOrUndefined.NullOrUndefined (Int) } ) -> KeyPhrase
newKeyPhrase'  customize = (KeyPhrase <<< customize) { "BeginOffset": (NullOrUndefined Nothing), "EndOffset": (NullOrUndefined Nothing), "Score": (NullOrUndefined Nothing), "Text": (NullOrUndefined Nothing) }



newtype LanguageCode = LanguageCode String
derive instance newtypeLanguageCode :: Newtype LanguageCode _
derive instance repGenericLanguageCode :: Generic LanguageCode _
instance showLanguageCode :: Show LanguageCode where
  show = genericShow
instance decodeLanguageCode :: Decode LanguageCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLanguageCode :: Encode LanguageCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfDetectDominantLanguageResult = ListOfDetectDominantLanguageResult (Array BatchDetectDominantLanguageItemResult)
derive instance newtypeListOfDetectDominantLanguageResult :: Newtype ListOfDetectDominantLanguageResult _
derive instance repGenericListOfDetectDominantLanguageResult :: Generic ListOfDetectDominantLanguageResult _
instance showListOfDetectDominantLanguageResult :: Show ListOfDetectDominantLanguageResult where
  show = genericShow
instance decodeListOfDetectDominantLanguageResult :: Decode ListOfDetectDominantLanguageResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfDetectDominantLanguageResult :: Encode ListOfDetectDominantLanguageResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfDetectEntitiesResult = ListOfDetectEntitiesResult (Array BatchDetectEntitiesItemResult)
derive instance newtypeListOfDetectEntitiesResult :: Newtype ListOfDetectEntitiesResult _
derive instance repGenericListOfDetectEntitiesResult :: Generic ListOfDetectEntitiesResult _
instance showListOfDetectEntitiesResult :: Show ListOfDetectEntitiesResult where
  show = genericShow
instance decodeListOfDetectEntitiesResult :: Decode ListOfDetectEntitiesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfDetectEntitiesResult :: Encode ListOfDetectEntitiesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfDetectKeyPhrasesResult = ListOfDetectKeyPhrasesResult (Array BatchDetectKeyPhrasesItemResult)
derive instance newtypeListOfDetectKeyPhrasesResult :: Newtype ListOfDetectKeyPhrasesResult _
derive instance repGenericListOfDetectKeyPhrasesResult :: Generic ListOfDetectKeyPhrasesResult _
instance showListOfDetectKeyPhrasesResult :: Show ListOfDetectKeyPhrasesResult where
  show = genericShow
instance decodeListOfDetectKeyPhrasesResult :: Decode ListOfDetectKeyPhrasesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfDetectKeyPhrasesResult :: Encode ListOfDetectKeyPhrasesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfDetectSentimentResult = ListOfDetectSentimentResult (Array BatchDetectSentimentItemResult)
derive instance newtypeListOfDetectSentimentResult :: Newtype ListOfDetectSentimentResult _
derive instance repGenericListOfDetectSentimentResult :: Generic ListOfDetectSentimentResult _
instance showListOfDetectSentimentResult :: Show ListOfDetectSentimentResult where
  show = genericShow
instance decodeListOfDetectSentimentResult :: Decode ListOfDetectSentimentResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfDetectSentimentResult :: Encode ListOfDetectSentimentResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfDominantLanguages = ListOfDominantLanguages (Array DominantLanguage)
derive instance newtypeListOfDominantLanguages :: Newtype ListOfDominantLanguages _
derive instance repGenericListOfDominantLanguages :: Generic ListOfDominantLanguages _
instance showListOfDominantLanguages :: Show ListOfDominantLanguages where
  show = genericShow
instance decodeListOfDominantLanguages :: Decode ListOfDominantLanguages where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfDominantLanguages :: Encode ListOfDominantLanguages where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfEntities = ListOfEntities (Array Entity)
derive instance newtypeListOfEntities :: Newtype ListOfEntities _
derive instance repGenericListOfEntities :: Generic ListOfEntities _
instance showListOfEntities :: Show ListOfEntities where
  show = genericShow
instance decodeListOfEntities :: Decode ListOfEntities where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfEntities :: Encode ListOfEntities where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfKeyPhrases = ListOfKeyPhrases (Array KeyPhrase)
derive instance newtypeListOfKeyPhrases :: Newtype ListOfKeyPhrases _
derive instance repGenericListOfKeyPhrases :: Generic ListOfKeyPhrases _
instance showListOfKeyPhrases :: Show ListOfKeyPhrases where
  show = genericShow
instance decodeListOfKeyPhrases :: Decode ListOfKeyPhrases where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfKeyPhrases :: Encode ListOfKeyPhrases where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListTopicsDetectionJobsRequest = ListTopicsDetectionJobsRequest 
  { "Filter" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobFilter)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsInteger)
  }
derive instance newtypeListTopicsDetectionJobsRequest :: Newtype ListTopicsDetectionJobsRequest _
derive instance repGenericListTopicsDetectionJobsRequest :: Generic ListTopicsDetectionJobsRequest _
instance showListTopicsDetectionJobsRequest :: Show ListTopicsDetectionJobsRequest where
  show = genericShow
instance decodeListTopicsDetectionJobsRequest :: Decode ListTopicsDetectionJobsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTopicsDetectionJobsRequest :: Encode ListTopicsDetectionJobsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTopicsDetectionJobsRequest from required parameters
newListTopicsDetectionJobsRequest :: ListTopicsDetectionJobsRequest
newListTopicsDetectionJobsRequest  = ListTopicsDetectionJobsRequest { "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListTopicsDetectionJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicsDetectionJobsRequest' :: ( { "Filter" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobFilter) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsInteger) } -> {"Filter" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobFilter) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResultsInteger) } ) -> ListTopicsDetectionJobsRequest
newListTopicsDetectionJobsRequest'  customize = (ListTopicsDetectionJobsRequest <<< customize) { "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListTopicsDetectionJobsResponse = ListTopicsDetectionJobsResponse 
  { "TopicsDetectionJobPropertiesList" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobPropertiesList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListTopicsDetectionJobsResponse :: Newtype ListTopicsDetectionJobsResponse _
derive instance repGenericListTopicsDetectionJobsResponse :: Generic ListTopicsDetectionJobsResponse _
instance showListTopicsDetectionJobsResponse :: Show ListTopicsDetectionJobsResponse where
  show = genericShow
instance decodeListTopicsDetectionJobsResponse :: Decode ListTopicsDetectionJobsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTopicsDetectionJobsResponse :: Encode ListTopicsDetectionJobsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTopicsDetectionJobsResponse from required parameters
newListTopicsDetectionJobsResponse :: ListTopicsDetectionJobsResponse
newListTopicsDetectionJobsResponse  = ListTopicsDetectionJobsResponse { "NextToken": (NullOrUndefined Nothing), "TopicsDetectionJobPropertiesList": (NullOrUndefined Nothing) }

-- | Constructs ListTopicsDetectionJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicsDetectionJobsResponse' :: ( { "TopicsDetectionJobPropertiesList" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobPropertiesList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"TopicsDetectionJobPropertiesList" :: NullOrUndefined.NullOrUndefined (TopicsDetectionJobPropertiesList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListTopicsDetectionJobsResponse
newListTopicsDetectionJobsResponse'  customize = (ListTopicsDetectionJobsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "TopicsDetectionJobPropertiesList": (NullOrUndefined Nothing) }



newtype MaxResultsInteger = MaxResultsInteger Int
derive instance newtypeMaxResultsInteger :: Newtype MaxResultsInteger _
derive instance repGenericMaxResultsInteger :: Generic MaxResultsInteger _
instance showMaxResultsInteger :: Show MaxResultsInteger where
  show = genericShow
instance decodeMaxResultsInteger :: Decode MaxResultsInteger where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResultsInteger :: Encode MaxResultsInteger where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NumberOfTopicsInteger = NumberOfTopicsInteger Int
derive instance newtypeNumberOfTopicsInteger :: Newtype NumberOfTopicsInteger _
derive instance repGenericNumberOfTopicsInteger :: Generic NumberOfTopicsInteger _
instance showNumberOfTopicsInteger :: Show NumberOfTopicsInteger where
  show = genericShow
instance decodeNumberOfTopicsInteger :: Decode NumberOfTopicsInteger where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNumberOfTopicsInteger :: Encode NumberOfTopicsInteger where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Provides configuration parameters for the output of topic detection jobs.</p> <p/>
newtype OutputDataConfig = OutputDataConfig 
  { "S3Uri" :: (S3Uri)
  }
derive instance newtypeOutputDataConfig :: Newtype OutputDataConfig _
derive instance repGenericOutputDataConfig :: Generic OutputDataConfig _
instance showOutputDataConfig :: Show OutputDataConfig where
  show = genericShow
instance decodeOutputDataConfig :: Decode OutputDataConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOutputDataConfig :: Encode OutputDataConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showS3Uri :: Show S3Uri where
  show = genericShow
instance decodeS3Uri :: Decode S3Uri where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeS3Uri :: Encode S3Uri where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the level of confidence that Amazon Comprehend has in the accuracy of its detection of sentiments.</p>
newtype SentimentScore = SentimentScore 
  { "Positive" :: NullOrUndefined.NullOrUndefined (Number)
  , "Negative" :: NullOrUndefined.NullOrUndefined (Number)
  , "Neutral" :: NullOrUndefined.NullOrUndefined (Number)
  , "Mixed" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeSentimentScore :: Newtype SentimentScore _
derive instance repGenericSentimentScore :: Generic SentimentScore _
instance showSentimentScore :: Show SentimentScore where
  show = genericShow
instance decodeSentimentScore :: Decode SentimentScore where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSentimentScore :: Encode SentimentScore where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SentimentScore from required parameters
newSentimentScore :: SentimentScore
newSentimentScore  = SentimentScore { "Mixed": (NullOrUndefined Nothing), "Negative": (NullOrUndefined Nothing), "Neutral": (NullOrUndefined Nothing), "Positive": (NullOrUndefined Nothing) }

-- | Constructs SentimentScore's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSentimentScore' :: ( { "Positive" :: NullOrUndefined.NullOrUndefined (Number) , "Negative" :: NullOrUndefined.NullOrUndefined (Number) , "Neutral" :: NullOrUndefined.NullOrUndefined (Number) , "Mixed" :: NullOrUndefined.NullOrUndefined (Number) } -> {"Positive" :: NullOrUndefined.NullOrUndefined (Number) , "Negative" :: NullOrUndefined.NullOrUndefined (Number) , "Neutral" :: NullOrUndefined.NullOrUndefined (Number) , "Mixed" :: NullOrUndefined.NullOrUndefined (Number) } ) -> SentimentScore
newSentimentScore'  customize = (SentimentScore <<< customize) { "Mixed": (NullOrUndefined Nothing), "Negative": (NullOrUndefined Nothing), "Neutral": (NullOrUndefined Nothing), "Positive": (NullOrUndefined Nothing) }



newtype SentimentType = SentimentType String
derive instance newtypeSentimentType :: Newtype SentimentType _
derive instance repGenericSentimentType :: Generic SentimentType _
instance showSentimentType :: Show SentimentType where
  show = genericShow
instance decodeSentimentType :: Decode SentimentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSentimentType :: Encode SentimentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StartTopicsDetectionJobRequest = StartTopicsDetectionJobRequest 
  { "InputDataConfig" :: (InputDataConfig)
  , "OutputDataConfig" :: (OutputDataConfig)
  , "DataAccessRoleArn" :: (IamRoleArn)
  , "JobName" :: NullOrUndefined.NullOrUndefined (JobName)
  , "NumberOfTopics" :: NullOrUndefined.NullOrUndefined (NumberOfTopicsInteger)
  , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (ClientRequestTokenString)
  }
derive instance newtypeStartTopicsDetectionJobRequest :: Newtype StartTopicsDetectionJobRequest _
derive instance repGenericStartTopicsDetectionJobRequest :: Generic StartTopicsDetectionJobRequest _
instance showStartTopicsDetectionJobRequest :: Show StartTopicsDetectionJobRequest where
  show = genericShow
instance decodeStartTopicsDetectionJobRequest :: Decode StartTopicsDetectionJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartTopicsDetectionJobRequest :: Encode StartTopicsDetectionJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartTopicsDetectionJobRequest from required parameters
newStartTopicsDetectionJobRequest :: IamRoleArn -> InputDataConfig -> OutputDataConfig -> StartTopicsDetectionJobRequest
newStartTopicsDetectionJobRequest _DataAccessRoleArn _InputDataConfig _OutputDataConfig = StartTopicsDetectionJobRequest { "DataAccessRoleArn": _DataAccessRoleArn, "InputDataConfig": _InputDataConfig, "OutputDataConfig": _OutputDataConfig, "ClientRequestToken": (NullOrUndefined Nothing), "JobName": (NullOrUndefined Nothing), "NumberOfTopics": (NullOrUndefined Nothing) }

-- | Constructs StartTopicsDetectionJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTopicsDetectionJobRequest' :: IamRoleArn -> InputDataConfig -> OutputDataConfig -> ( { "InputDataConfig" :: (InputDataConfig) , "OutputDataConfig" :: (OutputDataConfig) , "DataAccessRoleArn" :: (IamRoleArn) , "JobName" :: NullOrUndefined.NullOrUndefined (JobName) , "NumberOfTopics" :: NullOrUndefined.NullOrUndefined (NumberOfTopicsInteger) , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (ClientRequestTokenString) } -> {"InputDataConfig" :: (InputDataConfig) , "OutputDataConfig" :: (OutputDataConfig) , "DataAccessRoleArn" :: (IamRoleArn) , "JobName" :: NullOrUndefined.NullOrUndefined (JobName) , "NumberOfTopics" :: NullOrUndefined.NullOrUndefined (NumberOfTopicsInteger) , "ClientRequestToken" :: NullOrUndefined.NullOrUndefined (ClientRequestTokenString) } ) -> StartTopicsDetectionJobRequest
newStartTopicsDetectionJobRequest' _DataAccessRoleArn _InputDataConfig _OutputDataConfig customize = (StartTopicsDetectionJobRequest <<< customize) { "DataAccessRoleArn": _DataAccessRoleArn, "InputDataConfig": _InputDataConfig, "OutputDataConfig": _OutputDataConfig, "ClientRequestToken": (NullOrUndefined Nothing), "JobName": (NullOrUndefined Nothing), "NumberOfTopics": (NullOrUndefined Nothing) }



newtype StartTopicsDetectionJobResponse = StartTopicsDetectionJobResponse 
  { "JobId" :: NullOrUndefined.NullOrUndefined (JobId)
  , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus)
  }
derive instance newtypeStartTopicsDetectionJobResponse :: Newtype StartTopicsDetectionJobResponse _
derive instance repGenericStartTopicsDetectionJobResponse :: Generic StartTopicsDetectionJobResponse _
instance showStartTopicsDetectionJobResponse :: Show StartTopicsDetectionJobResponse where
  show = genericShow
instance decodeStartTopicsDetectionJobResponse :: Decode StartTopicsDetectionJobResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartTopicsDetectionJobResponse :: Encode StartTopicsDetectionJobResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartTopicsDetectionJobResponse from required parameters
newStartTopicsDetectionJobResponse :: StartTopicsDetectionJobResponse
newStartTopicsDetectionJobResponse  = StartTopicsDetectionJobResponse { "JobId": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing) }

-- | Constructs StartTopicsDetectionJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTopicsDetectionJobResponse' :: ( { "JobId" :: NullOrUndefined.NullOrUndefined (JobId) , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus) } -> {"JobId" :: NullOrUndefined.NullOrUndefined (JobId) , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus) } ) -> StartTopicsDetectionJobResponse
newStartTopicsDetectionJobResponse'  customize = (StartTopicsDetectionJobResponse <<< customize) { "JobId": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing) }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where
  show = genericShow
instance decodeStringList :: Decode StringList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringList :: Encode StringList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The size of the input text exceeds the limit. Use a smaller document.</p>
newtype TextSizeLimitExceededException = TextSizeLimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeTextSizeLimitExceededException :: Newtype TextSizeLimitExceededException _
derive instance repGenericTextSizeLimitExceededException :: Generic TextSizeLimitExceededException _
instance showTextSizeLimitExceededException :: Show TextSizeLimitExceededException where
  show = genericShow
instance decodeTextSizeLimitExceededException :: Decode TextSizeLimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTextSizeLimitExceededException :: Encode TextSizeLimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TextSizeLimitExceededException from required parameters
newTextSizeLimitExceededException :: TextSizeLimitExceededException
newTextSizeLimitExceededException  = TextSizeLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs TextSizeLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTextSizeLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> TextSizeLimitExceededException
newTextSizeLimitExceededException'  customize = (TextSizeLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The number of requests exceeds the limit. Resubmit your request later.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where
  show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": (NullOrUndefined Nothing) }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Provides information for filtering topic detection jobs. For more information, see .</p>
newtype TopicsDetectionJobFilter = TopicsDetectionJobFilter 
  { "JobName" :: NullOrUndefined.NullOrUndefined (JobName)
  , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus)
  , "SubmitTimeBefore" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "SubmitTimeAfter" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeTopicsDetectionJobFilter :: Newtype TopicsDetectionJobFilter _
derive instance repGenericTopicsDetectionJobFilter :: Generic TopicsDetectionJobFilter _
instance showTopicsDetectionJobFilter :: Show TopicsDetectionJobFilter where
  show = genericShow
instance decodeTopicsDetectionJobFilter :: Decode TopicsDetectionJobFilter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopicsDetectionJobFilter :: Encode TopicsDetectionJobFilter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TopicsDetectionJobFilter from required parameters
newTopicsDetectionJobFilter :: TopicsDetectionJobFilter
newTopicsDetectionJobFilter  = TopicsDetectionJobFilter { "JobName": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "SubmitTimeAfter": (NullOrUndefined Nothing), "SubmitTimeBefore": (NullOrUndefined Nothing) }

-- | Constructs TopicsDetectionJobFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicsDetectionJobFilter' :: ( { "JobName" :: NullOrUndefined.NullOrUndefined (JobName) , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus) , "SubmitTimeBefore" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "SubmitTimeAfter" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"JobName" :: NullOrUndefined.NullOrUndefined (JobName) , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus) , "SubmitTimeBefore" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "SubmitTimeAfter" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> TopicsDetectionJobFilter
newTopicsDetectionJobFilter'  customize = (TopicsDetectionJobFilter <<< customize) { "JobName": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "SubmitTimeAfter": (NullOrUndefined Nothing), "SubmitTimeBefore": (NullOrUndefined Nothing) }



-- | <p>Provides information about a topic detection job.</p>
newtype TopicsDetectionJobProperties = TopicsDetectionJobProperties 
  { "JobId" :: NullOrUndefined.NullOrUndefined (JobId)
  , "JobName" :: NullOrUndefined.NullOrUndefined (JobName)
  , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus)
  , "Message" :: NullOrUndefined.NullOrUndefined (AnyLengthString)
  , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "EndTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "InputDataConfig" :: NullOrUndefined.NullOrUndefined (InputDataConfig)
  , "OutputDataConfig" :: NullOrUndefined.NullOrUndefined (OutputDataConfig)
  , "NumberOfTopics" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeTopicsDetectionJobProperties :: Newtype TopicsDetectionJobProperties _
derive instance repGenericTopicsDetectionJobProperties :: Generic TopicsDetectionJobProperties _
instance showTopicsDetectionJobProperties :: Show TopicsDetectionJobProperties where
  show = genericShow
instance decodeTopicsDetectionJobProperties :: Decode TopicsDetectionJobProperties where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopicsDetectionJobProperties :: Encode TopicsDetectionJobProperties where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TopicsDetectionJobProperties from required parameters
newTopicsDetectionJobProperties :: TopicsDetectionJobProperties
newTopicsDetectionJobProperties  = TopicsDetectionJobProperties { "EndTime": (NullOrUndefined Nothing), "InputDataConfig": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobName": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "NumberOfTopics": (NullOrUndefined Nothing), "OutputDataConfig": (NullOrUndefined Nothing), "SubmitTime": (NullOrUndefined Nothing) }

-- | Constructs TopicsDetectionJobProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicsDetectionJobProperties' :: ( { "JobId" :: NullOrUndefined.NullOrUndefined (JobId) , "JobName" :: NullOrUndefined.NullOrUndefined (JobName) , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus) , "Message" :: NullOrUndefined.NullOrUndefined (AnyLengthString) , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "InputDataConfig" :: NullOrUndefined.NullOrUndefined (InputDataConfig) , "OutputDataConfig" :: NullOrUndefined.NullOrUndefined (OutputDataConfig) , "NumberOfTopics" :: NullOrUndefined.NullOrUndefined (Int) } -> {"JobId" :: NullOrUndefined.NullOrUndefined (JobId) , "JobName" :: NullOrUndefined.NullOrUndefined (JobName) , "JobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus) , "Message" :: NullOrUndefined.NullOrUndefined (AnyLengthString) , "SubmitTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "InputDataConfig" :: NullOrUndefined.NullOrUndefined (InputDataConfig) , "OutputDataConfig" :: NullOrUndefined.NullOrUndefined (OutputDataConfig) , "NumberOfTopics" :: NullOrUndefined.NullOrUndefined (Int) } ) -> TopicsDetectionJobProperties
newTopicsDetectionJobProperties'  customize = (TopicsDetectionJobProperties <<< customize) { "EndTime": (NullOrUndefined Nothing), "InputDataConfig": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobName": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "NumberOfTopics": (NullOrUndefined Nothing), "OutputDataConfig": (NullOrUndefined Nothing), "SubmitTime": (NullOrUndefined Nothing) }



newtype TopicsDetectionJobPropertiesList = TopicsDetectionJobPropertiesList (Array TopicsDetectionJobProperties)
derive instance newtypeTopicsDetectionJobPropertiesList :: Newtype TopicsDetectionJobPropertiesList _
derive instance repGenericTopicsDetectionJobPropertiesList :: Generic TopicsDetectionJobPropertiesList _
instance showTopicsDetectionJobPropertiesList :: Show TopicsDetectionJobPropertiesList where
  show = genericShow
instance decodeTopicsDetectionJobPropertiesList :: Decode TopicsDetectionJobPropertiesList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopicsDetectionJobPropertiesList :: Encode TopicsDetectionJobPropertiesList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Amazon Comprehend can't process the language of the input text. For all APIs except <code>DetectDominantLanguage</code>, Amazon Comprehend accepts only English or Spanish text. For the <code>DetectDominantLanguage</code> API, Amazon Comprehend detects 100 languages. For a list of languages, see <a>how-languages</a> </p>
newtype UnsupportedLanguageException = UnsupportedLanguageException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUnsupportedLanguageException :: Newtype UnsupportedLanguageException _
derive instance repGenericUnsupportedLanguageException :: Generic UnsupportedLanguageException _
instance showUnsupportedLanguageException :: Show UnsupportedLanguageException where
  show = genericShow
instance decodeUnsupportedLanguageException :: Decode UnsupportedLanguageException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnsupportedLanguageException :: Encode UnsupportedLanguageException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnsupportedLanguageException from required parameters
newUnsupportedLanguageException :: UnsupportedLanguageException
newUnsupportedLanguageException  = UnsupportedLanguageException { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedLanguageException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedLanguageException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> UnsupportedLanguageException
newUnsupportedLanguageException'  customize = (UnsupportedLanguageException <<< customize) { "Message": (NullOrUndefined Nothing) }


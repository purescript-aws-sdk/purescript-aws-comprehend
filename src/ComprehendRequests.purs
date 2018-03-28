
module AWS.Comprehend.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Comprehend as Comprehend
import AWS.Comprehend.Types as ComprehendTypes


-- | <p>Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see <a href="http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>. </p>
batchDetectDominantLanguage :: forall eff. Comprehend.Service -> ComprehendTypes.BatchDetectDominantLanguageRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.BatchDetectDominantLanguageResponse
batchDetectDominantLanguage (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchDetectDominantLanguage"


-- | <p>Inspects the text of a batch of documents and returns information about them. For more information about entities, see <a>how-entities</a> </p>
batchDetectEntities :: forall eff. Comprehend.Service -> ComprehendTypes.BatchDetectEntitiesRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.BatchDetectEntitiesResponse
batchDetectEntities (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchDetectEntities"


-- | <p>Detects the key noun phrases found in a batch of documents.</p>
batchDetectKeyPhrases :: forall eff. Comprehend.Service -> ComprehendTypes.BatchDetectKeyPhrasesRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.BatchDetectKeyPhrasesResponse
batchDetectKeyPhrases (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchDetectKeyPhrases"


-- | <p>Inspects a batch of documents and returns an inference of the prevailing sentiment, <code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>, in each one.</p>
batchDetectSentiment :: forall eff. Comprehend.Service -> ComprehendTypes.BatchDetectSentimentRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.BatchDetectSentimentResponse
batchDetectSentiment (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchDetectSentiment"


-- | <p>Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.</p>
describeTopicsDetectionJob :: forall eff. Comprehend.Service -> ComprehendTypes.DescribeTopicsDetectionJobRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.DescribeTopicsDetectionJobResponse
describeTopicsDetectionJob (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTopicsDetectionJob"


-- | <p>Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see <a href="http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>. </p>
detectDominantLanguage :: forall eff. Comprehend.Service -> ComprehendTypes.DetectDominantLanguageRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.DetectDominantLanguageResponse
detectDominantLanguage (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detectDominantLanguage"


-- | <p>Inspects text for entities, and returns information about them. For more information, about entities, see <a>how-entities</a>. </p>
detectEntities :: forall eff. Comprehend.Service -> ComprehendTypes.DetectEntitiesRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.DetectEntitiesResponse
detectEntities (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detectEntities"


-- | <p>Detects the key noun phrases found in the text. </p>
detectKeyPhrases :: forall eff. Comprehend.Service -> ComprehendTypes.DetectKeyPhrasesRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.DetectKeyPhrasesResponse
detectKeyPhrases (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detectKeyPhrases"


-- | <p>Inspects text and returns an inference of the prevailing sentiment (<code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>). </p>
detectSentiment :: forall eff. Comprehend.Service -> ComprehendTypes.DetectSentimentRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.DetectSentimentResponse
detectSentiment (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detectSentiment"


-- | <p>Gets a list of the topic detection jobs that you have submitted.</p>
listTopicsDetectionJobs :: forall eff. Comprehend.Service -> ComprehendTypes.ListTopicsDetectionJobsRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.ListTopicsDetectionJobsResponse
listTopicsDetectionJobs (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTopicsDetectionJobs"


-- | <p>Starts an asynchronous topic detection job. Use the <code>DescribeTopicDetectionJob</code> operation to track the status of a job.</p>
startTopicsDetectionJob :: forall eff. Comprehend.Service -> ComprehendTypes.StartTopicsDetectionJobRequest -> Aff (exception :: EXCEPTION | eff) ComprehendTypes.StartTopicsDetectionJobResponse
startTopicsDetectionJob (Comprehend.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startTopicsDetectionJob"

## Module AWS.Comprehend.Requests

#### `batchDetectDominantLanguage`

``` purescript
batchDetectDominantLanguage :: forall eff. Service -> BatchDetectDominantLanguageRequest -> Aff (exception :: EXCEPTION | eff) BatchDetectDominantLanguageResponse
```

<p>Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see <a href="http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>. </p>

#### `batchDetectEntities`

``` purescript
batchDetectEntities :: forall eff. Service -> BatchDetectEntitiesRequest -> Aff (exception :: EXCEPTION | eff) BatchDetectEntitiesResponse
```

<p>Inspects the text of a batch of documents and returns information about them. For more information about entities, see <a>how-entities</a> </p>

#### `batchDetectKeyPhrases`

``` purescript
batchDetectKeyPhrases :: forall eff. Service -> BatchDetectKeyPhrasesRequest -> Aff (exception :: EXCEPTION | eff) BatchDetectKeyPhrasesResponse
```

<p>Detects the key noun phrases found in a batch of documents.</p>

#### `batchDetectSentiment`

``` purescript
batchDetectSentiment :: forall eff. Service -> BatchDetectSentimentRequest -> Aff (exception :: EXCEPTION | eff) BatchDetectSentimentResponse
```

<p>Inspects a batch of documents and returns an inference of the prevailing sentiment, <code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>, in each one.</p>

#### `describeTopicsDetectionJob`

``` purescript
describeTopicsDetectionJob :: forall eff. Service -> DescribeTopicsDetectionJobRequest -> Aff (exception :: EXCEPTION | eff) DescribeTopicsDetectionJobResponse
```

<p>Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.</p>

#### `detectDominantLanguage`

``` purescript
detectDominantLanguage :: forall eff. Service -> DetectDominantLanguageRequest -> Aff (exception :: EXCEPTION | eff) DetectDominantLanguageResponse
```

<p>Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see <a href="http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>. </p>

#### `detectEntities`

``` purescript
detectEntities :: forall eff. Service -> DetectEntitiesRequest -> Aff (exception :: EXCEPTION | eff) DetectEntitiesResponse
```

<p>Inspects text for entities, and returns information about them. For more information, about entities, see <a>how-entities</a>. </p>

#### `detectKeyPhrases`

``` purescript
detectKeyPhrases :: forall eff. Service -> DetectKeyPhrasesRequest -> Aff (exception :: EXCEPTION | eff) DetectKeyPhrasesResponse
```

<p>Detects the key noun phrases found in the text. </p>

#### `detectSentiment`

``` purescript
detectSentiment :: forall eff. Service -> DetectSentimentRequest -> Aff (exception :: EXCEPTION | eff) DetectSentimentResponse
```

<p>Inspects text and returns an inference of the prevailing sentiment (<code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>). </p>

#### `listTopicsDetectionJobs`

``` purescript
listTopicsDetectionJobs :: forall eff. Service -> ListTopicsDetectionJobsRequest -> Aff (exception :: EXCEPTION | eff) ListTopicsDetectionJobsResponse
```

<p>Gets a list of the topic detection jobs that you have submitted.</p>

#### `startTopicsDetectionJob`

``` purescript
startTopicsDetectionJob :: forall eff. Service -> StartTopicsDetectionJobRequest -> Aff (exception :: EXCEPTION | eff) StartTopicsDetectionJobResponse
```

<p>Starts an asynchronous topic detection job. Use the <code>DescribeTopicDetectionJob</code> operation to track the status of a job.</p>



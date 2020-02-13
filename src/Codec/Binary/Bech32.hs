-- |
-- Copyright: © 2017 Marko Bencun, 2019-2020 IOHK
-- License: Apache-2.0
--
-- Implementation of the [Bech32]
-- (https://github.com/bitcoin/bips/blob/master/bip-0173.mediawiki)
-- address format.
--
-- Based on an [original implementation](https://github.com/sipa/bech32/tree/bdc264f84014c234e908d72026b7b780122be11f/ref/haskell)
-- by [Marko Bencun](https://github.com/sipa).

module Codec.Binary.Bech32
    (
    -- * Basic Usage

    -- ** Encoding
      encode
    -- ** Decoding
    , decode

    -- * Error Handling

    -- ** Encoding
    , EncodingError (..)
    -- ** Decoding
    , DecodingError (..)

    -- * Types

    -- ** Data Payloads
    , DataPart
    -- *** Conversion to and from 'ByteString'
    , dataPartFromBytes
    , dataPartToBytes
    -- *** Conversion to and from 'Text'
    , dataPartFromText
    , dataPartToText
    -- ** Human-Readable Prefixes
    , HumanReadablePart
    -- *** Conversion to and from 'Text'
    , humanReadablePartFromText
    , humanReadablePartToText
    -- *** Error Handling
    , HumanReadablePartError (..)

    -- * Advanced Usage

    -- ** Encoding and Decoding with Greater Leniency
    , encodeLenient
    , decodeLenient

    -- * Fundamental Constants

    -- ** Data Payloads
    , dataCharList
    -- ** Human-Readable Prefixes
    , humanReadablePartMinLength
    , humanReadablePartMaxLength
    , humanReadableCharMinBound
    , humanReadableCharMaxBound
    -- ** Encoded Strings
    , encodedStringMaxLength
    , encodedStringMinLength
    , separatorChar

    ) where

import Codec.Binary.Bech32.Internal

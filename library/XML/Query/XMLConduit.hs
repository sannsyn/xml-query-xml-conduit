module XML.Query.XMLConduit where

import BasePrelude
import Data.Text (Text)
import qualified XML.Query.XMLTypes
import qualified XML.Query
import qualified Text.XML
import qualified Data.XML.Types


-- |
-- An interpreter for the top-level tag of a \"xml-conduit\" document.
{-# INLINE document #-}
document :: XML.Query.Tag a -> Text.XML.Document -> Either (Maybe Text) a
document query document =
  XML.Query.XMLTypes.tag query $ Data.XML.Types.documentRoot $ Text.XML.toXMLDocument $ document


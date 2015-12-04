module XML.Query.XMLConduit where

import BasePrelude
import Data.Text (Text)
import qualified XML.Query.XMLTypes
import qualified XML.Query
import qualified Text.XML
import qualified Data.XML.Types


-- |
-- An interpreter for the top-level element of \"xml-conduit\" documents.
{-# INLINE document #-}
document :: XML.Query.Element a -> Text.XML.Document -> Either (Maybe Text) a
document query document =
  XML.Query.XMLTypes.element query $ Data.XML.Types.documentRoot $ Text.XML.toXMLDocument $ document


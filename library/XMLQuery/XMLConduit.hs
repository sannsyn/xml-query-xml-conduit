module XMLQuery.XMLConduit where

import BasePrelude
import Data.Text (Text)
import qualified XMLQuery.XMLTypes
import qualified XMLQuery
import qualified Text.XML
import qualified Data.XML.Types


-- |
-- An interpreter for the top-level element of \"xml-conduit\" documents.
{-# INLINE document #-}
document :: XMLQuery.Element a -> Text.XML.Document -> Either (Maybe Text) a
document query document =
  XMLQuery.XMLTypes.element query $ Data.XML.Types.documentRoot $ Text.XML.toXMLDocument $ document


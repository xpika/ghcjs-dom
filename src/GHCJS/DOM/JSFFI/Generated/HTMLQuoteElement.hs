{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLQuoteElement
       (js_setCite, setCite, js_getCite, getCite, HTMLQuoteElement,
        castToHTMLQuoteElement, gTypeHTMLQuoteElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"cite\"] = $2;" js_setCite ::
        HTMLQuoteElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement.cite Mozilla HTMLQuoteElement.cite documentation> 
setCite ::
        (MonadIO m, ToJSString val) => HTMLQuoteElement -> val -> m ()
setCite self val = liftIO (js_setCite (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cite\"]" js_getCite ::
        HTMLQuoteElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement.cite Mozilla HTMLQuoteElement.cite documentation> 
getCite ::
        (MonadIO m, FromJSString result) => HTMLQuoteElement -> m result
getCite self = liftIO (fromJSString <$> (js_getCite (self)))
{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGRenderingIntent
       (cRENDERING_INTENT_UNKNOWN, cRENDERING_INTENT_AUTO,
        cRENDERING_INTENT_PERCEPTUAL,
        cRENDERING_INTENT_RELATIVE_COLORIMETRIC,
        cRENDERING_INTENT_SATURATION,
        cRENDERING_INTENT_ABSOLUTE_COLORIMETRIC, SVGRenderingIntent,
        IsSVGRenderingIntent, castToSVGRenderingIntent,
        gTypeSVGRenderingIntent, toSVGRenderingIntent)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

cRENDERING_INTENT_UNKNOWN = 0
cRENDERING_INTENT_AUTO = 1
cRENDERING_INTENT_PERCEPTUAL = 2
cRENDERING_INTENT_RELATIVE_COLORIMETRIC = 3
cRENDERING_INTENT_SATURATION = 4
cRENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 5
#else
module GHCJS.DOM.SVGRenderingIntent (
  ) where
#endif
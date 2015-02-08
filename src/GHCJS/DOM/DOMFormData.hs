{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMFormData
       (ghcjs_dom_dom_form_data_new, domFormDataNew,
        ghcjs_dom_dom_form_data_append, domFormDataAppend, DOMFormData,
        IsDOMFormData, castToDOMFormData, gTypeDOMFormData, toDOMFormData)
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

 
foreign import javascript unsafe "new window[\"FormData\"]($1)"
        ghcjs_dom_dom_form_data_new ::
        JSRef HTMLFormElement -> IO (JSRef DOMFormData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation> 
domFormDataNew ::
               (MonadIO m, IsHTMLFormElement form) => Maybe form -> m DOMFormData
domFormDataNew form
  = liftIO
      (ghcjs_dom_dom_form_data_new
         (maybe jsNull (unHTMLFormElement . toHTMLFormElement) form)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"append\"]($2, $3, $4)"
        ghcjs_dom_dom_form_data_append ::
        JSRef DOMFormData -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData.append Mozilla FormData.append documentation> 
domFormDataAppend ::
                  (MonadIO m, IsDOMFormData self, ToJSString name, ToJSString value,
                   ToJSString filename) =>
                    self -> name -> value -> filename -> m ()
domFormDataAppend self name value filename
  = liftIO
      (ghcjs_dom_dom_form_data_append
         (unDOMFormData (toDOMFormData self))
         (toJSString name)
         (toJSString value)
         (toJSString filename))
#else
module GHCJS.DOM.DOMFormData (
  ) where
#endif
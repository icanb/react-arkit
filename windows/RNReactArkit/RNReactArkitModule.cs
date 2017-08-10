using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNReactArkit
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNReactArkitModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNReactArkitModule"/>.
        /// </summary>
        internal RNReactArkitModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNReactArkit";
            }
        }
    }
}

package com.vidiun.delegates.metadataBatch
{
	import flash.utils.getDefinitionByName;
	import com.vidiun.config.VidiunConfig;
	import com.vidiun.net.VidiunCall;
	import com.vidiun.delegates.WebDelegateBase;
	public class MetadataBatchCheckFileExistsDelegate extends WebDelegateBase
	{
		public function MetadataBatchCheckFileExistsDelegate(call:VidiunCall, config:VidiunConfig)
		{
			super(call, config);
		}

	}
}

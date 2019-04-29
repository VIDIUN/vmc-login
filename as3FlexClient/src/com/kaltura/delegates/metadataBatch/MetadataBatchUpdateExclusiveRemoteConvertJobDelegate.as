package com.vidiun.delegates.metadataBatch
{
	import flash.utils.getDefinitionByName;
	import com.vidiun.config.VidiunConfig;
	import com.vidiun.net.VidiunCall;
	import com.vidiun.delegates.WebDelegateBase;
	public class MetadataBatchUpdateExclusiveRemoteConvertJobDelegate extends WebDelegateBase
	{
		public function MetadataBatchUpdateExclusiveRemoteConvertJobDelegate(call:VidiunCall, config:VidiunConfig)
		{
			super(call, config);
		}

	}
}

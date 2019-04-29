package com.vidiun.delegates.metadataBatch
{
	import flash.utils.getDefinitionByName;
	import com.vidiun.config.VidiunConfig;
	import com.vidiun.net.VidiunCall;
	import com.vidiun.delegates.WebDelegateBase;
	public class MetadataBatchUpdateExclusiveConvertJobDelegate extends WebDelegateBase
	{
		public function MetadataBatchUpdateExclusiveConvertJobDelegate(call:VidiunCall, config:VidiunConfig)
		{
			super(call, config);
		}

	}
}

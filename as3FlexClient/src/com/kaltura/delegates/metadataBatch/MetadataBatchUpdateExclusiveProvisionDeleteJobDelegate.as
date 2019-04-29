package com.vidiun.delegates.metadataBatch
{
	import flash.utils.getDefinitionByName;
	import com.vidiun.config.VidiunConfig;
	import com.vidiun.net.VidiunCall;
	import com.vidiun.delegates.WebDelegateBase;
	public class MetadataBatchUpdateExclusiveProvisionDeleteJobDelegate extends WebDelegateBase
	{
		public function MetadataBatchUpdateExclusiveProvisionDeleteJobDelegate(call:VidiunCall, config:VidiunConfig)
		{
			super(call, config);
		}

	}
}

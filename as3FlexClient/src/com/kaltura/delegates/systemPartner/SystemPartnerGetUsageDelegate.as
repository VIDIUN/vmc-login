package com.vidiun.delegates.systemPartner
{
	import flash.utils.getDefinitionByName;
	import com.vidiun.config.VidiunConfig;
	import com.vidiun.net.VidiunCall;
	import com.vidiun.delegates.WebDelegateBase;
	public class SystemPartnerGetUsageDelegate extends WebDelegateBase
	{
		public function SystemPartnerGetUsageDelegate(call:VidiunCall, config:VidiunConfig)
		{
			super(call, config);
		}

	}
}

package com.vidiun.delegates.systemPartner
{
	import flash.utils.getDefinitionByName;
	import com.vidiun.config.VidiunConfig;
	import com.vidiun.net.VidiunCall;
	import com.vidiun.delegates.WebDelegateBase;
	public class SystemPartnerListDelegate extends WebDelegateBase
	{
		public function SystemPartnerListDelegate(call:VidiunCall, config:VidiunConfig)
		{
			super(call, config);
		}

	}
}

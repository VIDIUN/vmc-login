package com.vidiun.delegates.systemPartner
{
	import flash.utils.getDefinitionByName;
	import com.vidiun.config.VidiunConfig;
	import com.vidiun.net.VidiunCall;
	import com.vidiun.delegates.WebDelegateBase;
	public class SystemPartnerGetConfigurationDelegate extends WebDelegateBase
	{
		public function SystemPartnerGetConfigurationDelegate(call:VidiunCall, config:VidiunConfig)
		{
			super(call, config);
		}

	}
}

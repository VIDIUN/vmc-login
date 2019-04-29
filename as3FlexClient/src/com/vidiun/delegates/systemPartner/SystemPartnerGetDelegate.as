package com.vidiun.delegates.systemPartner
{
	import flash.utils.getDefinitionByName;
	import com.vidiun.config.VidiunConfig;
	import com.vidiun.net.VidiunCall;
	import com.vidiun.delegates.WebDelegateBase;
	public class SystemPartnerGetDelegate extends WebDelegateBase
	{
		public function SystemPartnerGetDelegate(call:VidiunCall, config:VidiunConfig)
		{
			super(call, config);
		}

	}
}

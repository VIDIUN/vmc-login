package com.vidiun.vo
{
	import com.vidiun.vo.VidiunConvartableJobData;

	[Bindable]
	public dynamic class VidiunRemoteConvertJobData extends VidiunConvartableJobData
	{
		public var srcFileUrl : String;

		public var destFileUrl : String;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('srcFileUrl');
			arr.push('destFileUrl');
			return arr;
		}
	}
}

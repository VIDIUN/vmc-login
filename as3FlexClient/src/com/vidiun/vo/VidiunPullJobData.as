package com.vidiun.vo
{
	import com.vidiun.vo.VidiunJobData;

	[Bindable]
	public dynamic class VidiunPullJobData extends VidiunJobData
	{
		public var srcFileUrl : String;

		public var destFileLocalPath : String;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('srcFileUrl');
			arr.push('destFileLocalPath');
			return arr;
		}
	}
}

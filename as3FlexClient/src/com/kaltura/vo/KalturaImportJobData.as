package com.vidiun.vo
{
	import com.vidiun.vo.VidiunJobData;

	[Bindable]
	public dynamic class VidiunImportJobData extends VidiunJobData
	{
		public var srcFileUrl : String;

		public var destFileLocalPath : String;

		public var flavorAssetId : String;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('srcFileUrl');
			arr.push('destFileLocalPath');
			arr.push('flavorAssetId');
			return arr;
		}
	}
}

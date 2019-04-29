package com.vidiun.vo
{
	import com.vidiun.vo.VidiunConvartableJobData;

	[Bindable]
	public dynamic class VidiunExtractMediaJobData extends VidiunConvartableJobData
	{
		public var flavorAssetId : String;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('flavorAssetId');
			return arr;
		}
	}
}

package com.vidiun.vo
{
	import com.vidiun.vo.VidiunJobData;

	[Bindable]
	public dynamic class VidiunBulkDownloadJobData extends VidiunJobData
	{
		public var entryIds : String;

		public var flavorParamsId : int = int.MIN_VALUE;

		public var puserId : String;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('entryIds');
			arr.push('flavorParamsId');
			arr.push('puserId');
			return arr;
		}
	}
}

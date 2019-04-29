package com.vidiun.vo
{
	import com.vidiun.vo.VidiunJobData;

	[Bindable]
	public dynamic class VidiunConvertProfileJobData extends VidiunJobData
	{
		public var inputFileSyncLocalPath : String;

		public var thumbHeight : int = int.MIN_VALUE;

		public var thumbBitrate : int = int.MIN_VALUE;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('inputFileSyncLocalPath');
			arr.push('thumbHeight');
			arr.push('thumbBitrate');
			return arr;
		}
	}
}

package com.vidiun.vo
{
	import com.vidiun.vo.BaseFlexVo;
	[Bindable]
	public dynamic class VidiunBatchGetExclusiveNotificationJobsResponse extends BaseFlexVo
	{
		public var notifications : Array = new Array();

		public var partners : Array = new Array();

public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			return arr;
		}
	}
}

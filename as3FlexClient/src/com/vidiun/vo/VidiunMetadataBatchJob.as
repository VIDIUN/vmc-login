package com.vidiun.vo
{
	import com.vidiun.vo.VidiunBatchJob;

	[Bindable]
	public dynamic class VidiunMetadataBatchJob extends VidiunBatchJob
	{
override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}
	}
}

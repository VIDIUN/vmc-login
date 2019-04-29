package com.vidiun.vo
{
	import com.vidiun.vo.VidiunStorageJobData;

	[Bindable]
	public dynamic class VidiunStorageDeleteJobData extends VidiunStorageJobData
	{
override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}
	}
}

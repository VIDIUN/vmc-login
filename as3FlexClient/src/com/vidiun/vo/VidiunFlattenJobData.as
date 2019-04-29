package com.vidiun.vo
{
	import com.vidiun.vo.VidiunJobData;

	[Bindable]
	public dynamic class VidiunFlattenJobData extends VidiunJobData
	{
override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}
	}
}

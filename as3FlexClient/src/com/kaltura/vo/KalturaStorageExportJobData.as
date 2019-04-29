package com.vidiun.vo
{
	import com.vidiun.vo.VidiunStorageJobData;

	[Bindable]
	public dynamic class VidiunStorageExportJobData extends VidiunStorageJobData
	{
		public var destFileSyncStoredPath : String;

		public var force : Boolean;

override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('destFileSyncStoredPath');
			arr.push('force');
			return arr;
		}
	}
}

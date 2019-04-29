package com.vidiun.vo
{
	import com.vidiun.vo.BaseFlexVo;
	[Bindable]
	public dynamic class VidiunSystemPartnerConfiguration extends BaseFlexVo
	{
		public var host : String;

		public var cdnHost : String;

		public var maxBulkSize : int = int.MIN_VALUE;

		public var partnerPackage : int = int.MIN_VALUE;

		public var liveStreamEnabled : Boolean;

		public var moderateContent : Boolean;

		public var rtmpUrl : String;

		public var storageDeleteFromVidiun : Boolean;

		public var storageServePriority : int = int.MIN_VALUE;

		public var vmcVersion : int = int.MIN_VALUE;

		public var enableAnalyticsTab : Boolean;

		public var enableSilverLight : Boolean;

public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = new Array();
			arr.push('host');
			arr.push('cdnHost');
			arr.push('maxBulkSize');
			arr.push('partnerPackage');
			arr.push('liveStreamEnabled');
			arr.push('moderateContent');
			arr.push('rtmpUrl');
			arr.push('storageDeleteFromVidiun');
			arr.push('storageServePriority');
			arr.push('vmcVersion');
			arr.push('enableAnalyticsTab');
			arr.push('enableSilverLight');
			return arr;
		}
	}
}

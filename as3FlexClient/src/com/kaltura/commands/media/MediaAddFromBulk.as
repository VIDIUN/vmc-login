package com.vidiun.commands.media
{
	import com.vidiun.vo.VidiunMediaEntry;
	import com.vidiun.delegates.media.MediaAddFromBulkDelegate;
	import com.vidiun.net.VidiunCall;

	public class MediaAddFromBulk extends VidiunCall
	{
		public var filterFields : String;
		public function MediaAddFromBulk( mediaEntry : VidiunMediaEntry,url : String,bulkUploadId : int,pluginDataArray : Array=null )
		{
			if(pluginDataArray== null)pluginDataArray= new Array();
			service= 'media';
			action= 'addFromBulk';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = vidiunObject2Arrays(mediaEntry,'mediaEntry');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'url' );
			valueArr.push( url );
			keyArr.push( 'bulkUploadId' );
			valueArr.push( bulkUploadId );
 			keyValArr = extractArray(pluginDataArray,'pluginDataArray');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new MediaAddFromBulkDelegate( this , config );
		}
	}
}

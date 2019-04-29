// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Vidiun Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2011  Vidiun Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
package com.vidiun.commands.uploadToken
{
	import flash.net.FileReference;
	import com.vidiun.net.VidiunFileCall;
	import com.vidiun.delegates.uploadToken.UploadTokenUploadDelegate;

	public class UploadTokenUpload extends VidiunFileCall
	{
		public var fileData:Object;

		/**
		 * @param uploadTokenId String
		 * @param fileData Object - FileReference or ByteArray
		 * @param resume Boolean
		 * @param finalChunk Boolean
		 * @param resumeAt Number
		 **/
		public function UploadTokenUpload( uploadTokenId : String,fileData : Object,resume : Boolean=false,finalChunk : Boolean=true,resumeAt : Number=-1 )
		{
			service= 'uploadtoken';
			action= 'upload';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push('uploadTokenId');
			valueArr.push(uploadTokenId);
			this.fileData = fileData;
			keyArr.push('resume');
			valueArr.push(resume);
			keyArr.push('finalChunk');
			valueArr.push(finalChunk);
			keyArr.push('resumeAt');
			valueArr.push(resumeAt);
			applySchema(keyArr, valueArr);
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields', filterFields);
			delegate = new UploadTokenUploadDelegate( this , config );
		}
	}
}

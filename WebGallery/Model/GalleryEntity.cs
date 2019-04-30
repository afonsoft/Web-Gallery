using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebGallery.Model
{
    public class GalleryEntity
    {
        public string Name { get; set; }
        public IEnumerable<PictureEntity> Images { get; set; }
    }
}
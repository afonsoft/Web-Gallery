using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using WebGallery.Model;

namespace WebGallery.Controller
{
    public class GalleryController
    {
        public IEnumerable<GalleryEntity> GetGalleries()
        {
            string pathGallery = Path.GetDirectoryName(Assembly.GetExecutingAssembly().GetName().CodeBase);

            if (pathGallery.IndexOf("file:\\", StringComparison.Ordinal) >= 0)
                pathGallery = pathGallery.Replace("file:\\", "");

            if (pathGallery.IndexOf("bin", StringComparison.Ordinal) >= 0)
                pathGallery = pathGallery.Replace("\\bin", "");

            pathGallery = Path.Combine(pathGallery, "Gallery");

            if (!Directory.Exists(pathGallery))
                Directory.CreateDirectory(pathGallery);

            return (from d in Directory.EnumerateDirectories(pathGallery)
                select new GalleryEntity
                {
                    Name = new DirectoryInfo(d).Name,
                    Images = (from i in Directory.EnumerateFiles(d)
                            select new PictureEntity
                            {
                                Image = "/Gallery/" + new DirectoryInfo(d).Name + "/" + new FileInfo(i).Name,
                                Name = new FileInfo(i).Name
                            }) 
                });
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _ass2mvc.Models
{
    public class EFRepository : IRepository
    {

        public Art GetArtByName(string name)
        {
            Art art = null;
            using (var db = new EntitiesConnection())
            {
                art = db.Arts.SingleOrDefault(x => x.ArtName.Contains(name));                
            }
            return art;
        }
    }
}
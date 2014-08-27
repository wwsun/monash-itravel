using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _ass2mvc.Models.business
{
    public class ArtManager
    {
        private IRepository _repository;

        public ArtManager()
        {
            _repository = new EFRepository();
        }

        public Art GetByName(string name)
        {
            Art art = _repository.GetArtByName(name);
            return art;
        }
    }
}
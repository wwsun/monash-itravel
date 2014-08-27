using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _ass2mvc.Models
{
    interface IRepository
    {
        Art GetArtByName(string name);
    }
}

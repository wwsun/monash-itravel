//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _ass2mvc.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Art
    {
        public int ArtID { get; set; }
        public string ArtName { get; set; }
        public string ArtYears { get; set; }
        public string Notes { get; set; }
        public string Photo { get; set; }
        public int AuthorID { get; set; }
    
        public virtual Author Author { get; set; }
    }
}
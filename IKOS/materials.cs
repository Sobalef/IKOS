//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IKOS
{
    using System;
    using System.Collections.Generic;
    
    public partial class materials
    {
        public string id_materials { get; set; }
        public string name { get; set; }
        public string kolichestvo { get; set; }
        public string data_prib { get; set; }
        public string SkladID { get; set; }
    
        public virtual Sklad Sklad { get; set; }
    }
}
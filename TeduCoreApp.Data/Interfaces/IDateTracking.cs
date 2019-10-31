using System;
using System.Collections.Generic;
using System.Text;

namespace TeduCoreApp.Data.Interfaces
{
    public interface IDateTracking
    {
        DateTime DateCreate { set; get; }
        
        DateTime DateModified { set; get; }
    }
}

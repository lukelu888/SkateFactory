using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SkateFactory1.Business
{
    public class User
    {
        //private string _id;
        //public string Id { get => _id; set => _id = value; }
     
        public string Email { get; set; } // prop will auto generate attribute by C# compiler
        public string Password { get; set; }
    }
}

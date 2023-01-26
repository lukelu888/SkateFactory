using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SkateFactory1.Business
{
    [Serializable] // decorator: this class can be converted to XML when use web services
    internal class Skateboard
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public EColor Color { get; set; }

        public float Weight { get; set; }

        public ESkateType SkateType { get; set; }

        public EBrakeType BrakeType { get; set; }
        public EShapeType ShapeType { get; set; }

    }
}

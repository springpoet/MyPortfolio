using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyPCRoom
{
    public class Locale
    {
        public string name { get; set; }
        public double Lat { get; set; }
        public double Lng { get; set; }

        public Locale(string name, double lat, double lng)
        {
            this.name = name;
            Lat = lat;
            Lng = lng;
        }

        public override string ToString()
        {
            return name; // string으로 변환 시 이름만 리턴
        }
    }
}
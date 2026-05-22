using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades_
{
    public class E_categoria
    {
        private int id_categoria;
        private string _Codigocategoria;
        private string _Nombrecategoria;
        private string _Descripcioncategoria;

        public int Id_categoria { get => id_categoria; set => id_categoria = value; }
        public string Codigocategoria { get => _Codigocategoria; set => _Codigocategoria = value; }
        public string Nombrecategoria { get => _Nombrecategoria; set => _Nombrecategoria = value; }
        public string Descripcioncategoria { get => _Descripcioncategoria; set => _Descripcioncategoria = value; }
    }
}

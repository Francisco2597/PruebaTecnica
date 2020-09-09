/**
 * 
 */


function generaId() {

        var id = null;
        var nombre = document.getElementById("strNombre").value;
        var telefono = document.getElementById("strTelefono").value;
        var rand= Math.round(Math.random()*(999-001)+parseInt(001));
        id=nombre.substr(-20,4)+telefono.slice(-4).toString()+"NE"+rand;
        document.getElementById("strIdExt").value=id;

    }


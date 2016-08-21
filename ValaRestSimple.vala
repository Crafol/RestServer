using GLib;

void main () {

    var servidor = new ValaRest.Server ();
         
    servidor.start(8080);

}


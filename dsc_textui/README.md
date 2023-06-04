## FiveM Textui Jaareet#0542 - Redesign by DSC Company CO

es-ES

# Instalación:

1 - Coloca la carpeta de este script donde desees.

2 - Dirigete a 'es_extended/client/functions.lua'

3 - Añade lo siguente
  function ESX.TextUI(message, type)
    exports["dsc_textui"]:Help(message, type)
end

function ESX.HideUI()
    exports["dsc_textui"]:Help()
end 

4 -  Cuando hayas terminado todos los pasos anteriorres, podras añadir la siguiente linea de codigo a todos tus scripts.

  exports.dsc-textui:Help('Aqui ~INPUT_CONTEXT~ colocaras un texto a tu gusto') 

# NO CAMBIES EL NOMBRE EXPORT

en-EN

# Facility:

1 - Place the folder of this script where you want.

2 - Go to 'es_extended/client/functions.lua'

3 - Add the following
   function ESX.TextUI(message, type)
     exports["dsc_textui"]:Help(message, type)
end

function ESX.HideUI()
     exports["dsc_textui"]:Help()
end

4 - When you have finished all the previous steps, you can add the following line of code to all your scripts.

   exports.dsc-textui:Help('Here ~INPUT_CONTEXT~ you will place a text to your liking')

# DO NOT CHANGE THE EXPORT NAME

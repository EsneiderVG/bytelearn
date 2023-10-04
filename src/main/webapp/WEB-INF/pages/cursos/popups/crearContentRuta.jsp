<div class="overlay" id="overlay">
    <div class="popup dark:bg-gray-700" id="popup">
        <a href="#" id="btn-cerrar-popup" style="color: black;" class="text-black btn-cerrar-popup">
            <i class="fas fa-times"></i>
        </a>
        <div class="content_popu_row">
            <div class="info flex flex-col items-center justify-center gap-8">

                <div class="content_contact_gt text-2xl">
                    <i class="fa-solid fa-map"></i>
                    Crea Info ruta!
                </div>

                <div class="contact_op_po text-base">
                    <i class="fa-solid fa-envelope"></i>
                    recuerda especificar el nombre correctamente
                </div>
                    
                <div class="contact_op_po text-base">
                    <i class="fa-solid fa-mobile-screen"></i>
                    si tienes problemas dale <a href="">Aqui</a>
                </div>

            </div>
            <div class="flex-col items-center ml-6">
                <form action="/content/new" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" name="id" value="${param.keyid}"/>
                    <input type="hidden" name="route" value="${param.roadid}"/>
                    <div class="mb-6">
                      <label for="nombre_ruta" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nombre de tema</label>
                      <input type="text" id="nombre_ruta" name="name" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" placeholder="variables tipo int, string etc" required>
                    </div>
                    <div class="mb-6">
                      <label for="descripcion" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Descripcion</label>
                      <input type="text" id="descripcion" name="description" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" required>
                    </div>
                    <div class="mb-6">
                      <label for="tematica" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Codigos de ejemplo:</label>
                      <input type="text" id="tematica" name="ejemplo" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" required>
                    </div>
                    
                    <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Guardar ruta</button>
                  </form>
            </div>
        </div>
    </div>
</div>
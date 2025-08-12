<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD_Empleado</title>
    <link rel="icon" type="image/x-icon" href="../Images/Logo_K.C.png">
    <link rel="stylesheet" href="../Styles/vistaempleadoadmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <nav class="navbar">
        <div class="nav-content">
            <div class="logo">K<span>C</span></div>
            <ul class="menu">
                <li><a href="vistaadmin.jsp">Menú Administrador</a></li>
            </ul>
        </div>
    </nav>
    <section>
        <div class="container">
            <h1>Bienvenido al CRUD completo de la entidad <b>Empleado</b></h1>
            <!-- Apartado para crear el empleado -->
            <div class="section">
                <h2>Agregar nuevo empleado</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtNombreEmpleado" required>
                            <label class="label-input">Nombre Empleado</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtApellidoEmpleado" required>
                            <label class="label-input">Apellido Empleado</label>
                        </div>
                        <div class="form-group">
                            <input type="email" class="entrada_texto" id="txtCorreoEmpleado" required>
                            <label class="label-input">Correo Electrónico</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtTelefonoEmpleado" required>
                            <label class="label-input">Teléfono</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtDireccionEmpleado" required>
                            <label class="label-input">Dirección</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtCodigoUsuario" required>
                            <label class="label-input-number">Código de Usuario</label>
                        </div>
                    </div>
                    <button type="button" class="btn_crear_empleado">
                        <span class="btn_texto">Crear Empleado</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-plus"></i>
                        </span>
                    </button>
                </form>
            </div>
            <!-- Listar y buscar -->
            <div class="section">
                <h2>Listar y buscar empleados</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtBuscarEmpleado" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del empleado a buscar</label>
                        </div>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Empleado</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>
                <table>
                    <thead>
                        <tr>
                            <th>Código del Empleado</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Correo Electrónico</th>
                            <th>Teléfono</th>
                            <th>Dirección</th>
                            <th>Código Usuario</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Juan</td>
                            <td>Pérez</td>
                            <td>juan.perez@empresa.com</td>
                            <td>12345678</td>
                            <td>Calle 123</td>
                            <td>1</td>
                            <td>
                                <div class="botonesTabla">
                                    <button type="button" class="btn_editar">
                                        <span class="btn_texto">Editar</span>
                                        <span class="btn_icono">
                                            <i class="fa-solid fa-pen-to-square"></i>
                                        </span>
                                    </button>
                                    <button type="button" class="btn_eliminar">
                                        <span class="btn_texto">Eliminar</span>
                                        <span class="btn_icono">
                                            <i class="fa fa-trash"></i>
                                        </span>
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- Actualizar empleado -->
            <div class="section">
                <h2>Actualizar empleado</h2>
                <form class="ingresar_id_act_empleado">
                    <div class="form-group">
                        <input type="number" class="entrada_texto" id="txtIdEmpleado" name="id" min="1" placeholder="0" required>
                        <label class="label-input-number">ID del empleado a editar:</label>
                    </div>
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Empleado</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                </form>
                <form class="form_datos_actualizar_empleado">
                    <input type="hidden" name="_method" value="PUT">
                    <div class="form-row">
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtNombreEditar" required>
                            <label class="label-input">Nombre Empleado</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtApellidoEditar" required>
                            <label class="label-input">Apellido Empleado</label>
                        </div>
                        <div class="form-group">
                            <input type="email" class="entrada_texto" id="txtCorreoEditar" required>
                            <label class="label-input">Correo Electrónico</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtTelefonoEditar" required>
                            <label class="label-input">Teléfono</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="entrada_texto" id="txtDireccionEditar" required>
                            <label class="label-input">Dirección</label>
                        </div>
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtCodigoUsuarioEditar" required>
                            <label class="label-input-number">Código de Usuario</label>
                        </div>
                    </div>
                    <button type="button" class="btn_editar">
                        <span class="btn_texto">Actualizar</span>
                        <span class="btn_icono">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </span>
                    </button>
                </form>
            </div>
            <!-- Eliminar el empleado -->
            <div class="section">
                <h2>Eliminar empleado</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <input type="number" class="entrada_texto" id="txtEliminarEmpleado" name="id" min="1" placeholder="0" required>
                            <label class="label-input-number">ID del empleado a eliminar</label>
                        </div>
                    </div>
                </form>
                <form class="form_btn_eliminar_buscar">
                    <button type="button" class="btn_buscar">
                        <span class="btn_texto">Buscar Empleado</span>
                        <span class="btn_icono">
                            <i class="fa fa-search"></i>
                        </span>
                    </button>
                    <button type="button" class="btn_eliminar">
                        <span class="btn_texto">Eliminar Empleado</span>
                        <span class="btn_icono">
                            <i class="fa fa-trash"></i>
                        </span>
                    </button>
                </form>
                <form class="mensaje_eliminar">
                    <input type="hidden">
                    <div class="message warning">
                        <i class="fa fa-exclamation-triangle"></i>
                        <strong>¡Atención!</strong> Recuerda que vas a eliminar un registro, si lo haces se borrará de forma permanente, lo que quiere decir que ya nunca lo recuperarás.
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>
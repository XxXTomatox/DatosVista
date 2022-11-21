<?php 
    include "conexion.php";
    $conexion = conexion();

    $sql = "SELECT * FROM vista";
    $respuesta = mysqli_query($conexion,$sql);
?>


<html>


    <table border ="1">
        <thead>
            <tr>
                <th>id</th>
                <th>usuario</th>
                <th>hardware</th>
            </tr>
        </thead>
        <tbody>
            <?php while($ver= mysqli_query($respuesta)):?>
            <tr>
                <td> <?php echo $ver['nombreUsuario']; ?> </td>
                <td><?php echo $ver['nombreRol']; ?> </td>
                <td><?php echo $ver['personal']; ?> </td>
            </tr>
            <?php endwhile;  ?>
        </tbody>
    </table>
</html>
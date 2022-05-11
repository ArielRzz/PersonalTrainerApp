<!-----------------------------------------------header------------------------------------------------------------->
<%@include file="header.jsp"%>
<!-----------------------------------------------header------------------------------------------------------------->
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
            <div class="col-md-6"> <img class="card-img-top mb-5 mb-md-0" src="https://deibe.es/wp-content/uploads/2021/08/prueba3.jpg" alt="portadaPlan"> </div>
            <div class="col-md-6">
                <h1 class="display-5 fw-bolder">Plan ${id} - ${nombre}</h1>
                <div class="fs-5 mb-4">
                    <span>$${precio}</span>
                </div>
                <p class="lead">El entrenamiento deportivo desde la perspectiva biológica, puede interpretarse como un proceso de estímulo y reacción. Las actividades deportivas desencadenan procesos de adaptación en el organismo. Los estímulos son las causas y las
                    adaptaciones son los resultados. La ejecución de un contenido de entrenamiento, de acuerdo a un programa planificado y dosificado, produce estímulos de movimiento que llevan a adaptaciones morfológicas, funcionales, bioquímicas
                    y psicológicas en el organismo.</p>
                <div class="d-flex">
                    <a class="btn btn-primary btn-lg" href="plan/confirmacionCompra?p=${id}&pr=${precio}&n=${nombre}">Comprar</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-------------------------------------------Footer----------------------------------------------------------------->
<%@include file="footer.jsp"%>
<!-------------------------------------------Footer----------------------------------------------------------------->
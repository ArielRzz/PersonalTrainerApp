<!-----------------------------------------------header------------------------------------------------------------->
<%@include file="header.jsp"%>
<!-----------------------------------------------header------------------------------------------------------------->

<h1>Planes</h1>
<div class="bg-image hover-overlay hover-zoom hover-shadow ripple">
    <img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/113.webp" class="w-100" />
    <a href="#!">
        <div class="mask" style="background-color: rgba(57, 192, 237, 0.2)"></div>
    </a>
</div>

<div class="container-sm px-5 pt-5">
    <div class="container-sm px-5 pt-5">
        <div class="pricing4 py-5 bg-light">
            <div class="container">
                <!-- Row  -->
                <div class="row justify-content-center">
                    <div class="col">
                        <h3 class="mb-3">Extra ordinary Pricing for your Fitness</h3>
                        <h6 class="subtitle font-weight-normal">You can relay on our amazing features list and also our customer services will be great experience for you without doubt</h6>
                    </div>
                </div>
                <!-- Row  -->
                <div class="col">
<c:forEach items="${plan}" var="plan">
    <!-- Column -->
    <div class="col">
        <div class="card card-shadow border-0 mb-4">
            <img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/pricing/img1.jpg" alt="wrappixel kit">
            <div class="p-3">
                <h5 class="font-weight-medium mb-0">BODY BUILDING PROGRAM</h5>
                <h6 class="subtitle font-13">WITH JOHNATHAN DOE</h6>
                <ul class="list-inline font-14 mt-3">
                    <li class="py-1"><i class="icon-check text-success"></i> 6 Days a Week </li>
                    <li class="py-1"><i class="icon-check text-success"></i> Dedicated Trainer Allocated</li>
                    <li class="py-1"><i class="icon-check text-success"></i> Diet Plan Included</li>
                    <li class="py-1"><i class="icon-check text-success"></i> ${plan.id}</li>
                    <li class="py-1"><i class="icon-check text-success"></i> plan.modalidad</li>
                    <li class="py-1"><i class="icon-check text-success"></i> ${plan.nombre}</li>
                    <li class="py-1"><i class="icon-check text-success"></i> Morning and Evening Batches</li>
                    <li class="py-1"><i class="icon-check text-success"></i> ${plan.precio}</li>

                </ul>
                <div class="row">
                    <h2 class="price">$${plan.precio}</h2>
                    <div class="text-center"><a class="btn btn-primary btn-lg" href="mostrarPlanes/plan?p=${plan.id}&pr=${plan.precio}&n=${plan.nombre}">Seleccionar plan ${plan.id}</a></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Column
   <button type="button" class="btn btn-primary-sm"><a href="seleccionarPlan/${plan.id}">Seleccionar</a></button>-->
</c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<div class="container-sm px-5 pt-5">
    <div class="container-sm px-5 pt-5">
        <div class="pricing4 py-5 bg-light">
        <div class="container">
            <!-- Row  -->
            <div class="row justify-content-center">
                <div class="col-md-8 text-center">
                    <h3 class="mb-3">Extra ordinary Pricing for your Fitness</h3>
                    <h6 class="subtitle font-weight-normal">You can relay on our amazing features list and also our customer services will be great experience for you without doubt</h6>
                </div>
            </div>
            <!-- Row  -->
            <div class="row mt-4">

                <!----------------------------------------comienzo for ----------------------------------------------->
                <!-- Column -->
                <div class="col-md-4">
                    <div class="card card-shadow border-0 mb-4">
                        <img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/pricing/img1.jpg" alt="wrappixel kit">
                        <div class="p-3">
                            <h5 class="font-weight-medium mb-0">BODY BUILDING PROGRAM</h5>
                            <h6 class="subtitle font-13">WITH JOHNATHAN DOE</h6>
                            <ul class="list-inline font-14 mt-3">
                                <li class="py-1"><i class="icon-check text-success"></i> 6 Days a Week </li>
                                <li class="py-1"><i class="icon-check text-success"></i> Dedicated Trainer Allocated</li>
                                <li class="py-1"><i class="icon-check text-success"></i> Diet Plan Included</li>
                                <li class="py-1"><i class="icon-check text-success"></i> Morning and Evening Batches</li>
                            </ul>
                            <div class="d-flex mt-3 align-items-center">
                                <h2 class="price">$99<small>/m</small></h2>
                                <div class="ml-auto"><a class="btn btn-danger-gradiant rounded-pill text-white btn-md border-0" href="">Choose Plan</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Column -->
                <div class="col-md-4">
                    <div class="card card-shadow border-0 mb-4">
                        <img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/pricing/img2.jpg" alt="wrappixel kit">
                        <div class="p-3">
                            <h5 class="font-weight-medium mb-0">YOGA AND PILATES CLASS</h5>
                            <h6 class="subtitle font-13">WITH MICHELLE ANDERSON</h6>
                            <ul class="list-inline font-14 mt-3">
                                <li class="py-1"><i class="icon-check text-success"></i> 6 Days a Week </li>
                                <li class="py-1"><i class="icon-check text-success"></i> Dedicated Trainer Allocated</li>
                                <li class="py-1"><i class="icon-check text-success"></i> Diet Plan Included</li>
                                <li class="py-1"><i class="icon-check text-success"></i> Morning and Evening Batches</li>
                            </ul>
                            <div class="d-flex mt-3 align-items-center">
                                <h2 class="price">$69<small>/m</small></h2>
                                <div class="ml-auto"><a class="btn btn-danger-gradiant rounded-pill text-white btn-md border-0" href="">Choose Plan</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Column -->
                <div class="col-md-4">
                    <div class="card card-shadow border-0 mb-4">
                        <img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/pricing/img3.jpg" alt="wrappixel kit">
                        <div class="p-3">
                            <h5 class="font-weight-medium mb-0">KICK BOXING & KARATE</h5>
                            <h6 class="subtitle font-13">WITH MATHEW DOE</h6>
                            <ul class="list-inline font-14 mt-3">
                                <li class="py-1"><i class="icon-check text-success"></i> 6 Days a Week </li>
                                <li class="py-1"><i class="icon-check text-success"></i> Dedicated Trainer Allocated</li>
                                <li class="py-1"><i class="icon-check text-success"></i> Diet Plan Included</li>
                                <li class="py-1"><i class="icon-check text-success"></i> Morning and Evening Batches</li>
                            </ul>
                            <div class="d-flex mt-3 align-items-center">
                                <h2 class="price">$79<small>/m</small></h2>
                                <div class="ml-auto"><a class="btn btn-danger-gradiant rounded-pill text-white btn-md border-0" href="">Choose Plan</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!----------------------------------------final for ----------------------------------------------->

            </div>
        </div>
    </div>
        </div>
    </div>
</div>

<!-------------------------------------------Footer----------------------------------------------------------------->
<%@include file="footer.jsp"%>
<!-------------------------------------------Footer----------------------------------------------------------------->

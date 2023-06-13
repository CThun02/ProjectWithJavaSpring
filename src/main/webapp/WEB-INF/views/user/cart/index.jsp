<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="col-8 offset-md-2 pb-5 cart">
    <div class="p-5 bg-cl-white">
        <h1 class="title">Cart</h1>
        <div>
            <p class="text-danger">${ErrorQuantity}</p>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col">Product</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Subtotal</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${orders}" var="item">
                    <tr>
                        <form action="/cart/update/${item.product.ID}" method="post">
                            <th scope="row" class="align-middle"><a href="/cart/delete?id=${item.product.ID}"><i class="bi bi-trash3"></i></a></th>
                            <td><img src="data:image/jpeg;base64,${imgUlities.getImgByteBase64(item.product.img)}" alt="" style="max-width:70px" srcset=""></td>
                            <td>${item.product.ten}</td>
                            <td>${item.gia}</td>
                            <td><input type="number" name="quantityupdate" value="${item.soluong}" onblur="this.form.submit()" style="max-width: 50px" id=""></td>
                            <td class="sub-total">${item.soluong * item.gia}</td>
                        </form>
                    </tr>
                </c:forEach>
                <tr>
                    <td class="text-end total" colspan="6"></td>
                </tr>
                </tbody>
            </table>
        </div>
        <br>
        <div class="text-end">
            <a href="/cart/checkout" class="btn-bg-red p-3" style="text-decoration: none">PROCEED TO CHECKOUT</a>
        </div>
    </div>
</section>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title> Product Discount Calculator </title>
</head>
<style>
    .select-product{
        width: 500px;
        height: 300px;
        margin: 0;
        padding: 5px;
        border: 1px solid black;
    }
</style>
<body>

    <div class="select-product">

        <form action="display-discount" method="post">
            <h1>Trang xe hơi</h1>
            <table>
                <tr>
                    <td>
                        <label>Nhập sản phầm:</label>
                    </td>
                    <td>
                        <input type="text" name="product">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Nhập giá niêm yết:</label>
                    </td>
                    <td>
                        <input type="number" name="list-price" placeholder="Nhập: 1000 , 2000 , ....">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Nhập tỷ lệ chiết khâu:</label>
                    </td>
                    <td>
                        <input type="number" name="discount-percent" placeholder="Nhập: 4 , 5 -> 4% , 5%">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Calculate Discount">




        </form>
    </div>


</body>
</html>
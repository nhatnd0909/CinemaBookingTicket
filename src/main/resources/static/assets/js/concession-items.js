	// Set giá trị mặc định cho các ô subtotal khi trang web được tải lần đầu
document.querySelectorAll("td:nth-child(5)").forEach(function (subtotalCell) {
    subtotalCell.innerText = "0";
});

// Hàm giảm số lượng
function decrementQuantity(button) {
    const quantityElement = button.nextElementSibling;
    let quantity = parseInt(quantityElement.innerText);
    if (quantity > 0) {
        quantity--;
        quantityElement.innerText = quantity;
        updateSubtotal(button.parentNode.parentNode);
    }
}

// Hàm tăng số lượng
function incrementQuantity(button) {
    const quantityElement = button.previousElementSibling;
    let quantity = parseInt(quantityElement.innerText);
    quantity++;
    quantityElement.innerText = quantity;
    updateSubtotal(button.parentNode.parentNode);
}
function updateSubtotal(row) {
    const priceCell = row.querySelector("td:nth-child(3)");
    const quantityCell = row.querySelector("td:nth-child(4) span");
    const subtotalCell = row.querySelector("td:nth-child(5)");

    const price = parseFloat(priceCell.innerText.replace(/\D/g, '')); // Loại bỏ ký tự không phải số
    const quantity = parseInt(quantityCell.innerText);
    const subtotal = price * quantity;

    subtotalCell.innerText = subtotal.toLocaleString('vi-VN', { });
    updateTotal();
}

function updateTotal() {
    const subtotalCells = document.querySelectorAll("td:nth-child(5)");
    let total = 0;

    subtotalCells.forEach(function (cell) {
        const subtotalValue = parseFloat(cell.innerText.replace(/\D/g, ''));
        if (!isNaN(subtotalValue)) {
            total += subtotalValue;
        }
    });

    const totalElement = document.getElementById("total");
    totalElement.innerText = total.toLocaleString('vi-VN', {} );
}

 document.addEventListener("DOMContentLoaded", function() {
        var formattedPrices = document.querySelectorAll(".formatted-price");

        formattedPrices.forEach(function(element) {
            var price = parseFloat(element.innerText.replace(/\D/g, '')); // Loại bỏ ký tự không phải số
            if (!isNaN(price)) {
                var formattedPrice = new Intl.NumberFormat('vi-VN', { minimumFractionDigits: 0 }).format(price);
                element.innerText = formattedPrice;
            }
        });
    });
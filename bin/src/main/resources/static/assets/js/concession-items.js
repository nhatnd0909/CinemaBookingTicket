// Set giá trị mặc định cho các ô subtotal khi trang web được tải lần đầu
document.querySelectorAll("td:nth-child(5)").forEach(function (subtotalCell) {
    subtotalCell.innerText = "$0.00";
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

// Hàm cập nhật thành tiền cho hàng
function updateSubtotal(row) {
    const priceCell = row.querySelector("td:nth-child(3)");
    const quantityCell = row.querySelector("td:nth-child(4) span");
    const subtotalCell = row.querySelector("td:nth-child(5)");

    const price = parseFloat(priceCell.innerText.replace("$", "")); // Loại bỏ ký tự "$" và chuyển đổi thành số
    const quantity = parseInt(quantityCell.innerText);
    const subtotal = price * quantity;

    subtotalCell.innerText = "$" + subtotal.toFixed(2);

    // Cập nhật tổng tiền
    updateTotal();
}

// Hàm cập nhật tổng tiền
function updateTotal() {
    const subtotalCells = document.querySelectorAll("td:nth-child(5)");
    let total = 0;

    subtotalCells.forEach(function (cell) {
        const subtotalValue = parseFloat(cell.innerText.replace("$", ""));
        if (!isNaN(subtotalValue)) {
            total += subtotalValue;
        }
    });

    // Cập nhật tổng tiền
    const totalElement = document.getElementById("total");
    totalElement.innerText = "$" + total.toFixed(2);
}

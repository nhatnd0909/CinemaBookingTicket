function previewImage() {
  const input = document.getElementById('exampleInputPassword4');
  const imagePreview = document.getElementById('imagePreview');

  // Kiểm tra xem người dùng đã chọn tệp hình ảnh chưa
  if (input.files && input.files[0]) {
    const reader = new FileReader();

    reader.onload = function (e) {
      // Tạo một thẻ <img> để hiển thị hình ảnh
      const img = document.createElement('img');
      img.src = e.target.result;
      img.style.maxWidth = '100%'; // Điều chỉnh kích thước hình ảnh

      // Xóa nội dung cũ của div và thêm hình ảnh mới
      imagePreview.innerHTML = '';
      imagePreview.appendChild(img);

      // Hiển thị thẻ div
      imagePreview.style.display = 'block';
    };

    // Đọc và hiển thị hình ảnh
    reader.readAsDataURL(input.files[0]);
  } else {
    // Nếu người dùng chưa chọn hình ảnh hoặc chọn sai định dạng tệp
    imagePreview.innerHTML = 'No image selected';
    // Ẩn thẻ div nếu không có hình ảnh
    imagePreview.style.display = 'none';
  }
}
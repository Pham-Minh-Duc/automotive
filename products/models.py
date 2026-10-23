from django.db import models


class Category(models.Model):
    name = models.CharField(max_length=255, unique=True, verbose_name="Category Name")
    slug = models.SlugField(max_length=255, unique=True, verbose_name="Slug")
    description = models.TextField(blank=True, null=True, verbose_name="Description")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "Category"
        verbose_name_plural = "Categories"


class Brand(models.Model):
    name = models.CharField(max_length=255, unique=True, verbose_name="Brand Name")
    slug = models.SlugField(max_length=255, unique=True, verbose_name="Slug")
    logo = models.ImageField(upload_to="brands/", blank=True, null=True, verbose_name="Logo")
    description = models.TextField(blank=True, null=True, verbose_name="Description")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "Brand"
        verbose_name_plural = "Brands"


class Item(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name="items", verbose_name="Category")
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE, related_name="items", verbose_name="Brand")
    name = models.CharField(max_length=255, verbose_name="Product Name/Part Name")
    slug = models.SlugField(max_length=255, unique=True, verbose_name="Slug")
    description = models.TextField(verbose_name="Detailed Description")
    price = models.DecimalField(max_digits=12, decimal_places=2, verbose_name="Selling Price")
    stock = models.PositiveIntegerField(default=0, verbose_name="Stock Quantity")
    is_active = models.BooleanField(default=True, verbose_name="Is Active")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Created At")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="Updated At")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "Product/Part"
        verbose_name_plural = "Products/Parts"


class Image(models.Model):
    item = models.ForeignKey(Item, on_delete=models.CASCADE, related_name="images", verbose_name="Product/Part")
    image = models.ImageField(upload_to="products/images/", verbose_name="Image")
    is_feature = models.BooleanField(default=False, verbose_name="Feature Image")

    def __str__(self):
        return f"Image of {self.item.name}"

    class Meta:
        verbose_name = "Product Image"
        verbose_name_plural = "Product Images"


class Attribute(models.Model):
    item = models.ForeignKey(Item, on_delete=models.CASCADE, related_name="attributes", verbose_name="Product/Part")
    key = models.CharField(max_length=100, verbose_name="Attribute Name (e.g., Material)")
    value = models.CharField(max_length=255, verbose_name="Attribute Value (e.g., Aluminum Alloy)")

    def __str__(self):
        return f"{self.key}: {self.value} ({self.item.name})"

    class Meta:
        verbose_name = "Technical Specification"
        verbose_name_plural = "Technical Specifications"


class Compatibility(models.Model):
    item = models.ForeignKey(Item, on_delete=models.CASCADE, related_name="compatibilities", verbose_name="Product/Part")
    car_model = models.CharField(max_length=255, verbose_name="Compatible Car Model (e.g., Mazda 3)")
    car_year_start = models.PositiveIntegerField(verbose_name="From Car Year")
    car_year_end = models.PositiveIntegerField(verbose_name="To Car Year")

    def __str__(self):
        return f"{self.item.name} is compatible with {self.car_model} ({self.car_year_start}-{self.car_year_end})"

    class Meta:
        verbose_name = "Compatibility"
        verbose_name_plural = "Compatibilities"


class Review(models.Model):
    item = models.ForeignKey(Item, on_delete=models.CASCADE, related_name="reviews", verbose_name="Product/Part")
    rating = models.PositiveIntegerField(verbose_name="Rating (1-5)")
    comment = models.TextField(verbose_name="Review Content")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Review Date")

    def __str__(self):
        return f"Review {self.rating} stars for {self.item.name}"

    class Meta:
        verbose_name = "Product Review"
        verbose_name_plural = "Product Reviews"
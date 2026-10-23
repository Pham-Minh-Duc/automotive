 
"""Serializer có nhiệm vụ "dịch" các đối tượng Model phức tạp (Category, Brand, Item,...) 
thành định dạng JSON để Frontend (React, Next.js, Mobile App) có thể đọc và hiển thị được."""


from rest_framework import serializers
from .models import Category, Brand, Item, Image, Attribute, Compatibility, Review

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ['id', 'name', 'slug', 'desscription']

class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brand
        fields = ['id', 'name', 'slug', 'logo', 'description']

class ImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Image
        fields = ['id', 'image', 'is_feature']

class AttributeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Attribute
        fields = ['id', 'key', 'value']

class CompatibilitySerializer(serializers.ModelSerializer):
    class Meta:
        model = Compatibility
        fields = ['id', 'car_model', 'car_year_start', 'car_year_end']

class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Review
        fields = ['id', 'rating', 'comment', 'created_at']

class ItemDetailSerializer(serializers.ModelSerializer):
    category = CategorySerializer(read_only=True)
    brand = BrandSerializer(read_only=True)
    images = ImageSerializer(many=True, read_only=True)
    attributes = AttributeSerializer(many=True, read_only=True)
    compatibilities = CompatibilitySerializer(many=True, read_only=True)
    reviews = ReviewSerializer(many=True, read_only=True)

    class Meta:
        model = Item
        fields = [
            'id',
            'name',
            'slug',
            'description',
            'price',
            'stock',
            'is_active',
            'category',
            'brand',
            'images',
            'attributes',
            'compatibilities',
            'reviews',
            'created_at',
            'updated_at',
        ]

class ItemListSerializer(serializers.ModelSerializer):
    category_name = serializers.ReadOnlyField(source='category.name')
    brand_name = serializers.ReadOnlyField(source='brand.name')

    class Meta:
        model = Item
        fields = [
            'id',
            'name',
            'slug',
            'price',
            'stock',
            'is_active',
            'category_name',
            'brand_name',
        ]
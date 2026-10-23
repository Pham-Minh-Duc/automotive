
"""Viết các class xử lý yêu cầu (GET, POST, PUT, DELETE) cho từng model, 
hỗ trợ tính năng lọc sản phẩm theo danh mục, thương hiệu hoặc tìm kiếm phụ tùng."""
from django.shortcuts import render
from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from .models import Category, Brand, Item
from .serializers import (
    CategorySerializer,
    BrandSerializer,
    ItemListSerializer,
    ItemDetailSerializer,
)


class CategoryViewSet(viewsets.ModelViewSet):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer
    permission_classes = [IsAuthenticatedOrReadOnly]


class BrandViewSet(viewsets.ModelViewSet):
    queryset = Brand.objects.all()
    serializer_class = BrandSerializer
    permission_classes = [IsAuthenticatedOrReadOnly]


class ItemViewSet(viewsets.ModelViewSet):
    queryset = Item.objects.filter(is_active=True).select_related('category', 'brand')
    permission_classes = [IsAuthenticatedOrReadOnly]

    def get_serializer_class(self):
        # Khi xem chi tiết 1 sản phẩm -> Trả về thông số, ảnh, tương thích xe chi tiết
        if self.action == 'retrieve':
            return ItemDetailSerializer
        # Khi xem danh sách -> Trả về gọn nhẹ để tối ưu tốc độ
        return ItemListSerializer
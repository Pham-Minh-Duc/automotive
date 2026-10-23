
"""Sử dụng DefaultRouter của DRF để tự động sinh ra các đường dẫn API chuẩn RESTful chỉ với vài dòng code."""

from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import CategoryViewSet, BrandViewSet, ItemViewSet

router = DefaultRouter()
router.register(r'categories', CategoryViewSet)
router.register(r'brands', BrandViewSet)
router.register(r'items', ItemViewSet)

urlpatterns = [
    path('api/products/', include(router.urls)),
]
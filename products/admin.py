from django.contrib import admin
from .models import (
    Category,
    Brand,
    Item,
    Image,
    Attribute,
    Compatibility,
    Review,
)

class ProductImageInLine(admin.TabularInline):
    model = Image
    extra = 1

class AttributeInLines(admin.TabularInline):
    model = Attribute
    extra = 3

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug', 'description')
    prepopulated_fields = {'slug': ('name',)}

@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug', 'logo', 'description')
    prepopulated_fields = {'slug': ('name',)}

@admin.register(Item)
class ItemAdmin(admin.ModelAdmin):
    list_display = ('category', 'brand', 'name', 'slug', 'description', 'price', 'stock', 'is_active', 'created_at', 'updated_at')
    list_filter = ('category', 'brand', 'is_active')
    prepopulated_fields = {'slug': ('name',)}
    search_fields = ('name',)
    inlines = [AttributeInLines]

@admin.register(Attribute)
class AttributeAdmin(admin.ModelAdmin):
    list_display = ('item', 'key', 'value')
    search_fields = ('key', 'value')

@admin.register(Compatibility)
class CompatibilityAdmin(admin.ModelAdmin):
    list_display = ('item', 'car_model')
    list_filter = ('car_year_start','car_year_end')

@admin.register(Review)
class ReviewAdmin(admin.ModelAdmin):
    list_display = ('item', 'comment', 'rating', 'created_at')
    list_filter = ('rating',)
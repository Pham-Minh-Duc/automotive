"""
WSGI config for automotive_app project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/6.1/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'automotive_app.settings')

application = get_wsgi_application()

"""Các file cấu hình giúp dự án Django giao tiếp với các Web Server thực tế khi đưa lên môi trường chạy thật (Production) trên server (WSGI dùng cho mô hình đồng bộ truyền thống, ASGI dùng cho bất đồng bộ/WebSocket)."""
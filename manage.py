#!/usr/bin/env python
"""Django's command-line utility for administrative tasks."""
import os
import sys


def main():
    """Run administrative tasks."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'automotive_app.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    main()


"""Đây là công cụ điều khiển trung tâm của toàn bộ dự án (khởi động server, tạo csdl, tạo tài khoản quản trị, tạo app, tạo model, tạo view, tạo template, tạo form, tạo url, chạy lệnh migrate, chạy lệnh makemigrations, chạy lệnh runserver...)"""
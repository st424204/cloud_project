# -*- coding: utf-8 -*-
# Generated by Django 1.10.4 on 2016-12-27 07:59
from __future__ import unicode_literals

from django.db import migrations, models
import project.models


class Migration(migrations.Migration):

    dependencies = [
        ('project', '0007_auto_20161226_1805'),
    ]

    operations = [
        migrations.AddField(
            model_name='measuring_data',
            name='txt',
            field=models.FileField(default='', upload_to=project.models.user_directory_path),
        ),
        migrations.AlterField(
            model_name='measuring_data',
            name='image',
            field=models.FileField(default='', upload_to='./project/static/project/'),
        ),
    ]

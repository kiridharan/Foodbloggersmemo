# Generated by Django 4.1 on 2022-08-09 12:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_alter_shopedetails_rating'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='shopedetails',
            name='id',
        ),
        migrations.AddField(
            model_name='shopedetails',
            name='key',
            field=models.IntegerField(auto_created=True, default=2, primary_key=True, serialize=False),
            preserve_default=False,
        ),
    ]

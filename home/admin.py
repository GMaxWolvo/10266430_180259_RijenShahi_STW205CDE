from django.contrib import admin

# Register your models here.
from home.models import RecentGadgets


class RecentGadgetsAdmin(admin.ModelAdmin):
    list_display = ('img', 'name', 'desc')


admin.site.register(RecentGadgets,RecentGadgetsAdmin)

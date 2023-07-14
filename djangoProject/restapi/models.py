from django.db import models

# Create your models here.
class Test(models.Model):
    test = models.CharField(max_length=10)

    def __str__(self):
        return self.test

class User(models.Model):
    useremail = models.CharField(max_length=128, unique=True)
    userpw = models.CharField(max_length=128)
    username = models.CharField(max_length=16)
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.useremail

    class Meta :
        db_table = 'user'
        ordering = ['created']


class Company(models.Model):
    company_name = models.CharField(primary_key=True, max_length=20)
    esg_rank = models.CharField(max_length=20, null=True)
    e_rank = models.CharField(max_length=20, null=True)
    s_rank = models.CharField(max_length=20, null=True)
    g_rank = models.CharField(max_length=20, null=True)

    def __str__(self):
        return self.company_name

    class Meta :
        db_table = 'esg_company'

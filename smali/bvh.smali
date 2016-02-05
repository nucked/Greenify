.class public Lbvh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lbvi;

    invoke-direct {v0, p0}, Lbvi;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v1, Lbvj;

    invoke-direct {v1}, Lbvj;-><init>()V

    .line 35
    new-instance v2, Lbvk;

    invoke-direct {v2, p0}, Lbvk;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v3, Lbqf;

    invoke-direct {v3}, Lbqf;-><init>()V

    const-class v4, Landroid/app/Notification$Builder;

    invoke-virtual {v3, v4, v0}, Lbqf;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lbqf;

    move-result-object v0

    const-class v3, Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {v0, v3, v1}, Lbqf;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lbqf;

    move-result-object v0

    const-class v1, Landroid/app/PendingIntent;

    .line 45
    invoke-virtual {v0, v1, v2}, Lbqf;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lbqf;

    move-result-object v0

    invoke-virtual {v0}, Lbqf;->a()Lbpy;

    move-result-object v0

    const-class v1, Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, v1}, Lbpy;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 47
    return-object v0
.end method

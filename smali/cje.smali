.class public Lcje;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 3

    .prologue
    .line 13
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 14
    const-class v1, Landroid/view/ViewConfiguration;

    const-string v2, "sHasPermanentMenuKey"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 18
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class public Lee;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 52
    invoke-static {p0, p1, p2}, Leg;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {p0, p1, p2}, Lef;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.class public Ldr;
.super Lis;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 177
    invoke-static {p0}, Ldu;->a(Landroid/app/Activity;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 194
    invoke-static {p0}, Lds;->a(Landroid/app/Activity;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

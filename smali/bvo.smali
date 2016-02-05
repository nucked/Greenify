.class public Lbvo;
.super Landroid/os/Build$VERSION_CODES;
.source "SourceFile"


# direct methods
.method public static a(ILjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 19
    :cond_0
    return-void
.end method

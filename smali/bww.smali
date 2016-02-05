.class public Lbww;
.super Lwq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lwq;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lbww;
    .locals 2

    .prologue
    .line 28
    const v1, 0x104000a

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    .line 31
    return-object p0

    .line 28
    :cond_0
    new-instance v0, Lbwx;

    invoke-direct {v0, p0, p1}, Lbwx;-><init>(Lbww;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public d()Lbww;
    .locals 2

    .prologue
    .line 35
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbww;->b(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    .line 36
    return-object p0
.end method

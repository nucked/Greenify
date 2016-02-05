.class public Lnm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lnn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 129
    new-instance v0, Lnp;

    invoke-direct {v0}, Lnp;-><init>()V

    sput-object v0, Lnm;->a:Lnn;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lno;

    invoke-direct {v0}, Lno;-><init>()V

    sput-object v0, Lnm;->a:Lnn;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lnm;->a:Lnn;

    invoke-interface {v0, p0}, Lnn;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lnm;->a:Lnn;

    invoke-interface {v0, p0}, Lnn;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

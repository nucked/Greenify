.class public Lnb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lnc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lnf;

    invoke-direct {v0}, Lnf;-><init>()V

    sput-object v0, Lnb;->a:Lnc;

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 59
    new-instance v0, Lne;

    invoke-direct {v0}, Lne;-><init>()V

    sput-object v0, Lnb;->a:Lnc;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lnd;

    invoke-direct {v0}, Lnd;-><init>()V

    sput-object v0, Lnb;->a:Lnc;

    goto :goto_0
.end method

.method public static a(Landroid/view/LayoutInflater;Lnl;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lnb;->a:Lnc;

    invoke-interface {v0, p0, p1}, Lnc;->a(Landroid/view/LayoutInflater;Lnl;)V

    .line 80
    return-void
.end method

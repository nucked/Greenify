.class public Lpu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lpz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Lpy;

    invoke-direct {v0}, Lpy;-><init>()V

    sput-object v0, Lpu;->a:Lpz;

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Lpx;

    invoke-direct {v0}, Lpx;-><init>()V

    sput-object v0, Lpu;->a:Lpz;

    goto :goto_0

    .line 90
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 91
    new-instance v0, Lpw;

    invoke-direct {v0}, Lpw;-><init>()V

    sput-object v0, Lpu;->a:Lpz;

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Lpv;

    invoke-direct {v0}, Lpv;-><init>()V

    sput-object v0, Lpu;->a:Lpz;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lpu;->a:Lpz;

    invoke-interface {v0, p0}, Lpz;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewConfiguration;)Z
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lpu;->a:Lpz;

    invoke-interface {v0, p0}, Lpz;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method

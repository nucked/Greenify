.class public Llb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Llc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    sput-object v0, Llb;->a:Llc;

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 57
    new-instance v0, Lle;

    invoke-direct {v0}, Lle;-><init>()V

    sput-object v0, Llb;->a:Llc;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lld;

    invoke-direct {v0}, Lld;-><init>()V

    sput-object v0, Llb;->a:Llc;

    goto :goto_0
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Llb;->a:Llc;

    invoke-interface {v0, p0}, Llc;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

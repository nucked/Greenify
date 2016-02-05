.class public Ldi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcs;

.field private static final b:Ldk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Ldj;

    invoke-direct {v0}, Ldj;-><init>()V

    sput-object v0, Ldi;->a:Lcs;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Ldm;

    invoke-direct {v0, v2}, Ldm;-><init>(Ldj;)V

    sput-object v0, Ldi;->b:Ldk;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Ldl;

    invoke-direct {v0, v2}, Ldl;-><init>(Ldj;)V

    sput-object v0, Ldi;->b:Ldk;

    goto :goto_0
.end method

.method public static a()Lcp;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Ldi;->a:Lcs;

    invoke-interface {v0}, Lcs;->a()Lcp;

    move-result-object v0

    return-object v0
.end method

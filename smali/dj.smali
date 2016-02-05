.class final Ldj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcp;
    .locals 3

    .prologue
    .line 28
    new-instance v1, Lcp;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    new-instance v0, Lcy;

    invoke-direct {v0}, Lcy;-><init>()V

    :goto_0
    invoke-direct {v1, v0}, Lcp;-><init>(Lct;)V

    return-object v1

    :cond_0
    new-instance v0, Lcw;

    invoke-direct {v0}, Lcw;-><init>()V

    goto :goto_0
.end method

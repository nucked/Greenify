.class public final Lbpn;
.super Lbpg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lbpg",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lbpg;-><init>()V

    return-void
.end method

.method public static b()Lbpn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lbpn",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lbpn;

    invoke-direct {v0}, Lbpn;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lbpg;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lbpg;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

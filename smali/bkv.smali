.class public final Lbkv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lbkm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    const/16 v0, 0x2c

    invoke-static {v0}, Lbkm;->a(C)Lbkm;

    move-result-object v0

    sput-object v0, Lbkv;->a:Lbkm;

    return-void
.end method

.method public static a()Lbku;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lbku",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lbla;->a:Lbla;

    invoke-virtual {v0}, Lbla;->a()Lbku;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lbku;)Lbku;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbku",
            "<TT;>;)",
            "Lbku",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lbkz;

    invoke-direct {v0, p0}, Lbkz;-><init>(Lbku;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lbku;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lbku",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    invoke-static {}, Lbkv;->b()Lbku;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbky;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbky;-><init>(Ljava/lang/Object;Lbkw;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lbku;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lbku",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lbkx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbkx;-><init>(Ljava/util/Collection;Lbkw;)V

    return-object v0
.end method

.method public static b()Lbku;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lbku",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lbla;->c:Lbla;

    invoke-virtual {v0}, Lbla;->a()Lbku;

    move-result-object v0

    return-object v0
.end method

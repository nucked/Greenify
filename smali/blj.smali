.class public final Lblj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lbli;)Lbli;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbli",
            "<TT;>;)",
            "Lbli",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    instance-of v0, p0, Lblk;

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lblk;

    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbli;

    invoke-direct {v1, v0}, Lblk;-><init>(Lbli;)V

    move-object p0, v1

    goto :goto_0
.end method

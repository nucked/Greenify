.class public final Lbog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lbof;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbof",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2048
    if-ne p1, p0, :cond_0

    .line 2049
    const/4 v0, 0x1

    .line 2055
    :goto_0
    return v0

    .line 2051
    :cond_0
    instance-of v0, p1, Lbof;

    if-eqz v0, :cond_1

    .line 2052
    check-cast p1, Lbof;

    .line 2053
    invoke-interface {p0}, Lbof;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lbof;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2055
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

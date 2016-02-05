.class final Lbnq;
.super Lboy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lboy",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lboy;


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbnq;->a:Lboy;

    invoke-virtual {v0}, Lboy;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lbnq;->a:Lboy;

    invoke-virtual {v0}, Lboy;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

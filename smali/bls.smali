.class Lbls;
.super Lbny;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lblr;


# direct methods
.method constructor <init>(Lblr;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1237
    iput-object p1, p0, Lbls;->b:Lblr;

    invoke-direct {p0}, Lbny;-><init>()V

    .line 1238
    iput-object p2, p0, Lbls;->a:Ljava/util/Map;

    .line 1239
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v0, p0, Lbls;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lbnp;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1254
    if-nez v0, :cond_0

    .line 1255
    const/4 v0, 0x0

    .line 1259
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lbls;->b:Lblr;

    invoke-virtual {v1, p1, v0}, Lblr;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1306
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1307
    iget-object v2, p0, Lbls;->b:Lblr;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v1, v0}, Lblr;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v1, v0}, Lbnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1243
    new-instance v0, Lblt;

    invoke-direct {v0, p0}, Lblt;-><init>(Lbls;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Lbls;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1273
    if-nez v0, :cond_0

    .line 1274
    const/4 v0, 0x0

    .line 1281
    :goto_0
    return-object v0

    .line 1277
    :cond_0
    iget-object v1, p0, Lbls;->b:Lblr;

    invoke-virtual {v1}, Lblr;->a()Ljava/util/Collection;

    move-result-object v1

    .line 1278
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1279
    iget-object v2, p0, Lbls;->b:Lblr;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lblr;->b(Lblr;I)I

    .line 1280
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    .line 1281
    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lbls;->a:Ljava/util/Map;

    iget-object v1, p0, Lbls;->b:Lblr;

    invoke-static {v1}, Lblr;->a(Lblr;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1299
    iget-object v0, p0, Lbls;->b:Lblr;

    invoke-virtual {v0}, Lblr;->c()V

    .line 1303
    :goto_0
    return-void

    .line 1301
    :cond_0
    new-instance v0, Lblu;

    invoke-direct {v0, p0}, Lblu;-><init>(Lbls;)V

    invoke-static {v0}, Lbnc;->c(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lbls;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lbnp;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1285
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lbls;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1230
    invoke-virtual {p0, p1}, Lbls;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lbls;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1263
    iget-object v0, p0, Lbls;->b:Lblr;

    invoke-virtual {v0}, Lblr;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1230
    invoke-virtual {p0, p1}, Lbls;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lbls;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lbls;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

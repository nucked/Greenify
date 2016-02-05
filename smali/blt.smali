.class Lblt;
.super Lbnw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnw",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbls;


# direct methods
.method constructor <init>(Lbls;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lblt;->a:Lbls;

    invoke-direct {p0}, Lbnw;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lblt;->a:Lbls;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lblt;->a:Lbls;

    iget-object v0, v0, Lbls;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lbml;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1317
    new-instance v0, Lblu;

    iget-object v1, p0, Lblt;->a:Lbls;

    invoke-direct {v0, v1}, Lblu;-><init>(Lbls;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1327
    invoke-virtual {p0, p1}, Lblt;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    const/4 v0, 0x0

    .line 1332
    :goto_0
    return v0

    .line 1330
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1331
    iget-object v0, p0, Lblt;->a:Lbls;

    iget-object v0, v0, Lbls;->b:Lblr;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lblr;->a(Lblr;Ljava/lang/Object;)I

    .line 1332
    const/4 v0, 0x1

    goto :goto_0
.end method

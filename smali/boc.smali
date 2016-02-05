.class Lboc;
.super Lbod;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lbod",
        "<TK;TV1;TV2;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV2;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;Lbnx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;",
            "Lbnx",
            "<-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 1981
    invoke-direct {p0, p1, p2}, Lbod;-><init>(Ljava/util/SortedMap;Lbnx;)V

    .line 1982
    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2074
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lboc;->b:Lbnx;

    invoke-static {v0, p1}, Lbnp;->a(Lbnx;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2012
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lboc;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2060
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lboc;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;"
        }
    .end annotation

    .prologue
    .line 2078
    invoke-super {p0}, Lbod;->c()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2064
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lboc;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1985
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lboc;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1989
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1993
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1997
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lboc;->b:Lbnx;

    invoke-static {v0, v1}, Lbnp;->a(Ljava/util/NavigableMap;Lbnx;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2001
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lboc;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2004
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lboc;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2008
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2016
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lboc;->b:Lbnx;

    invoke-static {v0, v1}, Lbnp;->a(Ljava/util/NavigableMap;Lbnx;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0, p1}, Lboc;->a(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2021
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lboc;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2025
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2029
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lboc;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2033
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lboc;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2037
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2041
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2045
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lboc;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2049
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lboc;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2054
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lboc;->b:Lbnx;

    invoke-static {v0, v1}, Lbnp;->a(Ljava/util/NavigableMap;Lbnx;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0, p1, p2}, Lboc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2068
    invoke-virtual {p0}, Lboc;->b()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lboc;->b:Lbnx;

    invoke-static {v0, v1}, Lbnp;->a(Ljava/util/NavigableMap;Lbnx;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0, p1}, Lboc;->b(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

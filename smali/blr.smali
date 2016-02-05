.class abstract Lblr;
.super Lbmh;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lbmh",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient b:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
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
    .line 122
    invoke-direct {p0}, Lbmh;-><init>()V

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lbkt;->a(Z)V

    .line 124
    iput-object p1, p0, Lblr;->a:Ljava/util/Map;

    .line 125
    return-void
.end method

.method static synthetic a(Lblr;I)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lblr;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lblr;->b:I

    return v0
.end method

.method static synthetic a(Lblr;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lblr;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lblr;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lblr;->a(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 595
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lblr;Ljava/lang/Object;Ljava/util/List;Lbma;)Ljava/util/List;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lblr;->a(Ljava/lang/Object;Ljava/util/List;Lbma;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lbma;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lbma;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lblr",
            "<TK;TV;>.bma;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 332
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lblx;

    invoke-direct {v0, p0, p1, p2, p3}, Lblx;-><init>(Lblr;Ljava/lang/Object;Ljava/util/List;Lbma;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbmc;

    invoke-direct {v0, p0, p1, p2, p3}, Lbmc;-><init>(Lblr;Ljava/lang/Object;Ljava/util/List;Lbma;)V

    goto :goto_0
.end method

.method static synthetic a(Lblr;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lblr;)I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lblr;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lblr;->b:I

    return v0
.end method

.method static synthetic b(Lblr;I)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lblr;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lblr;->b:I

    return v0
.end method

.method static synthetic c(Lblr;)I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lblr;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lblr;->b:I

    return v0
.end method

.method private c(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lbnp;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1113
    const/4 v1, 0x0

    .line 1114
    if-eqz v0, :cond_0

    .line 1115
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1116
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1117
    iget v0, p0, Lblr;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lblr;->b:I

    :cond_0
    move v0, v1

    .line 1119
    return v0
.end method


# virtual methods
.method abstract a()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lblr;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 319
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lbmf;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lbmf;-><init>(Lblr;Ljava/lang/Object;Ljava/util/SortedSet;Lbma;)V

    .line 326
    :goto_0
    return-object v0

    .line 321
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 322
    new-instance v0, Lbme;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lbme;-><init>(Lblr;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 323
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 324
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lblr;->a(Ljava/lang/Object;Ljava/util/List;Lbma;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_2
    new-instance v0, Lbma;

    invoke-direct {v0, p0, p1, p2, v1}, Lbma;-><init>(Lblr;Ljava/lang/Object;Ljava/util/Collection;Lbma;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 192
    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 193
    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0, p1}, Lblr;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 195
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget v2, p0, Lblr;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lblr;->b:I

    .line 197
    iget-object v2, p0, Lblr;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 202
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget v0, p0, Lblr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lblr;->b:I

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lblr;->b:I

    return v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 305
    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0, p1}, Lblr;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 308
    :cond_0
    invoke-virtual {p0, p1, v0}, Lblr;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 289
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lblr;->b:I

    .line 293
    return-void
.end method

.method d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lblz;

    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lblz;-><init>(Lblr;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lblv;

    iget-object v1, p0, Lblr;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lblv;-><init>(Lblr;Ljava/util/Map;)V

    goto :goto_0
.end method

.method e()Ljava/util/Map;
    .locals 2
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
    .line 1226
    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lbly;

    iget-object v0, p0, Lblr;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lbly;-><init>(Lblr;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbls;

    iget-object v1, p0, Lblr;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lbls;-><init>(Lblr;Ljava/util/Map;)V

    goto :goto_0
.end method

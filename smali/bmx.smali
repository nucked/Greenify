.class public final Lbmx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;Lbkl;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TF;>;",
            "Lbkl",
            "<-TF;+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v0, Lbnb;

    invoke-direct {v0, p0, p1}, Lbnb;-><init>(Ljava/lang/Iterable;Lbkl;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 435
    invoke-static {p0, p1}, Lbmt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lbmt;

    move-result-object v0

    invoke-static {v0}, Lbmx;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lbnc;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Lbku;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lbku",
            "<-TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p3, :cond_1

    .line 223
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lbku;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    :cond_1
    add-int/lit8 v0, p3, -0x1

    :goto_1
    if-lt v0, p2, :cond_2

    .line 229
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 231
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/Iterable;Lbku;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 176
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 177
    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbku;

    invoke-static {p0, v0}, Lbmx;->a(Ljava/util/List;Lbku;)Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lbnc;->a(Ljava/util/Iterator;Lbku;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lbku;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 187
    move v0, v1

    move v2, v1

    .line 190
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 191
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 192
    invoke-interface {p1, v4}, Lbku;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 193
    if-le v2, v0, :cond_0

    .line 195
    :try_start_0
    invoke-interface {p0, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 190
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    invoke-static {p0, p1, v0, v2}, Lbmx;->a(Ljava/util/List;Lbku;II)V

    .line 207
    :goto_1
    return v3

    .line 206
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 207
    if-eq v2, v0, :cond_3

    move v1, v3

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {p0}, Lbmx;->d(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {p1, v1}, Lboj;->a(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    .line 317
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v0, Lbmy;

    invoke-direct {v0, p0}, Lbmy;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;Lbku;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 584
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    new-instance v0, Lbna;

    invoke-direct {v0, p0, p1}, Lbna;-><init>(Ljava/lang/Iterable;Lbku;)V

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lbmx;->e(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Iterable;Lbku;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 623
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lbnc;->c(Ljava/util/Iterator;Lbku;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Iterable;Lbku;)Lbkr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)",
            "Lbkr",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 675
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lbnc;->d(Ljava/util/Iterator;Lbku;)Lbkr;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 337
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lbnk;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Iterator",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Lbmz;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lbmz;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

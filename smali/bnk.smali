.class public final Lbnk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lbnk;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    invoke-static {v0, p0}, Lbnc;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 161
    return-object v0
.end method

.method public static a(Ljava/util/List;Lbkl;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TF;>;",
            "Lbkl",
            "<-TF;+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 543
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lbnl;

    invoke-direct {v0, p0, p1}, Lbnl;-><init>(Ljava/util/List;Lbkl;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbnn;

    invoke-direct {v0, p0, p1}, Lbnn;-><init>(Ljava/util/List;Lbkl;)V

    goto :goto_0
.end method

.method static a(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 944
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 953
    :cond_0
    :goto_0
    return v0

    .line 947
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_2

    move v0, v1

    .line 948
    goto :goto_0

    .line 951
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 953
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, Lbnc;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static b(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 975
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 976
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lbkq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    .line 981
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static c(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 988
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 989
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lbkq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    .line 994
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

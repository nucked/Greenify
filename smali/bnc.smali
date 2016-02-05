.class public final Lbnc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lboz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lboz",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lbnd;

    invoke-direct {v0}, Lbnd;-><init>()V

    sput-object v0, Lbnc;->a:Lboz;

    .line 127
    new-instance v0, Lbng;

    invoke-direct {v0}, Lbng;-><init>()V

    sput-object v0, Lbnc;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a()Lboy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lboy",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lbnc;->b()Lboz;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lboy;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lboy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1073
    new-instance v0, Lbnf;

    invoke-direct {v0, p0}, Lbnf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lboy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lboy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1031
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lbnc;->a([Ljava/lang/Object;III)Lboz;

    move-result-object v0

    return-object v0
.end method

.method static a([Ljava/lang/Object;III)Lboz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lboz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1043
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lbkt;->a(Z)V

    .line 1044
    add-int v0, p1, p2

    .line 1047
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lbkt;->a(III)V

    .line 1048
    invoke-static {p3, p2}, Lbkt;->b(II)I

    .line 1049
    if-nez p2, :cond_1

    .line 1050
    invoke-static {}, Lbnc;->b()Lboz;

    move-result-object v0

    .line 1058
    :goto_1
    return-object v0

    .line 1043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1058
    :cond_1
    new-instance v0, Lbne;

    invoke-direct {v0, p2, p3, p0, p1}, Lbne;-><init>(II[Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public static a(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lbml;->a:Lbkm;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lbkm;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;Lbkl;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TF;>;",
            "Lbkl",
            "<-TF;+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 795
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v0, Lbnj;

    invoke-direct {v0, p0, p1}, Lbnj;-><init>(Ljava/util/Iterator;Lbkl;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const/4 v0, 0x0

    .line 361
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 364
    :cond_0
    return v0
.end method

.method public static a(Ljava/util/Iterator;Lbku;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const/4 v0, 0x0

    .line 234
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lbku;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 237
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lbkv;->a(Ljava/util/Collection;)Lbku;

    move-result-object v0

    invoke-static {p0, v0}, Lbnc;->a(Ljava/util/Iterator;Lbku;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    :cond_1
    :goto_0
    return v0

    .line 273
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 274
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Lbkq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 279
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {p0}, Lbnk;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 345
    invoke-static {v0, p1}, Lbmx;->a(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Lbku;)Lboy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)",
            "Lboy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 646
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v0, Lbni;

    invoke-direct {v0, p0, p1}, Lbni;-><init>(Ljava/util/Iterator;Lbku;)V

    return-object v0
.end method

.method static b()Lboz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lboz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lbnc;->a:Lboz;

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 531
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v0, Lbnh;

    invoke-direct {v0, p0}, Lbnh;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p1}, Lbkv;->a(Ljava/util/Collection;)Lbku;

    move-result-object v0

    invoke-static {v0}, Lbkv;->a(Lbku;)Lbku;

    move-result-object v0

    invoke-static {p0, v0}, Lbnc;->a(Ljava/util/Iterator;Lbku;)Z

    move-result v0

    return v0
.end method

.method static c(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1010
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1013
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1015
    :cond_0
    return-void
.end method

.method public static c(Ljava/util/Iterator;Lbku;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {p0, p1}, Lbnc;->e(Ljava/util/Iterator;Lbku;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/util/Iterator;Lbku;)Lbkr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)",
            "Lbkr",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {p0, p1}, Lbnc;->b(Ljava/util/Iterator;Lbku;)Lboy;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lboy;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lboy;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbkr;->a(Ljava/lang/Object;)Lbkr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lbkr;->d()Lbkr;

    move-result-object v0

    goto :goto_0
.end method

.method static d(Ljava/util/Iterator;)Ljava/util/ListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1316
    check-cast p0, Ljava/util/ListIterator;

    return-object p0
.end method

.method public static e(Ljava/util/Iterator;Lbku;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lbku",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 775
    const-string v0, "predicate"

    invoke-static {p1, v0}, Lbkt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 778
    invoke-interface {p1, v1}, Lbku;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    :goto_1
    return v0

    .line 776
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

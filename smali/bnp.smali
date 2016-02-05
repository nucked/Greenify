.class public final Lbnp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lbkp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3458
    sget-object v0, Lbml;->a:Lbkm;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lbkm;->c(Ljava/lang/String;)Lbkp;

    move-result-object v0

    sput-object v0, Lbnp;->a:Lbkp;

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 205
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lbmk;->a(ILjava/lang/String;)I

    .line 206
    add-int/lit8 v0, p0, 0x1

    .line 211
    :goto_0
    return v0

    .line 208
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 209
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_0

    .line 211
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static a()Lbkl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lbkl",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;TK;>;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lbnt;->a:Lbnt;

    return-object v0
.end method

.method static a(Lbnx;)Lbkl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lbnx",
            "<-TK;-TV1;TV2;>;)",
            "Lbkl",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1867
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    new-instance v0, Lbns;

    invoke-direct {v0, p0}, Lbns;-><init>(Lbnx;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3351
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3353
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3357
    :goto_0
    return-object v0

    .line 3354
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3356
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lbnp;->a()Lbkl;

    move-result-object v0

    invoke-static {p0, v0}, Lbnc;->a(Ljava/util/Iterator;Lbkl;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static a(Lbnx;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V2:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lbnx",
            "<-TK;-TV1;TV2;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1847
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    new-instance v0, Lbnr;

    invoke-direct {v0, p1, p0}, Lbnr;-><init>(Ljava/util/Map$Entry;Lbnx;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1207
    new-instance v0, Lbms;

    invoke-direct {v0, p0, p1}, Lbms;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lbnx;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lbnx",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1642
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1643
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lbnp;->a(Ljava/util/SortedMap;Lbnx;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1645
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lboa;

    invoke-direct {v0, p0, p1}, Lboa;-><init>(Ljava/util/Map;Lbnx;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/NavigableMap;Lbnx;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;",
            "Lbnx",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1763
    new-instance v0, Lboc;

    invoke-direct {v0, p0, p1}, Lboc;-><init>(Ljava/util/NavigableMap;Lbnx;)V

    return-object v0
.end method

.method public static a(Ljava/util/SortedMap;Lbnx;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lbnx",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1703
    invoke-static {p0, p1}, Lbol;->a(Ljava/util/SortedMap;Lbnx;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method static b()Lbkl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lbkl",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lbnt;->b:Lbnt;

    return-object v0
.end method

.method static b(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lbnp;->b()Lbkl;

    move-result-object v0

    invoke-static {p0, v0}, Lbnc;->a(Ljava/util/Iterator;Lbkl;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/util/SortedMap;Lbnx;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lbnx",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1769
    new-instance v0, Lbod;

    invoke-direct {v0, p0, p1}, Lbod;-><init>(Ljava/util/SortedMap;Lbnx;)V

    return-object v0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3366
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3372
    :goto_0
    return v0

    .line 3369
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3371
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3381
    invoke-static {p0}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3383
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3387
    :goto_0
    return-object v0

    .line 3384
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3386
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.class public Lcom/firebase/client/core/view/QuerySpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final params:Lcom/firebase/client/core/view/QueryParams;

.field private final path:Lcom/firebase/client/core/Path;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/firebase/client/core/view/QuerySpec;->path:Lcom/firebase/client/core/Path;

    .line 16
    iput-object p2, p0, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    .line 17
    return-void
.end method

.method public static defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/firebase/client/core/view/QuerySpec;

    sget-object v1, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {v0, p0, v1}, Lcom/firebase/client/core/view/QuerySpec;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public static fromPathAndQueryObject(Lcom/firebase/client/core/Path;Ljava/util/Map;)Lcom/firebase/client/core/view/QuerySpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/core/view/QuerySpec;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p1}, Lcom/firebase/client/core/view/QueryParams;->fromQueryObject(Ljava/util/Map;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/firebase/client/core/view/QuerySpec;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/core/view/QuerySpec;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 57
    :cond_3
    check-cast p1, Lcom/firebase/client/core/view/QuerySpec;

    .line 59
    iget-object v2, p0, Lcom/firebase/client/core/view/QuerySpec;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p1, Lcom/firebase/client/core/view/QuerySpec;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 60
    :cond_4
    iget-object v2, p0, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    iget-object v3, p1, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/view/QueryParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getIndex()Lcom/firebase/client/snapshot/Index;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/firebase/client/core/view/QueryParams;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/firebase/client/core/view/QuerySpec;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/firebase/client/core/view/QuerySpec;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->hashCode()I

    move-result v0

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryParams;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->isDefault()Z

    move-result v0

    return v0
.end method

.method public loadsAllData()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->loadsAllData()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/firebase/client/core/view/QuerySpec;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/QuerySpec;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

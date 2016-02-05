.class final Lcom/firebase/client/core/persistence/TrackedQueryManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/utilities/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Predicate",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/firebase/client/core/view/QueryParams;",
        "Lcom/firebase/client/core/persistence/TrackedQuery;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager$1;->evaluate(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public evaluate(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 23
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

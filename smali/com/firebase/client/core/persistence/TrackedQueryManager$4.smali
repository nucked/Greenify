.class final Lcom/firebase/client/core/persistence/TrackedQueryManager$4;
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
        "Lcom/firebase/client/core/persistence/TrackedQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/firebase/client/core/persistence/TrackedQuery;)Z
    .locals 1

    .prologue
    .line 45
    # getter for: Lcom/firebase/client/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;
    invoke-static {}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->access$000()Lcom/firebase/client/core/utilities/Predicate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/firebase/client/core/persistence/TrackedQuery;

    invoke-virtual {p0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager$4;->evaluate(Lcom/firebase/client/core/persistence/TrackedQuery;)Z

    move-result v0

    return v0
.end method

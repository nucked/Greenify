.class final Lcom/firebase/client/core/persistence/PruneForest$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Boolean;)Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/firebase/client/core/persistence/PruneForest$2;->evaluate(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

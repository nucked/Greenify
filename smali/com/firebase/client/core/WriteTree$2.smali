.class final Lcom/firebase/client/core/WriteTree$2;
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
        "Lcom/firebase/client/core/UserWriteRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/firebase/client/core/UserWriteRecord;)Z
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->isVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 372
    check-cast p1, Lcom/firebase/client/core/UserWriteRecord;

    invoke-virtual {p0, p1}, Lcom/firebase/client/core/WriteTree$2;->evaluate(Lcom/firebase/client/core/UserWriteRecord;)Z

    move-result v0

    return v0
.end method

.class public Lcom/firebase/client/collection/LLRBRedValueNode;
.super Lcom/firebase/client/collection/LLRBValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/client/collection/LLRBValueNode",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/firebase/client/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .line 9
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/client/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;)",
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBRedValueNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 28
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBRedValueNode;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 29
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBRedValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object p3

    .line 30
    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBRedValueNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object p4

    .line 31
    :cond_3
    new-instance v0, Lcom/firebase/client/collection/LLRBRedValueNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/firebase/client/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    return-object v0
.end method

.method protected getColor()Lcom/firebase/client/collection/LLRBNode$Color;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    return-object v0
.end method

.method public isRed()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

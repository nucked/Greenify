.class public abstract Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
.super Lcom/firebase/client/collection/LLRBNode$NodeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
        "<",
        "Lcom/firebase/client/snapshot/ChildKey;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V
.end method

.method public visitEntry(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;->visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 59
    return-void
.end method

.method public bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcom/firebase/client/snapshot/ChildKey;

    check-cast p2, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;->visitEntry(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-void
.end method

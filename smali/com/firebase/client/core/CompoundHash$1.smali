.class final Lcom/firebase/client/core/CompoundHash$1;
.super Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
.source "SourceFile"


# instance fields
.field final synthetic val$state:Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/firebase/client/core/CompoundHash$1;->val$state:Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$1;->val$state:Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    # invokes: Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->startChild(Lcom/firebase/client/snapshot/ChildKey;)V
    invoke-static {v0, p1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->access$400(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;Lcom/firebase/client/snapshot/ChildKey;)V

    .line 214
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$1;->val$state:Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    # invokes: Lcom/firebase/client/core/CompoundHash;->processNode(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V
    invoke-static {p2, v0}, Lcom/firebase/client/core/CompoundHash;->access$500(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V

    .line 215
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash$1;->val$state:Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    # invokes: Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->endChild()V
    invoke-static {v0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->access$600(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V

    .line 216
    return-void
.end method

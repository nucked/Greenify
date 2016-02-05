.class public Lcom/firebase/client/core/CompoundHash;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Path;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of posts need to be n-1 for n hashes in CompoundHash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/firebase/client/core/CompoundHash;->posts:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/firebase/client/core/CompoundHash;->hashes:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic access$500(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V
    .locals 0

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/firebase/client/core/CompoundHash;->processNode(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V

    return-void
.end method

.method public static fromNode(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundHash;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/firebase/client/core/CompoundHash$SimpleSizeSplitStrategy;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/CompoundHash$SimpleSizeSplitStrategy;-><init>(Lcom/firebase/client/snapshot/Node;)V

    invoke-static {p0, v0}, Lcom/firebase/client/core/CompoundHash;->fromNode(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/CompoundHash$SplitStrategy;)Lcom/firebase/client/core/CompoundHash;

    move-result-object v0

    return-object v0
.end method

.method public static fromNode(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/CompoundHash$SplitStrategy;)Lcom/firebase/client/core/CompoundHash;
    .locals 3

    .prologue
    .line 190
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/firebase/client/core/CompoundHash;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/CompoundHash;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 196
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v1, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;

    invoke-direct {v1, p1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;-><init>(Lcom/firebase/client/core/CompoundHash$SplitStrategy;)V

    .line 194
    invoke-static {p0, v1}, Lcom/firebase/client/core/CompoundHash;->processNode(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V

    .line 195
    # invokes: Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->finishHashing()V
    invoke-static {v1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->access$000(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V

    .line 196
    new-instance v0, Lcom/firebase/client/core/CompoundHash;

    # getter for: Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;
    invoke-static {v1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->access$100(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;
    invoke-static {v1}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->access$200(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/firebase/client/core/CompoundHash;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static processNode(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V
    .locals 3

    .prologue
    .line 201
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    check-cast p0, Lcom/firebase/client/snapshot/LeafNode;

    # invokes: Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->processLeaf(Lcom/firebase/client/snapshot/LeafNode;)V
    invoke-static {p1, p0}, Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;->access$300(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;Lcom/firebase/client/snapshot/LeafNode;)V

    .line 220
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t calculate hash on empty node!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    instance-of v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v0, :cond_2

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected children node, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_2
    check-cast p0, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 210
    new-instance v0, Lcom/firebase/client/core/CompoundHash$1;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/CompoundHash$1;-><init>(Lcom/firebase/client/core/CompoundHash$CompoundHashBuilder;)V

    .line 218
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHashes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash;->hashes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/firebase/client/core/CompoundHash;->posts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

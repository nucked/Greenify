.class public Lcom/firebase/client/utilities/NodeSizeEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LEAF_PRIORITY_OVERHEAD:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/firebase/client/utilities/NodeSizeEstimator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static estimateLeafNodeSize(Lcom/firebase/client/snapshot/LeafNode;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/LeafNode",
            "<*>;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x8

    .line 18
    instance-of v2, p0, Lcom/firebase/client/snapshot/DoubleNode;

    if-eqz v2, :cond_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    :goto_1
    return-wide v0

    .line 20
    :cond_1
    instance-of v2, p0, Lcom/firebase/client/snapshot/LongNode;

    if-nez v2, :cond_0

    .line 22
    instance-of v0, p0, Lcom/firebase/client/snapshot/BooleanNode;

    if-eqz v0, :cond_2

    .line 23
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 24
    :cond_2
    instance-of v0, p0, Lcom/firebase/client/snapshot/StringNode;

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    goto :goto_0

    .line 27
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown leaf node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_4
    const-wide/16 v2, 0x18

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/LeafNode;

    invoke-static {v0}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/firebase/client/snapshot/LeafNode;)J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public static estimateSerializedNodeSize(Lcom/firebase/client/snapshot/Node;)J
    .locals 10

    .prologue
    const-wide/16 v4, 0x4

    .line 37
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v2, v4

    .line 53
    :cond_0
    :goto_0
    return-wide v2

    .line 39
    :cond_1
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    check-cast p0, Lcom/firebase/client/snapshot/LeafNode;

    invoke-static {p0}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/firebase/client/snapshot/LeafNode;)J

    move-result-wide v2

    goto :goto_0

    .line 42
    :cond_2
    sget-boolean v0, Lcom/firebase/client/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 43
    :cond_3
    const-wide/16 v0, 0x1

    .line 44
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 45
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 46
    add-long/2addr v2, v4

    .line 47
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/firebase/client/snapshot/Node;)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const-wide/16 v0, 0xc

    add-long/2addr v2, v0

    .line 51
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/LeafNode;

    invoke-static {v0}, Lcom/firebase/client/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/firebase/client/snapshot/LeafNode;)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public static nodeCount(Lcom/firebase/client/snapshot/Node;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    sget-boolean v1, Lcom/firebase/client/utilities/NodeSizeEstimator;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    instance-of v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 65
    :cond_2
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 66
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/NodeSizeEstimator;->nodeCount(Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 67
    goto :goto_1

    :cond_3
    move v0, v1

    .line 68
    goto :goto_0
.end method

.class public Lcom/firebase/client/core/RangeMerge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final optExclusiveStart:Lcom/firebase/client/core/Path;

.field private final optInclusiveEnd:Lcom/firebase/client/core/Path;

.field private final snap:Lcom/firebase/client/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/firebase/client/core/RangeMerge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/RangeMerge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    .line 26
    iput-object p2, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    .line 27
    iput-object p3, p0, Lcom/firebase/client/core/RangeMerge;->snap:Lcom/firebase/client/snapshot/Node;

    .line 28
    return-void
.end method

.method private updateRangeInNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 43
    iget-object v0, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    if-nez v0, :cond_1

    move v0, v1

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    if-nez v2, :cond_2

    const/4 v2, -0x1

    .line 45
    :goto_1
    iget-object v3, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v3}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 46
    :goto_2
    iget-object v5, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v5}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 47
    :goto_3
    if-lez v0, :cond_5

    if-gez v2, :cond_5

    if-nez v1, :cond_5

    .line 91
    :cond_0
    :goto_4
    return-object p3

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Path;->compareTo(Lcom/firebase/client/core/Path;)I

    move-result v0

    goto :goto_0

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v2}, Lcom/firebase/client/core/Path;->compareTo(Lcom/firebase/client/core/Path;)I

    move-result v2

    goto :goto_1

    :cond_3
    move v3, v4

    .line 45
    goto :goto_2

    :cond_4
    move v1, v4

    .line 46
    goto :goto_3

    .line 50
    :cond_5
    if-lez v0, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    :cond_6
    if-lez v0, :cond_a

    if-nez v2, :cond_a

    .line 53
    sget-boolean v0, Lcom/firebase/client/core/RangeMerge;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_7
    sget-boolean v0, Lcom/firebase/client/core/RangeMerge;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_8
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object p3

    goto :goto_4

    :cond_9
    move-object p3, p2

    .line 60
    goto :goto_4

    .line 62
    :cond_a
    if-nez v3, :cond_b

    if-eqz v1, :cond_11

    .line 65
    :cond_b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 66
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 67
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 69
    :cond_c
    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 70
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 72
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 76
    :cond_e
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 80
    invoke-interface {p2, v0}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 81
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-interface {p2, v0}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-interface {p3, v0}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/firebase/client/core/RangeMerge;->updateRangeInNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 83
    if-eq v4, v3, :cond_13

    .line 84
    invoke-interface {v1, v0, v4}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    :goto_8
    move-object v1, v0

    .line 86
    goto :goto_7

    :cond_10
    move-object p3, v1

    .line 87
    goto/16 :goto_4

    .line 90
    :cond_11
    sget-boolean v1, Lcom/firebase/client/core/RangeMerge;->$assertionsDisabled:Z

    if-nez v1, :cond_12

    if-gtz v2, :cond_12

    if-lez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    move-object p3, p2

    .line 91
    goto/16 :goto_4

    :cond_13
    move-object v0, v1

    goto :goto_8
.end method


# virtual methods
.method public applyTo(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/RangeMerge;->snap:Lcom/firebase/client/snapshot/Node;

    invoke-direct {p0, v0, p1, v1}, Lcom/firebase/client/core/RangeMerge;->updateRangeInNode(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method getEnd()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method getStart()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangeMerge{optExclusiveStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/RangeMerge;->optExclusiveStart:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", optInclusiveEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/RangeMerge;->optInclusiveEnd:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/RangeMerge;->snap:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

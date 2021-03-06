.class public abstract Lcom/firebase/client/snapshot/LeafNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/snapshot/Node;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/firebase/client/snapshot/LeafNode;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/firebase/client/snapshot/Node;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private lazyHash:Ljava/lang/String;

.field protected final priority:Lcom/firebase/client/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/firebase/client/snapshot/LeafNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/snapshot/LeafNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    .line 30
    return-void
.end method

.method private static compareLongDoubleNodes(Lcom/firebase/client/snapshot/LongNode;Lcom/firebase/client/snapshot/DoubleNode;)I
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LongNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/DoubleNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract compareLeafValues(Lcom/firebase/client/snapshot/LeafNode;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public compareTo(Lcom/firebase/client/snapshot/Node;)I
    .locals 2

    .prologue
    .line 166
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    .line 168
    :cond_0
    instance-of v0, p1, Lcom/firebase/client/snapshot/ChildrenNode;

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, -0x1

    goto :goto_0

    .line 171
    :cond_1
    sget-boolean v0, Lcom/firebase/client/snapshot/LeafNode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Node is not leaf node!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 172
    :cond_2
    instance-of v0, p0, Lcom/firebase/client/snapshot/LongNode;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/firebase/client/snapshot/DoubleNode;

    if-eqz v0, :cond_3

    .line 173
    check-cast p0, Lcom/firebase/client/snapshot/LongNode;

    check-cast p1, Lcom/firebase/client/snapshot/DoubleNode;

    invoke-static {p0, p1}, Lcom/firebase/client/snapshot/LeafNode;->compareLongDoubleNodes(Lcom/firebase/client/snapshot/LongNode;Lcom/firebase/client/snapshot/DoubleNode;)I

    move-result v0

    goto :goto_0

    .line 174
    :cond_3
    instance-of v0, p0, Lcom/firebase/client/snapshot/DoubleNode;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/firebase/client/snapshot/LongNode;

    if-eqz v0, :cond_4

    .line 175
    check-cast p1, Lcom/firebase/client/snapshot/LongNode;

    check-cast p0, Lcom/firebase/client/snapshot/DoubleNode;

    invoke-static {p1, p0}, Lcom/firebase/client/snapshot/LeafNode;->compareLongDoubleNodes(Lcom/firebase/client/snapshot/LongNode;Lcom/firebase/client/snapshot/DoubleNode;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 177
    :cond_4
    check-cast p1, Lcom/firebase/client/snapshot/LeafNode;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/LeafNode;->leafCompare(Lcom/firebase/client/snapshot/LeafNode;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/LeafNode;->compareTo(Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object p0, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object p0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/LeafNode;->getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getLeafType()Lcom/firebase/client/snapshot/LeafNode$LeafType;
.end method

.method public getPredecessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method protected getPriorityHash(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    sget-object v0, Lcom/firebase/client/snapshot/LeafNode$1;->$SwitchMap$com$firebase$client$snapshot$Node$HashVersion:[I

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/Node$HashVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hash version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, ""

    .line 140
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/firebase/client/snapshot/Node;->getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSuccessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 105
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v1, ".value"

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, ".priority"

    iget-object v2, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected leafCompare(Lcom/firebase/client/snapshot/LeafNode;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/LeafNode",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getLeafType()Lcom/firebase/client/snapshot/LeafNode$LeafType;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/LeafNode;->getLeafType()Lcom/firebase/client/snapshot/LeafNode$LeafType;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/firebase/client/snapshot/LeafNode$LeafType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/LeafNode;->compareLeafValues(Lcom/firebase/client/snapshot/LeafNode;)I

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/firebase/client/snapshot/LeafNode$LeafType;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    goto :goto_0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/LeafNode;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-object p2

    .line 63
    :cond_0
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-nez v1, :cond_1

    move-object p2, p0

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    sget-boolean v1, Lcom/firebase/client/snapshot/LeafNode;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_2
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/firebase/client/snapshot/EmptyNode;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/snapshot/LeafNode;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0
.end method

.method public updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0, p2}, Lcom/firebase/client/snapshot/LeafNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    .line 119
    :cond_0
    :goto_0
    return-object p0

    .line 116
    :cond_1
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/snapshot/EmptyNode;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    goto :goto_0
.end method

.class public Lcom/firebase/client/snapshot/LongNode;
.super Lcom/firebase/client/snapshot/LeafNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/client/snapshot/LeafNode",
        "<",
        "Lcom/firebase/client/snapshot/LongNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0, p2}, Lcom/firebase/client/snapshot/LeafNode;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/snapshot/LongNode;->value:J

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic compareLeafValues(Lcom/firebase/client/snapshot/LeafNode;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/firebase/client/snapshot/LongNode;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/LongNode;->compareLeafValues(Lcom/firebase/client/snapshot/LongNode;)I

    move-result v0

    return v0
.end method

.method protected compareLeafValues(Lcom/firebase/client/snapshot/LongNode;)I
    .locals 4

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/firebase/client/snapshot/LongNode;->value:J

    iget-wide v2, p1, Lcom/firebase/client/snapshot/LongNode;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/firebase/client/utilities/Utilities;->compareLongs(JJ)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 50
    instance-of v1, p1, Lcom/firebase/client/snapshot/LongNode;

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    check-cast p1, Lcom/firebase/client/snapshot/LongNode;

    .line 54
    iget-wide v2, p0, Lcom/firebase/client/snapshot/LongNode;->value:J

    iget-wide v4, p1, Lcom/firebase/client/snapshot/LongNode;->value:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/snapshot/LongNode;->priority:Lcom/firebase/client/snapshot/Node;

    iget-object v2, p1, Lcom/firebase/client/snapshot/LongNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/LongNode;->getPriorityHash(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/firebase/client/snapshot/LongNode;->value:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/firebase/client/utilities/Utilities;->doubleToHashString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method protected getLeafType()Lcom/firebase/client/snapshot/LeafNode$LeafType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/firebase/client/snapshot/LeafNode$LeafType;->Number:Lcom/firebase/client/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/firebase/client/snapshot/LongNode;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/firebase/client/snapshot/LongNode;->value:J

    iget-wide v2, p0, Lcom/firebase/client/snapshot/LongNode;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/LongNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/LongNode;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/firebase/client/snapshot/LongNode;

    iget-wide v2, p0, Lcom/firebase/client/snapshot/LongNode;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/firebase/client/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/LongNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/LongNode;

    move-result-object v0

    return-object v0
.end method

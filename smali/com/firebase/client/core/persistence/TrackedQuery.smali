.class public Lcom/firebase/client/core/persistence/TrackedQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final active:Z

.field public final complete:Z

.field public final id:J

.field public final lastUse:J

.field public final querySpec:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method public constructor <init>(JLcom/firebase/client/core/view/QuerySpec;JZZ)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    .line 14
    invoke-virtual {p3}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create TrackedQuery for a non-default query that loads all data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iput-object p3, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    .line 18
    iput-wide p4, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    .line 19
    iput-boolean p6, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    .line 20
    iput-boolean p7, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p1, p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 40
    :cond_3
    check-cast p1, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 41
    iget-wide v2, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    iget-wide v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    iget-object v3, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    iget-wide v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    iget-boolean v3, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    iget-boolean v3, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    return v0
.end method

.method public setActiveState(Z)Lcom/firebase/client/core/persistence/TrackedQuery;
    .locals 8

    .prologue
    .line 32
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    iget-wide v4, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    iget-boolean v6, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/persistence/TrackedQuery;-><init>(JLcom/firebase/client/core/view/QuerySpec;JZZ)V

    return-object v0
.end method

.method public setComplete()Lcom/firebase/client/core/persistence/TrackedQuery;
    .locals 8

    .prologue
    .line 28
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    iget-wide v4, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/persistence/TrackedQuery;-><init>(JLcom/firebase/client/core/view/QuerySpec;JZZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackedQuery{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", querySpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->lastUse:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastUse(J)Lcom/firebase/client/core/persistence/TrackedQuery;
    .locals 9

    .prologue
    .line 24
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    iget-boolean v6, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    iget-boolean v7, p0, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/persistence/TrackedQuery;-><init>(JLcom/firebase/client/core/view/QuerySpec;JZZ)V

    return-object v0
.end method

.class public Lcom/firebase/client/core/UserWriteRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final merge:Lcom/firebase/client/core/CompoundWrite;

.field private final overwrite:Lcom/firebase/client/snapshot/Node;

.field private final path:Lcom/firebase/client/core/Path;

.field private final visible:Z

.field private final writeId:J


# direct methods
.method public constructor <init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/firebase/client/core/UserWriteRecord;->writeId:J

    .line 23
    iput-object p3, p0, Lcom/firebase/client/core/UserWriteRecord;->path:Lcom/firebase/client/core/Path;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    .line 25
    iput-object p4, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/core/UserWriteRecord;->visible:Z

    .line 27
    return-void
.end method

.method public constructor <init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/firebase/client/core/UserWriteRecord;->writeId:J

    .line 15
    iput-object p3, p0, Lcom/firebase/client/core/UserWriteRecord;->path:Lcom/firebase/client/core/Path;

    .line 16
    iput-object p4, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    .line 18
    iput-boolean p5, p0, Lcom/firebase/client/core/UserWriteRecord;->visible:Z

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 68
    :cond_3
    check-cast p1, Lcom/firebase/client/core/UserWriteRecord;

    .line 70
    iget-wide v2, p0, Lcom/firebase/client/core/UserWriteRecord;->writeId:J

    iget-wide v4, p1, Lcom/firebase/client/core/UserWriteRecord;->writeId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 71
    :cond_4
    iget-object v2, p0, Lcom/firebase/client/core/UserWriteRecord;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p1, Lcom/firebase/client/core/UserWriteRecord;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 72
    :cond_5
    iget-boolean v2, p0, Lcom/firebase/client/core/UserWriteRecord;->visible:Z

    iget-boolean v3, p1, Lcom/firebase/client/core/UserWriteRecord;->visible:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 73
    :cond_6
    iget-object v2, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    iget-object v3, p1, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 74
    :cond_7
    iget-object v2, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    iget-object v3, p1, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/CompoundWrite;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    .line 73
    :cond_8
    iget-object v2, p1, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    if-eqz v2, :cond_7

    :cond_9
    move v0, v1

    goto :goto_0

    .line 74
    :cond_a
    iget-object v2, p1, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getMerge()Lcom/firebase/client/core/CompoundWrite;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access merge when write is an overwrite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    return-object v0
.end method

.method public getOverwrite()Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access overwrite when write is a merge!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public getWriteId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/firebase/client/core/UserWriteRecord;->writeId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-wide v2, p0, Lcom/firebase/client/core/UserWriteRecord;->writeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/firebase/client/core/UserWriteRecord;->visible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/core/UserWriteRecord;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v1}, Lcom/firebase/client/core/CompoundWrite;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 87
    return v0

    :cond_1
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public isMerge()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverwrite()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/firebase/client/core/UserWriteRecord;->visible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserWriteRecord{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/firebase/client/core/UserWriteRecord;->writeId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/UserWriteRecord;->path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/firebase/client/core/UserWriteRecord;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " overwrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/UserWriteRecord;->overwrite:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " merge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/UserWriteRecord;->merge:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

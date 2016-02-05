.class public Lcom/firebase/client/core/Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final tagNumber:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/firebase/client/core/Tag;->tagNumber:J

    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v0

    .line 24
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

    .line 26
    :cond_3
    check-cast p1, Lcom/firebase/client/core/Tag;

    .line 28
    iget-wide v2, p0, Lcom/firebase/client/core/Tag;->tagNumber:J

    iget-wide v4, p1, Lcom/firebase/client/core/Tag;->tagNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getTagNumber()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/firebase/client/core/Tag;->tagNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/firebase/client/core/Tag;->tagNumber:J

    iget-wide v2, p0, Lcom/firebase/client/core/Tag;->tagNumber:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag{tagNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/firebase/client/core/Tag;->tagNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

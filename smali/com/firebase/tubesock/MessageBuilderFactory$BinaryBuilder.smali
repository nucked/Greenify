.class Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/tubesock/MessageBuilderFactory$Builder;


# instance fields
.field private pendingByteCount:I

.field private pendingBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public appendBytes([B)Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public toMessage()Lcom/firebase/tubesock/WebSocketMessage;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 42
    iget v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    new-array v4, v0, [B

    move v1, v2

    move v3, v2

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 46
    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    array-length v0, v0

    add-int/2addr v3, v0

    .line 44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/firebase/tubesock/WebSocketMessage;

    invoke-direct {v0, v4}, Lcom/firebase/tubesock/WebSocketMessage;-><init>([B)V

    return-object v0
.end method

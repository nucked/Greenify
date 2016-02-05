.class Lcom/firebase/client/collection/ArraySortedMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field currentPos:I

.field final synthetic this$0:Lcom/firebase/client/collection/ArraySortedMap;

.field final synthetic val$pos:I

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lcom/firebase/client/collection/ArraySortedMap;IZ)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->this$0:Lcom/firebase/client/collection/ArraySortedMap;

    iput p2, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->val$pos:I

    iput-boolean p3, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->val$reverse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iget v0, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->val$pos:I

    iput v0, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->currentPos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    iget-boolean v2, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->val$reverse:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->currentPos:I

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->currentPos:I

    iget-object v3, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->this$0:Lcom/firebase/client/collection/ArraySortedMap;

    # getter for: Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/firebase/client/collection/ArraySortedMap;->access$000(Lcom/firebase/client/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/firebase/client/collection/ArraySortedMap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->this$0:Lcom/firebase/client/collection/ArraySortedMap;

    # getter for: Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/firebase/client/collection/ArraySortedMap;->access$000(Lcom/firebase/client/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->currentPos:I

    aget-object v1, v0, v1

    .line 144
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->this$0:Lcom/firebase/client/collection/ArraySortedMap;

    # getter for: Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/firebase/client/collection/ArraySortedMap;->access$100(Lcom/firebase/client/collection/ArraySortedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->currentPos:I

    aget-object v2, v0, v2

    .line 145
    iget-boolean v0, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->val$reverse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->currentPos:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->currentPos:I

    .line 146
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 145
    :cond_0
    iget v0, p0, Lcom/firebase/client/collection/ArraySortedMap$1;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove elements from ImmutableSortedMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

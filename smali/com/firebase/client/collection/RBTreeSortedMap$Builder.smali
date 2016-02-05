.class Lcom/firebase/client/collection/RBTreeSortedMap$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field private leaf:Lcom/firebase/client/collection/LLRBValueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private root:Lcom/firebase/client/collection/LLRBValueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBValueNode",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    .line 252
    iput-object p2, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->values:Ljava/util/Map;

    .line 253
    iput-object p3, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    .line 254
    return-void
.end method

.method private buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 262
    if-nez p2, :cond_0

    .line 263
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 266
    new-instance v0, Lcom/firebase/client/collection/LLRBBlackValueNode;

    invoke-direct {p0, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/firebase/client/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    goto :goto_0

    .line 268
    :cond_1
    div-int/lit8 v0, p2, 0x2

    .line 269
    add-int v1, p1, v0

    .line 270
    invoke-direct {p0, p1, v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v2

    .line 271
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3, v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v3

    .line 272
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 273
    new-instance v0, Lcom/firebase/client/collection/LLRBBlackValueNode;

    invoke-direct {p0, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/firebase/client/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    goto :goto_0
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/firebase/client/collection/RBTreeSortedMap",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v2, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;

    invoke-direct {v2, p0, p1, p2}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;)V

    .line 299
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 300
    new-instance v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;-><init>(I)V

    invoke-virtual {v0}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$Base1_2;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 301
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 302
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;

    .line 304
    iget v4, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    sub-int/2addr v1, v4

    .line 305
    iget-boolean v4, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->isOne:Z

    if-eqz v4, :cond_0

    .line 306
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    iget v0, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v2, v4, v0, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    move v0, v1

    :goto_1
    move v1, v0

    .line 312
    goto :goto_0

    .line 308
    :cond_0
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    iget v5, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v2, v4, v5, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    .line 309
    iget v4, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    sub-int/2addr v1, v4

    .line 310
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    iget v0, v0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {v2, v4, v0, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    move v0, v1

    goto :goto_1

    .line 313
    :cond_1
    new-instance v1, Lcom/firebase/client/collection/RBTreeSortedMap;

    iget-object v0, v2, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, v2}, Lcom/firebase/client/collection/RBTreeSortedMap;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/util/Comparator;Lcom/firebase/client/collection/RBTreeSortedMap$1;)V

    return-object v1

    :cond_2
    iget-object v0, v2, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    goto :goto_2
.end method

.method private buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    .line 279
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 281
    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    if-ne p1, v0, :cond_0

    .line 282
    new-instance v0, Lcom/firebase/client/collection/LLRBRedValueNode;

    invoke-direct {p0, v2}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/firebase/client/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    if-nez v1, :cond_1

    .line 287
    iput-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    .line 288
    iput-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    .line 293
    :goto_1
    return-void

    .line 284
    :cond_0
    new-instance v0, Lcom/firebase/client/collection/LLRBBlackValueNode;

    invoke-direct {p0, v2}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/firebase/client/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    invoke-virtual {v1, v0}, Lcom/firebase/client/collection/LLRBValueNode;->setLeft(Lcom/firebase/client/collection/LLRBNode;)V

    .line 291
    iput-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    goto :goto_1
.end method

.method private getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    invoke-interface {v1, p1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

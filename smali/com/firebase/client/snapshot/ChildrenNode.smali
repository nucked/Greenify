.class public Lcom/firebase/client/snapshot/ChildrenNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/snapshot/Node;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static NAME_ONLY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final children:Lcom/firebase/client/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;"
        }
    .end annotation
.end field

.field private lazyHash:Ljava/lang/String;

.field private final priority:Lcom/firebase/client/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/snapshot/ChildrenNode;->$assertionsDisabled:Z

    .line 17
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode$1;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/ChildrenNode$1;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/firebase/client/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->emptyMap(Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 66
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/snapshot/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/snapshot/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create empty ChildrenNode with priority!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    .line 74
    iput-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 75
    return-void
.end method

.method private static addIndentation(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 385
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "{ }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :goto_0
    return-void

    .line 393
    :cond_0
    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 395
    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    .line 396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/firebase/client/snapshot/ChildrenNode;

    if-eqz v1, :cond_1

    .line 399
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 400
    add-int/lit8 v1, p2, 0x2

    invoke-direct {v0, p1, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->toString(Ljava/lang/StringBuilder;I)V

    .line 404
    :goto_2
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 402
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 407
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    .line 408
    const-string v0, ".priority="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_3
    invoke-static {p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    .line 413
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/snapshot/Node;)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 313
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 317
    goto :goto_0

    .line 319
    :cond_2
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 321
    goto :goto_0

    .line 322
    :cond_3
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    .line 323
    goto :goto_0

    .line 324
    :cond_4
    sget-object v2, Lcom/firebase/client/snapshot/Node;->MAX_NODE:Lcom/firebase/client/snapshot/ChildrenNode;

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 325
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/ChildrenNode;->compareTo(Lcom/firebase/client/snapshot/Node;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 334
    if-nez p1, :cond_0

    move v0, v3

    .line 362
    :goto_0
    return v0

    .line 337
    :cond_0
    if-ne p1, p0, :cond_1

    move v0, v4

    .line 338
    goto :goto_0

    .line 340
    :cond_1
    instance-of v0, p1, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v0, :cond_2

    move v0, v3

    .line 341
    goto :goto_0

    .line 343
    :cond_2
    check-cast p1, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 344
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildrenNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 345
    goto :goto_0

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->size()I

    move-result v0

    iget-object v1, p1, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    move v0, v3

    .line 347
    goto :goto_0

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 350
    iget-object v0, p1, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 351
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_6
    move v0, v3

    .line 356
    goto :goto_0

    .line 359
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 360
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Something went wrong internally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v4

    .line 362
    goto/16 :goto_0
.end method

.method public forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;Z)V

    .line 239
    return-void
.end method

.method public forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;Z)V
    .locals 2

    .prologue
    .line 242
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    .line 257
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    new-instance v1, Lcom/firebase/client/snapshot/ChildrenNode$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/snapshot/ChildrenNode$2;-><init>(Lcom/firebase/client/snapshot/ChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    goto :goto_0
.end method

.method public getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getFirstChildKey()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getMinKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    return-object v0

    .line 191
    :cond_1
    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 157
    sget-object v0, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    if-eq p1, v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hashes on children nodes only supported for V1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const-string v0, "priority:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    sget-object v1, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getHashRepresentation(Lcom/firebase/client/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 169
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 171
    goto :goto_0

    :cond_3
    move v0, v2

    .line 170
    goto :goto_1

    .line 172
    :cond_4
    if-eqz v1, :cond_5

    .line 173
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityIndex;->getInstance()Lcom/firebase/client/snapshot/PriorityIndex;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 176
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 178
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 184
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    .line 223
    :goto_0
    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastChildKey()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getMaxKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getPredecessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getPriority()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public getSuccessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    move v4, v5

    move v6, v5

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 112
    if-eqz v2, :cond_7

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    if-ne v0, v9, :cond_2

    move v0, v5

    move v1, v4

    :goto_2
    move v2, v0

    move v4, v1

    .line 126
    goto :goto_1

    .line 116
    :cond_2
    invoke-static {v1}, Lcom/firebase/client/utilities/Utilities;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_7

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v2

    move v1, v4

    goto :goto_2

    :cond_3
    move v0, v5

    move v1, v4

    .line 122
    goto :goto_2

    .line 128
    :cond_4
    if-nez p1, :cond_5

    if-eqz v2, :cond_5

    mul-int/lit8 v0, v6, 0x2

    if-ge v4, v0, :cond_5

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v1, v4, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    :goto_3
    if-gt v5, v4, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 138
    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 139
    const-string v0, ".priority"

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v0, v7

    .line 141
    goto/16 :goto_0

    :cond_7
    move v0, v2

    move v1, v4

    goto :goto_2
.end method

.method public hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/ChildrenNode;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 370
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 371
    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 372
    goto :goto_0

    .line 373
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
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
    .line 283
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
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
    .line 287
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->reverseIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->toString(Ljava/lang/StringBuilder;I)V

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 270
    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-object p2

    .line 272
    :cond_0
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    sget-boolean v0, Lcom/firebase/client/snapshot/ChildrenNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->isValidPriority(Lcom/firebase/client/snapshot/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :cond_1
    invoke-virtual {p0, p2}, Lcom/firebase/client/snapshot/ChildrenNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 277
    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0
.end method

.method public updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0, p2}, Lcom/firebase/client/snapshot/ChildrenNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 296
    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 299
    :cond_1
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 302
    :cond_2
    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_3
    new-instance v1, Lcom/firebase/client/snapshot/ChildrenNode;

    iget-object v2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v1, v0, v2}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/snapshot/Node;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0
.end method

.class public Lcom/firebase/client/core/WriteTree;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_FILTER:Lcom/firebase/client/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allWrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private lastWriteId:Ljava/lang/Long;

.field private visibleWrites:Lcom/firebase/client/core/CompoundWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/firebase/client/core/WriteTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    .line 372
    new-instance v0, Lcom/firebase/client/core/WriteTree$2;

    invoke-direct {v0}, Lcom/firebase/client/core/WriteTree$2;-><init>()V

    sput-object v0, Lcom/firebase/client/core/WriteTree;->DEFAULT_FILTER:Lcom/firebase/client/core/utilities/Predicate;

    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    .line 37
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 39
    return-void
.end method

.method private static layerTree(Ljava/util/List;Lcom/firebase/client/core/utilities/Predicate;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;",
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 385
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/UserWriteRecord;

    .line 389
    invoke-interface {p1, v0}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 390
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 391
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 392
    invoke-virtual {p2, v3}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    invoke-static {p2, v3}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 394
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getOverwrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 419
    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {v3, p2}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 396
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getOverwrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-static {v3, p2}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 401
    :cond_1
    invoke-virtual {p2, v3}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    invoke-static {p2, v3}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 403
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/firebase/client/core/CompoundWrite;->addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v1

    move-object v0, v1

    .line 404
    goto :goto_1

    :cond_2
    invoke-virtual {v3, p2}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 405
    invoke-static {v3, p2}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 407
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/firebase/client/core/CompoundWrite;->addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_5

    .line 411
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 420
    :cond_4
    return-object v1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private recordContainsPath(Lcom/firebase/client/core/UserWriteRecord;Lcom/firebase/client/core/Path;)Z
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v0

    .line 353
    :goto_0
    return v0

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 349
    invoke-virtual {p1}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Path;

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTree()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    sget-object v1, Lcom/firebase/client/core/WriteTree;->DEFAULT_FILTER:Lcom/firebase/client/core/utilities/Predicate;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/firebase/client/core/WriteTree;->layerTree(Ljava/util/List;Lcom/firebase/client/core/utilities/Predicate;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 362
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/UserWriteRecord;

    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public addMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 64
    sget-boolean v0, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/firebase/client/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/firebase/client/core/UserWriteRecord;-><init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/CompoundWrite;->addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 67
    iput-object p3, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 68
    return-void
.end method

.method public addOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/lang/Long;Z)V
    .locals 7

    .prologue
    .line 52
    sget-boolean v0, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/firebase/client/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/core/UserWriteRecord;-><init>(JLcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    if-eqz p4, :cond_1

    .line 55
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 57
    :cond_1
    iput-object p3, p0, Lcom/firebase/client/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 58
    return-void
.end method

.method public calcCompleteChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p1, p2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 297
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 305
    :goto_0
    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p3, p2}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 303
    invoke-virtual {p3}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/client/core/WriteTree;->calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/firebase/client/core/WriteTree;->calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 174
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_1

    move-object p2, v0

    .line 214
    :cond_0
    :goto_0
    return-object p2

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    if-nez p2, :cond_2

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/CompoundWrite;->hasCompleteWrite(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object p2, v1

    .line 183
    goto :goto_0

    .line 186
    :cond_2
    if-eqz p2, :cond_3

    .line 191
    :goto_1
    invoke-virtual {v0, p2}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0

    .line 189
    :cond_3
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object p2

    goto :goto_1

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 196
    if-nez p4, :cond_5

    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    :cond_5
    if-nez p4, :cond_6

    if-nez p2, :cond_6

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/CompoundWrite;->hasCompleteWrite(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object p2, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_6
    new-instance v0, Lcom/firebase/client/core/WriteTree$1;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/firebase/client/core/WriteTree$1;-><init>(Lcom/firebase/client/core/WriteTree;ZLjava/util/List;Lcom/firebase/client/core/Path;)V

    .line 212
    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-static {v1, v0, p1}, Lcom/firebase/client/core/WriteTree;->layerTree(Ljava/util/List;Lcom/firebase/client/core/utilities/Predicate;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 213
    if-eqz p2, :cond_7

    .line 214
    :goto_2
    invoke-virtual {v0, p2}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    goto :goto_0

    .line 213
    :cond_7
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object p2

    goto :goto_2
.end method

.method public calcCompleteEventChildren(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 8

    .prologue
    .line 225
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 231
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    move-object v1, v0

    .line 232
    goto :goto_0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    .line 239
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 240
    new-instance v4, Lcom/firebase/client/core/Path;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {v2, v4}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v4

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 241
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    move-object v1, v0

    .line 242
    goto :goto_1

    .line 244
    :cond_1
    invoke-virtual {v2}, Lcom/firebase/client/core/CompoundWrite;->getCompleteChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 245
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 247
    :cond_3
    return-object v1
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 267
    sget-boolean v0, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Either existingEventSnap or existingServerSnap must exist"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 268
    :cond_0
    invoke-virtual {p1, p2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/CompoundWrite;->hasCompleteWrite(Lcom/firebase/client/core/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-interface {p4, p2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_2
    invoke-interface {p4, p2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public calcNextNodeAfterPost(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/NamedNode;ZLcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/NamedNode;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    .line 326
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    .line 336
    :goto_0
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 337
    invoke-virtual {p5, v0, p3, p4}, Lcom/firebase/client/snapshot/Index;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I

    move-result v3

    if-lez v3, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {p5, v0, v1, p4}, Lcom/firebase/client/snapshot/Index;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I

    move-result v3

    if-gez v3, :cond_3

    :cond_0
    :goto_2
    move-object v1, v0

    .line 340
    goto :goto_1

    .line 329
    :cond_1
    if-eqz p2, :cond_2

    .line 330
    invoke-virtual {v2, p2}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public childWrites(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/WriteTreeRef;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/firebase/client/core/WriteTreeRef;

    invoke-direct {v0, p1, p0}, Lcom/firebase/client/core/WriteTreeRef;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTree;)V

    return-object v0
.end method

.method public getCompleteWriteData(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getWrite(J)Lcom/firebase/client/core/UserWriteRecord;
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/UserWriteRecord;

    .line 72
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 76
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purgeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v1

    iput-object v1, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    .line 84
    return-object v0
.end method

.method public removeWrite(J)Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/UserWriteRecord;

    .line 103
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getWriteId()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    move-object v3, v0

    .line 109
    :cond_0
    sget-boolean v0, Lcom/firebase/client/core/WriteTree;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "removeWrite called with nonexistent writeId"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 107
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 108
    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v3}, Lcom/firebase/client/core/UserWriteRecord;->isVisible()Z

    move-result v6

    .line 115
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v4, v2

    .line 117
    :goto_1
    if-eqz v6, :cond_4

    if-ltz v7, :cond_4

    .line 118
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/UserWriteRecord;

    .line 119
    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 120
    if-lt v7, v1, :cond_3

    invoke-virtual {v3}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/firebase/client/core/WriteTree;->recordContainsPath(Lcom/firebase/client/core/UserWriteRecord;Lcom/firebase/client/core/Path;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v4

    move v4, v2

    .line 128
    :goto_2
    add-int/lit8 v6, v7, -0x1

    move v7, v6

    move v6, v4

    move v4, v0

    .line 129
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v3}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-virtual {v0}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v5

    move v4, v6

    .line 125
    goto :goto_2

    .line 131
    :cond_4
    if-nez v6, :cond_6

    move v5, v2

    .line 147
    :cond_5
    :goto_3
    return v5

    .line 133
    :cond_6
    if-eqz v4, :cond_7

    .line 135
    invoke-direct {p0}, Lcom/firebase/client/core/WriteTree;->resetTree()V

    goto :goto_3

    .line 139
    :cond_7
    invoke-virtual {v3}, Lcom/firebase/client/core/UserWriteRecord;->isOverwrite()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v3}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/CompoundWrite;->removeWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    goto :goto_3

    .line 142
    :cond_8
    invoke-virtual {v3}, Lcom/firebase/client/core/UserWriteRecord;->getMerge()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Path;

    .line 144
    iget-object v2, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v3}, Lcom/firebase/client/core/UserWriteRecord;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/CompoundWrite;->removeWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    goto :goto_4

    :cond_9
    move v0, v4

    move v4, v6

    goto :goto_2
.end method

.method public shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/firebase/client/core/WriteTree;->visibleWrites:Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

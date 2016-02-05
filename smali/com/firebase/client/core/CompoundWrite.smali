.class public Lcom/firebase/client/core/CompoundWrite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/firebase/client/core/Path;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY:Lcom/firebase/client/core/CompoundWrite;


# instance fields
.field private final writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/snapshot/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/CompoundWrite;->$assertionsDisabled:Z

    .line 20
    new-instance v0, Lcom/firebase/client/core/CompoundWrite;

    new-instance v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    sput-object v0, Lcom/firebase/client/core/CompoundWrite;->EMPTY:Lcom/firebase/client/core/CompoundWrite;

    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 26
    return-void
.end method

.method private applySubtreeWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/snapshot/Node;",
            ")",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-interface {p3, p1, v0}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 213
    :cond_0
    :goto_0
    return-object v3

    .line 196
    :cond_1
    const/4 v2, 0x0

    .line 197
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, p3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 200
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 203
    sget-boolean v0, Lcom/firebase/client/core/CompoundWrite;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Priority writes must always be leaf nodes"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 204
    :cond_2
    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    move-object v1, v3

    :goto_2
    move-object v2, v0

    move-object v3, v1

    .line 208
    goto :goto_1

    .line 206
    :cond_3
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-direct {p0, v0, v1, v3}, Lcom/firebase/client/core/CompoundWrite;->applySubtreeWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 210
    :cond_4
    invoke-interface {v3, p1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 211
    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    goto :goto_0
.end method

.method public static emptyWrite()Lcom/firebase/client/core/CompoundWrite;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/firebase/client/core/CompoundWrite;->EMPTY:Lcom/firebase/client/core/CompoundWrite;

    return-object v0
.end method

.method public static fromChildMerge(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 43
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    new-instance v3, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 45
    new-instance v4, Lcom/firebase/client/core/Path;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    aput-object v0, v5, v6

    invoke-direct {v4, v5}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {v1, v4, v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    move-object v1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-object v0
.end method

.method public static fromPathMerge(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 52
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    new-instance v3, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Path;

    invoke-virtual {v1, v0, v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    move-object v1, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-object v0
.end method

.method public static fromValue(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 34
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    new-instance v3, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 36
    new-instance v4, Lcom/firebase/client/core/Path;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    move-object v1, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-object v0
.end method


# virtual methods
.method public addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance p0, Lcom/firebase/client/core/CompoundWrite;

    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {v0, p2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    .line 78
    :cond_0
    :goto_0
    return-object p0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->findRootMostPathWithValue(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    invoke-static {v1, p1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 66
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    .line 67
    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    :cond_2
    invoke-interface {v0, v2, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 73
    new-instance v0, Lcom/firebase/client/core/CompoundWrite;

    iget-object v3, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v3, v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    move-object p0, v0

    goto :goto_0

    .line 76
    :cond_3
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {v0, p2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 78
    new-instance p0, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {p0, v0}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    goto :goto_0
.end method

.method public addWrite(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/firebase/client/core/Path;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {p0, v0, p2}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    return-object v0
.end method

.method public addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p2, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    new-instance v1, Lcom/firebase/client/core/CompoundWrite$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/CompoundWrite$1;-><init>(Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/Path;)V

    invoke-virtual {v0, p0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->fold(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/CompoundWrite;

    return-object v0
.end method

.method public apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {p0, v0, v1, p1}, Lcom/firebase/client/core/CompoundWrite;->applySubtreeWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public childCompoundWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-object p0

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    new-instance p0, Lcom/firebase/client/core/CompoundWrite;

    new-instance v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {v1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Lcom/firebase/client/core/CompoundWrite;

    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public childCompoundWrites()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/CompoundWrite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/firebase/client/core/CompoundWrite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-direct {v4, v0}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 251
    if-ne p1, p0, :cond_0

    .line 254
    :goto_0
    return v0

    .line 252
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_2
    check-cast p1, Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCompleteChildren()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 148
    new-instance v3, Lcom/firebase/client/snapshot/NamedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 153
    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 154
    new-instance v4, Lcom/firebase/client/snapshot/NamedNode;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/Node;

    invoke-direct {v4, v0, v1}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_2
    return-object v2
.end method

.method public getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->findRootMostPathWithValue(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-static {v1, p1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    new-instance v2, Lcom/firebase/client/core/CompoundWrite$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/firebase/client/core/CompoundWrite$2;-><init>(Lcom/firebase/client/core/CompoundWrite;Ljava/util/Map;Z)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->foreach(Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 241
    return-object v0
.end method

.method public hasCompleteWrite(Lcom/firebase/client/core/Path;)Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/CompoundWrite;->getCompleteNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/CompoundWrite;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/firebase/client/core/CompoundWrite;->EMPTY:Lcom/firebase/client/core/CompoundWrite;

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v1

    .line 107
    new-instance v0, Lcom/firebase/client/core/CompoundWrite;

    invoke-direct {v0, v1}, Lcom/firebase/client/core/CompoundWrite;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;)V

    goto :goto_0
.end method

.method public rootWrite()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/firebase/client/core/CompoundWrite;->writeTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompoundWrite{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/firebase/client/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

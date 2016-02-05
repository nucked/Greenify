.class public Lcom/firebase/client/core/utilities/ImmutableTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/firebase/client/core/Path;",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/firebase/client/core/utilities/ImmutableTree;

.field private static final EMPTY_CHILDREN:Lcom/firebase/client/collection/ImmutableSortedMap;


# instance fields
.field private final children:Lcom/firebase/client/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/firebase/client/snapshot/ChildKey;

    invoke-static {v0}, Lcom/firebase/client/collection/StandardComparator;->getComparator(Ljava/lang/Class;)Lcom/firebase/client/collection/StandardComparator;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->emptyMap(Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    sput-object v0, Lcom/firebase/client/core/utilities/ImmutableTree;->EMPTY_CHILDREN:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 23
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    sget-object v2, Lcom/firebase/client/core/utilities/ImmutableTree;->EMPTY_CHILDREN:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    sput-object v0, Lcom/firebase/client/core/utilities/ImmutableTree;->EMPTY:Lcom/firebase/client/core/utilities/ImmutableTree;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/firebase/client/core/utilities/ImmutableTree;->EMPTY_CHILDREN:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 33
    return-void
.end method

.method public static emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/firebase/client/core/utilities/ImmutableTree;->EMPTY:Lcom/firebase/client/core/utilities/ImmutableTree;

    return-object v0
.end method

.method private fold(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
            "<-TT;TR;>;TR;)TR;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-direct {v1, v0, p2, p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->fold(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v0, p3}, Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 257
    :cond_1
    return-object p3
.end method


# virtual methods
.method public containsMatchingValue(Lcom/firebase/client/core/utilities/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 129
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->containsMatchingValue(Lcom/firebase/client/core/utilities/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    if-ne p0, p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 306
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

    .line 308
    :cond_3
    check-cast p1, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 310
    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    iget-object v3, p1, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v2, v3}, Lcom/firebase/client/collection/ImmutableSortedMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    if-nez v2, :cond_4

    .line 311
    :cond_6
    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public findRootMostMatchingPath(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Lcom/firebase/client/core/Path;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/Predicate",
            "<-TT;>;)",
            "Lcom/firebase/client/core/Path;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    .line 60
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, v2}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 61
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 65
    new-instance v1, Lcom/firebase/client/core/Path;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 67
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 70
    goto :goto_0
.end method

.method public findRootMostPathWithValue(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/firebase/client/core/utilities/Predicate;->TRUE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Lcom/firebase/client/core/Path;

    move-result-object v0

    return-object v0
.end method

.method public fold(Ljava/lang/Object;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
            "<-TT;TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->fold(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public foreach(Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
            "<TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->fold(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    .line 217
    :goto_0
    return-object v0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 214
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ")",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 143
    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 319
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 320
    return v0

    :cond_1
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/firebase/client/core/Path;",
            "TT;>;>;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v1, Lcom/firebase/client/core/utilities/ImmutableTree$2;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/core/utilities/ImmutableTree$2;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->foreach(Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public leafMostValue(Lcom/firebase/client/core/Path;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/firebase/client/core/utilities/Predicate;->TRUE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->leafMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public leafMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/Predicate",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    .line 115
    :goto_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 116
    iget-object v3, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v3, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 117
    if-nez v0, :cond_2

    .line 125
    :cond_0
    return-object v1

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_2
    iget-object v3, v0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-interface {p2, v3}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    iget-object v1, v0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    :cond_3
    move-object p0, v0

    .line 124
    goto :goto_1
.end method

.method public remove(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object p0

    .line 203
    :cond_0
    :goto_0
    return-object p0

    .line 184
    :cond_1
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    move-object p0, v0

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 188
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->remove(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 197
    :goto_1
    iget-object v1, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object p0

    goto :goto_0

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v2, v1, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_4
    new-instance v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public rootMostValue(Lcom/firebase/client/core/Path;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/firebase/client/core/utilities/Predicate;->TRUE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/Predicate",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    .line 97
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 90
    iget-object v3, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v3, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 91
    if-nez v0, :cond_1

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v3, v0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-interface {p2, v3}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    iget-object v0, v0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 96
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 97
    goto :goto_0
.end method

.method public set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "TT;)",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    iget-object v1, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {v0, p2, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    .line 175
    :goto_0
    return-object v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 169
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 170
    if-nez v0, :cond_1

    .line 171
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 174
    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v2, v1, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v1

    .line 175
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    goto :goto_0
.end method

.method public setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;)",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-object p2

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 227
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 228
    if-nez v0, :cond_1

    .line 229
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/firebase/client/core/utilities/ImmutableTree;->setTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 238
    :goto_1
    new-instance p2, Lcom/firebase/client/core/utilities/ImmutableTree;

    iget-object v1, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {p2, v1, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v2, v1, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    goto :goto_1
.end method

.method public subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-object p0

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {}, Lcom/firebase/client/core/utilities/ImmutableTree;->emptyInstance()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    const-string v0, "ImmutableTree { value="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    const-string v0, ", children={"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 299
    :cond_0
    const-string v0, "} }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v1, Lcom/firebase/client/core/utilities/ImmutableTree$1;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/core/utilities/ImmutableTree$1;-><init>(Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->foreach(Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 269
    return-object v0
.end method

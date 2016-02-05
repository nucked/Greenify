.class public Lcom/firebase/client/collection/ArraySortedMap;
.super Lcom/firebase/client/collection/ImmutableSortedMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/client/collection/ImmutableSortedMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>()V

    .line 41
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    .line 42
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;[TK;[TV;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    .line 49
    iput-object p3, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/collection/ArraySortedMap;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/firebase/client/collection/ArraySortedMap;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method private static addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 220
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 221
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 222
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    aput-object p2, v0, p1

    .line 224
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    return-object v0
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ArraySortedMap;
    .locals 5
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
            "Lcom/firebase/client/collection/ArraySortedMap",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 19
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 23
    aput-object v4, v0, v2

    .line 24
    invoke-interface {p2, v4}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 25
    aput-object v4, v1, v2

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lcom/firebase/client/collection/ArraySortedMap;

    invoke-direct {v2, p3, v0, v1}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private findKey(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 254
    .line 255
    iget-object v3, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    .line 256
    iget-object v5, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v5, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    .line 261
    :goto_1
    return v0

    .line 259
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 255
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findKeyOrInsertPosition(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ArraySortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/ArraySortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->identityTranslator()Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/firebase/client/collection/ArraySortedMap;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ArraySortedMap;

    move-result-object v0

    return-object v0
.end method

.method private iterator(IZ)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/firebase/client/collection/ArraySortedMap$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/firebase/client/collection/ArraySortedMap$1;-><init>(Lcom/firebase/client/collection/ArraySortedMap;IZ)V

    return-object v0
.end method

.method private static removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 211
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 212
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 213
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {p0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    return-object v0
.end method

.method private static replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 230
    array-length v1, p0

    .line 231
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 232
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    aput-object p2, v0, p1

    .line 234
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 61
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getMaxKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 187
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t find predecessor of nonexistent key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 197
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t find successor of nonexistent key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;->visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 79
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p2, :cond_0

    .line 101
    :goto_0
    return-object p0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v2, v0, p2}, Lcom/firebase/client/collection/ArraySortedMap;->replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 86
    new-instance v0, Lcom/firebase/client/collection/ArraySortedMap;

    iget-object v3, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_3

    .line 91
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v0}, Lcom/firebase/client/collection/RBTreeSortedMap;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_3
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v2, v0, p2}, Lcom/firebase/client/collection/ArraySortedMap;->addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 101
    new-instance v0, Lcom/firebase/client/collection/ArraySortedMap;

    iget-object v3, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v0}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    .line 67
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 72
    :goto_0
    return-object p0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/firebase/client/collection/ArraySortedMap;->removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/firebase/client/collection/ArraySortedMap;->removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 72
    new-instance v0, Lcom/firebase/client/collection/ArraySortedMap;

    iget-object v3, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v3, v1, v2}, Lcom/firebase/client/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-direct {p0, v0, v3}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v3}, Lcom/firebase/client/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/firebase/client/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

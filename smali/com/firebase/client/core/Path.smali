.class public Lcom/firebase/client/core/Path;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/firebase/client/core/Path;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/firebase/client/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_PATH:Lcom/firebase/client/core/Path;


# instance fields
.field private final end:I

.field private final pieces:[Lcom/firebase/client/snapshot/ChildKey;

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-class v0, Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/Path;->$assertionsDisabled:Z

    .line 28
    new-instance v0, Lcom/firebase/client/core/Path;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/firebase/client/core/Path;->EMPTY_PATH:Lcom/firebase/client/core/Path;

    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 46
    array-length v2, v4

    move v1, v3

    move v0, v3

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v4, v1

    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    new-array v0, v0, [Lcom/firebase/client/snapshot/ChildKey;

    iput-object v0, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    .line 53
    array-length v5, v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 55
    iget-object v7, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    add-int/lit8 v0, v1, 0x1

    invoke-static {v6}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v6

    aput-object v6, v7, v1

    .line 53
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 58
    :cond_2
    iput v3, p0, Lcom/firebase/client/core/Path;->start:I

    .line 59
    iget-object v0, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    array-length v0, v0

    iput v0, p0, Lcom/firebase/client/core/Path;->end:I

    .line 60
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public varargs constructor <init>([Lcom/firebase/client/snapshot/ChildKey;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/snapshot/ChildKey;

    iput-object v0, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    .line 36
    iput v1, p0, Lcom/firebase/client/core/Path;->start:I

    .line 37
    array-length v0, p1

    iput v0, p0, Lcom/firebase/client/core/Path;->end:I

    .line 38
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v1, p1, v0

    .line 39
    sget-boolean v3, Lcom/firebase/client/core/Path;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t construct a path with a null value!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method private constructor <init>([Lcom/firebase/client/snapshot/ChildKey;II)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    .line 64
    iput p2, p0, Lcom/firebase/client/core/Path;->start:I

    .line 65
    iput p3, p0, Lcom/firebase/client/core/Path;->end:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/Path;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/firebase/client/core/Path;->start:I

    return v0
.end method

.method static synthetic access$100(Lcom/firebase/client/core/Path;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/firebase/client/core/Path;->end:I

    return v0
.end method

.method static synthetic access$200(Lcom/firebase/client/core/Path;)[Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public static getEmptyPath()Lcom/firebase/client/core/Path;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/firebase/client/core/Path;->EMPTY_PATH:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public static getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 3

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 15
    if-nez v0, :cond_0

    .line 18
    :goto_0
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Lcom/firebase/client/FirebaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNAL ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not contained in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    new-array v1, v0, [Lcom/firebase/client/snapshot/ChildKey;

    .line 71
    iget-object v2, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    iget v3, p0, Lcom/firebase/client/core/Path;->start:I

    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->size()I

    move-result v4

    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v2, p1, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    iget v3, p1, Lcom/firebase/client/core/Path;->start:I

    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-direct {v2, v1, v6, v0}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;II)V

    return-object v2
.end method

.method public child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    .line 78
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/firebase/client/snapshot/ChildKey;

    .line 79
    iget-object v2, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    iget v3, p0, Lcom/firebase/client/core/Path;->start:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    aput-object p1, v1, v0

    .line 81
    new-instance v2, Lcom/firebase/client/core/Path;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v1, v4, v0}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;II)V

    return-object v2
.end method

.method public compareTo(Lcom/firebase/client/core/Path;)I
    .locals 4

    .prologue
    .line 226
    iget v1, p0, Lcom/firebase/client/core/Path;->start:I

    iget v0, p1, Lcom/firebase/client/core/Path;->start:I

    :goto_0
    iget v2, p0, Lcom/firebase/client/core/Path;->end:I

    if-ge v1, v2, :cond_1

    iget v2, p1, Lcom/firebase/client/core/Path;->end:I

    if-ge v0, v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v2

    .line 228
    if-eqz v2, :cond_0

    move v0, v2

    .line 232
    :goto_1
    return v0

    .line 226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    iget v2, p0, Lcom/firebase/client/core/Path;->end:I

    if-ne v1, v2, :cond_2

    iget v2, p1, Lcom/firebase/client/core/Path;->end:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 231
    :cond_2
    iget v0, p0, Lcom/firebase/client/core/Path;->end:I

    if-ne v1, v0, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    .line 232
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/firebase/client/core/Path;

    invoke-virtual {p0, p1}, Lcom/firebase/client/core/Path;->compareTo(Lcom/firebase/client/core/Path;)I

    move-result v0

    return v0
.end method

.method public contains(Lcom/firebase/client/core/Path;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v2

    .line 193
    :goto_0
    return v0

    .line 183
    :cond_0
    iget v1, p0, Lcom/firebase/client/core/Path;->start:I

    .line 184
    iget v0, p1, Lcom/firebase/client/core/Path;->start:I

    .line 185
    :goto_1
    iget v3, p0, Lcom/firebase/client/core/Path;->end:I

    if-ge v1, v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 187
    goto :goto_0

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    instance-of v0, p1, Lcom/firebase/client/core/Path;

    if-nez v0, :cond_0

    move v0, v2

    .line 211
    :goto_0
    return v0

    .line 200
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v3

    .line 201
    goto :goto_0

    .line 202
    :cond_1
    check-cast p1, Lcom/firebase/client/core/Path;

    .line 203
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    iget v1, p0, Lcom/firebase/client/core/Path;->start:I

    iget v0, p1, Lcom/firebase/client/core/Path;->start:I

    :goto_1
    iget v4, p0, Lcom/firebase/client/core/Path;->end:I

    if-ge v1, v4, :cond_4

    iget v4, p1, Lcom/firebase/client/core/Path;->end:I

    if-ge v0, v4, :cond_4

    .line 207
    iget-object v4, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v4, v4, v1

    iget-object v5, p1, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 208
    goto :goto_0

    .line 206
    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v3

    .line 211
    goto :goto_0
.end method

.method public getBack()Lcom/firebase/client/snapshot/ChildKey;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    iget v1, p0, Lcom/firebase/client/core/Path;->end:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFront()Lcom/firebase/client/snapshot/ChildKey;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    iget v1, p0, Lcom/firebase/client/core/Path;->start:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getParent()Lcom/firebase/client/core/Path;
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/firebase/client/core/Path;

    iget-object v1, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    iget v2, p0, Lcom/firebase/client/core/Path;->start:I

    iget v3, p0, Lcom/firebase/client/core/Path;->end:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;II)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    iget v0, p0, Lcom/firebase/client/core/Path;->start:I

    :goto_0
    iget v2, p0, Lcom/firebase/client/core/Path;->end:I

    if-ge v0, v2, :cond_0

    .line 218
    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/firebase/client/core/Path;->start:I

    iget v1, p0, Lcom/firebase/client/core/Path;->end:I

    if-lt v0, v1, :cond_0

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
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/firebase/client/core/Path$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/Path$1;-><init>(Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public popFront()Lcom/firebase/client/core/Path;
    .locals 4

    .prologue
    .line 121
    iget v0, p0, Lcom/firebase/client/core/Path;->start:I

    .line 122
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_0
    new-instance v1, Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    iget v3, p0, Lcom/firebase/client/core/Path;->end:I

    invoke-direct {v1, v2, v0, v3}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;II)V

    return-object v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/firebase/client/core/Path;->end:I

    iget v1, p0, Lcom/firebase/client/core/Path;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "/"

    .line 93
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    iget v0, p0, Lcom/firebase/client/core/Path;->start:I

    :goto_1
    iget v2, p0, Lcom/firebase/client/core/Path;->end:I

    if-ge v0, v2, :cond_1

    .line 90
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "/"

    .line 108
    :goto_0
    return-object v0

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    iget v0, p0, Lcom/firebase/client/core/Path;->start:I

    :goto_1
    iget v2, p0, Lcom/firebase/client/core/Path;->end:I

    if-ge v0, v2, :cond_2

    .line 103
    iget v2, p0, Lcom/firebase/client/core/Path;->start:I

    if-le v0, v2, :cond_1

    .line 104
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/firebase/client/core/Path;->pieces:[Lcom/firebase/client/snapshot/ChildKey;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

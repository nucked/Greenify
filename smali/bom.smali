.class Lbom;
.super Lbmt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lbmt",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:I

.field private final transient b:I

.field private final transient c:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lbom;-><init>([Ljava/lang/Object;II)V

    .line 44
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lbmt;-><init>()V

    .line 37
    iput p2, p0, Lbom;->a:I

    .line 38
    iput p3, p0, Lbom;->b:I

    .line 39
    iput-object p1, p0, Lbom;->c:[Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lbom;->c:[Ljava/lang/Object;

    iget v1, p0, Lbom;->a:I

    iget v2, p0, Lbom;->b:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v0, p0, Lbom;->b:I

    add-int/2addr v0, p2

    return v0
.end method

.method public a(I)Lboz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lboz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lbom;->c:[Ljava/lang/Object;

    iget v1, p0, Lbom;->a:I

    iget v2, p0, Lbom;->b:I

    invoke-static {v0, v1, v2, p1}, Lbnc;->a([Ljava/lang/Object;III)Lboz;

    move-result-object v0

    return-object v0
.end method

.method b(II)Lbmt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lbmt",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lbom;

    iget-object v1, p0, Lbom;->c:[Ljava/lang/Object;

    iget v2, p0, Lbom;->a:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lbom;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 65
    iget v0, p0, Lbom;->b:I

    invoke-static {p1, v0}, Lbkt;->a(II)I

    .line 66
    iget-object v0, p0, Lbom;->c:[Ljava/lang/Object;

    iget v1, p0, Lbom;->a:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x1

    .line 71
    if-nez p1, :cond_1

    move v0, v1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lbom;->b:I

    if-ge v0, v2, :cond_2

    .line 75
    iget-object v2, p0, Lbom;->c:[Ljava/lang/Object;

    iget v3, p0, Lbom;->a:I

    add-int/2addr v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 84
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget v1, p0, Lbom;->b:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 88
    iget-object v2, p0, Lbom;->c:[Ljava/lang/Object;

    iget v3, p0, Lbom;->a:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 89
    goto :goto_0

    .line 87
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lbom;->a(I)Lboz;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lbom;->b:I

    return v0
.end method

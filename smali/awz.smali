.class public final Lawz;
.super Lbbq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbq",
        "<",
        "Lawz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Laxh;

.field public b:[Laxh;

.field public c:[Lawy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbbq;-><init>()V

    invoke-virtual {p0}, Lawz;->a()Lawz;

    return-void
.end method


# virtual methods
.method public a()Lawz;
    .locals 1

    invoke-static {}, Laxh;->a()[Laxh;

    move-result-object v0

    iput-object v0, p0, Lawz;->a:[Laxh;

    invoke-static {}, Laxh;->a()[Laxh;

    move-result-object v0

    iput-object v0, p0, Lawz;->b:[Laxh;

    invoke-static {}, Lawy;->a()[Lawy;

    move-result-object v0

    iput-object v0, p0, Lawz;->c:[Lawy;

    const/4 v0, 0x0

    iput-object v0, p0, Lawz;->r:Lbbs;

    const/4 v0, -0x1

    iput v0, p0, Lawz;->s:I

    return-object p0
.end method

.method public a(Lbbn;)Lawz;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lbbn;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lawz;->a(Lbbn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lbbz;->a(Lbbn;I)I

    move-result v2

    iget-object v0, p0, Lawz;->a:[Laxh;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Laxh;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lawz;->a:[Laxh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Laxh;

    invoke-direct {v3}, Laxh;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lbbn;->a(Lbbw;)V

    invoke-virtual {p1}, Lbbn;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lawz;->a:[Laxh;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Laxh;

    invoke-direct {v3}, Laxh;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    iput-object v2, p0, Lawz;->a:[Laxh;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lbbz;->a(Lbbn;I)I

    move-result v2

    iget-object v0, p0, Lawz;->b:[Laxh;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Laxh;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lawz;->b:[Laxh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Laxh;

    invoke-direct {v3}, Laxh;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lbbn;->a(Lbbw;)V

    invoke-virtual {p1}, Lbbn;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lawz;->b:[Laxh;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Laxh;

    invoke-direct {v3}, Laxh;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    iput-object v2, p0, Lawz;->b:[Laxh;

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lbbz;->a(Lbbn;I)I

    move-result v2

    iget-object v0, p0, Lawz;->c:[Lawy;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lawy;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lawz;->c:[Lawy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lawy;

    invoke-direct {v3}, Lawy;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lbbn;->a(Lbbw;)V

    invoke-virtual {p1}, Lbbn;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lawz;->c:[Lawy;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lawy;

    invoke-direct {v3}, Lawy;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    iput-object v2, p0, Lawz;->c:[Lawy;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lbbo;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lawz;->a:[Laxh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawz;->a:[Laxh;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lawz;->a:[Laxh;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lawz;->a:[Laxh;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lbbo;->a(ILbbw;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lawz;->b:[Laxh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lawz;->b:[Laxh;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lawz;->b:[Laxh;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lawz;->b:[Laxh;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lbbo;->a(ILbbw;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lawz;->c:[Lawy;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lawz;->c:[Lawy;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lawz;->c:[Lawy;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lawz;->c:[Lawy;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lbbo;->a(ILbbw;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-super {p0, p1}, Lbbq;->a(Lbbo;)V

    return-void
.end method

.method protected b()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lbbq;->b()I

    move-result v0

    iget-object v2, p0, Lawz;->a:[Laxh;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lawz;->a:[Laxh;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lawz;->a:[Laxh;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lawz;->a:[Laxh;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lbbo;->c(ILbbw;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    iget-object v2, p0, Lawz;->b:[Laxh;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lawz;->b:[Laxh;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lawz;->b:[Laxh;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lawz;->b:[Laxh;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lbbo;->c(ILbbw;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    iget-object v2, p0, Lawz;->c:[Lawy;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lawz;->c:[Lawy;

    array-length v2, v2

    if-lez v2, :cond_7

    :goto_2
    iget-object v2, p0, Lawz;->c:[Lawy;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lawz;->c:[Lawy;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lbbo;->c(ILbbw;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return v0
.end method

.method public synthetic b(Lbbn;)Lbbw;
    .locals 1

    invoke-virtual {p0, p1}, Lawz;->a(Lbbn;)Lawz;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lawz;

    if-eqz v2, :cond_0

    check-cast p1, Lawz;

    iget-object v2, p0, Lawz;->a:[Laxh;

    iget-object v3, p1, Lawz;->a:[Laxh;

    invoke-static {v2, v3}, Lbbu;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lawz;->b:[Laxh;

    iget-object v3, p1, Lawz;->b:[Laxh;

    invoke-static {v2, v3}, Lbbu;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lawz;->c:[Lawy;

    iget-object v3, p1, Lawz;->c:[Lawy;

    invoke-static {v2, v3}, Lbbu;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lawz;->r:Lbbs;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lawz;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lawz;->r:Lbbs;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lawz;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lawz;->r:Lbbs;

    iget-object v1, p1, Lawz;->r:Lbbs;

    invoke-virtual {v0, v1}, Lbbs;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lawz;->a:[Laxh;

    invoke-static {v1}, Lbbu;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lawz;->b:[Laxh;

    invoke-static {v1}, Lbbu;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lawz;->c:[Lawy;

    invoke-static {v1}, Lbbu;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lawz;->r:Lbbs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawz;->r:Lbbs;

    invoke-virtual {v0}, Lbbs;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lawz;->r:Lbbs;

    invoke-virtual {v0}, Lbbs;->hashCode()I

    move-result v0

    goto :goto_0
.end method

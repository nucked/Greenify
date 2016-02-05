.class public final Laxf;
.super Lbbq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbq",
        "<",
        "Laxf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Laxe;

.field public b:Laxb;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbbq;-><init>()V

    invoke-virtual {p0}, Laxf;->a()Laxf;

    return-void
.end method

.method public static a([B)Laxf;
    .locals 1

    new-instance v0, Laxf;

    invoke-direct {v0}, Laxf;-><init>()V

    invoke-static {v0, p0}, Lbbw;->a(Lbbw;[B)Lbbw;

    move-result-object v0

    check-cast v0, Laxf;

    return-object v0
.end method


# virtual methods
.method public a()Laxf;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Laxe;->a()[Laxe;

    move-result-object v0

    iput-object v0, p0, Laxf;->a:[Laxe;

    iput-object v1, p0, Laxf;->b:Laxb;

    const-string v0, ""

    iput-object v0, p0, Laxf;->c:Ljava/lang/String;

    iput-object v1, p0, Laxf;->r:Lbbs;

    const/4 v0, -0x1

    iput v0, p0, Laxf;->s:I

    return-object p0
.end method

.method public a(Lbbn;)Laxf;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lbbn;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Laxf;->a(Lbbn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lbbz;->a(Lbbn;I)I

    move-result v2

    iget-object v0, p0, Laxf;->a:[Laxe;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Laxe;

    if-eqz v0, :cond_1

    iget-object v3, p0, Laxf;->a:[Laxe;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Laxe;

    invoke-direct {v3}, Laxe;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lbbn;->a(Lbbw;)V

    invoke-virtual {p1}, Lbbn;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Laxf;->a:[Laxe;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Laxe;

    invoke-direct {v3}, Laxe;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    iput-object v2, p0, Laxf;->a:[Laxe;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Laxf;->b:Laxb;

    if-nez v0, :cond_4

    new-instance v0, Laxb;

    invoke-direct {v0}, Laxb;-><init>()V

    iput-object v0, p0, Laxf;->b:Laxb;

    :cond_4
    iget-object v0, p0, Laxf;->b:Laxb;

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lbbn;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laxf;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lbbo;)V
    .locals 3

    iget-object v0, p0, Laxf;->a:[Laxe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxf;->a:[Laxe;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laxf;->a:[Laxe;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laxf;->a:[Laxe;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lbbo;->a(ILbbw;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laxf;->b:Laxb;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Laxf;->b:Laxb;

    invoke-virtual {p1, v0, v1}, Lbbo;->a(ILbbw;)V

    :cond_2
    iget-object v0, p0, Laxf;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Laxf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lbbo;->a(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lbbq;->a(Lbbo;)V

    return-void
.end method

.method protected b()I
    .locals 4

    invoke-super {p0}, Lbbq;->b()I

    move-result v1

    iget-object v0, p0, Laxf;->a:[Laxe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxf;->a:[Laxe;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Laxf;->a:[Laxe;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Laxf;->a:[Laxe;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lbbo;->c(ILbbw;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laxf;->b:Laxb;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Laxf;->b:Laxb;

    invoke-static {v0, v2}, Lbbo;->c(ILbbw;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Laxf;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v2, p0, Laxf;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lbbo;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public synthetic b(Lbbn;)Lbbw;
    .locals 1

    invoke-virtual {p0, p1}, Laxf;->a(Lbbn;)Laxf;

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
    instance-of v2, p1, Laxf;

    if-eqz v2, :cond_0

    check-cast p1, Laxf;

    iget-object v2, p0, Laxf;->a:[Laxe;

    iget-object v3, p1, Laxf;->a:[Laxe;

    invoke-static {v2, v3}, Lbbu;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laxf;->b:Laxb;

    if-nez v2, :cond_6

    iget-object v2, p1, Laxf;->b:Laxb;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Laxf;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Laxf;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Laxf;->r:Lbbs;

    if-eqz v2, :cond_4

    iget-object v2, p0, Laxf;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Laxf;->r:Lbbs;

    if-eqz v2, :cond_5

    iget-object v2, p1, Laxf;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Laxf;->b:Laxb;

    iget-object v3, p1, Laxf;->b:Laxb;

    invoke-virtual {v2, v3}, Laxb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Laxf;->c:Ljava/lang/String;

    iget-object v3, p1, Laxf;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Laxf;->r:Lbbs;

    iget-object v1, p1, Laxf;->r:Lbbs;

    invoke-virtual {v0, v1}, Lbbs;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Laxf;->a:[Laxe;

    invoke-static {v2}, Lbbu;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Laxf;->b:Laxb;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Laxf;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Laxf;->r:Lbbs;

    if-eqz v2, :cond_0

    iget-object v2, p0, Laxf;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Laxf;->b:Laxb;

    invoke-virtual {v0}, Laxb;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laxf;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Laxf;->r:Lbbs;

    invoke-virtual {v1}, Lbbs;->hashCode()I

    move-result v1

    goto :goto_2
.end method

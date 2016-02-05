.class public final Lbay;
.super Lbbq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbq",
        "<",
        "Lbay;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Laxb;

.field public c:Laxf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbbq;-><init>()V

    invoke-virtual {p0}, Lbay;->a()Lbay;

    return-void
.end method

.method public static a([B)Lbay;
    .locals 1

    new-instance v0, Lbay;

    invoke-direct {v0}, Lbay;-><init>()V

    invoke-static {v0, p0}, Lbbw;->a(Lbbw;[B)Lbbw;

    move-result-object v0

    check-cast v0, Lbay;

    return-object v0
.end method


# virtual methods
.method public a()Lbay;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbay;->a:J

    iput-object v2, p0, Lbay;->b:Laxb;

    iput-object v2, p0, Lbay;->c:Laxf;

    iput-object v2, p0, Lbay;->r:Lbbs;

    const/4 v0, -0x1

    iput v0, p0, Lbay;->s:I

    return-object p0
.end method

.method public a(Lbbn;)Lbay;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lbbn;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lbay;->a(Lbbn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lbbn;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbay;->a:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lbay;->b:Laxb;

    if-nez v0, :cond_1

    new-instance v0, Laxb;

    invoke-direct {v0}, Laxb;-><init>()V

    iput-object v0, p0, Lbay;->b:Laxb;

    :cond_1
    iget-object v0, p0, Lbay;->b:Laxb;

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lbay;->c:Laxf;

    if-nez v0, :cond_2

    new-instance v0, Laxf;

    invoke-direct {v0}, Laxf;-><init>()V

    iput-object v0, p0, Lbay;->c:Laxf;

    :cond_2
    iget-object v0, p0, Lbay;->c:Laxf;

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lbbo;)V
    .locals 4

    const/4 v0, 0x1

    iget-wide v2, p0, Lbay;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lbbo;->a(IJ)V

    iget-object v0, p0, Lbay;->b:Laxb;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lbay;->b:Laxb;

    invoke-virtual {p1, v0, v1}, Lbbo;->a(ILbbw;)V

    :cond_0
    iget-object v0, p0, Lbay;->c:Laxf;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lbay;->c:Laxf;

    invoke-virtual {p1, v0, v1}, Lbbo;->a(ILbbw;)V

    :cond_1
    invoke-super {p0, p1}, Lbbq;->a(Lbbo;)V

    return-void
.end method

.method protected b()I
    .locals 4

    invoke-super {p0}, Lbbq;->b()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lbay;->a:J

    invoke-static {v1, v2, v3}, Lbbo;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lbay;->b:Laxb;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lbay;->b:Laxb;

    invoke-static {v1, v2}, Lbbo;->c(ILbbw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lbay;->c:Laxf;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lbay;->c:Laxf;

    invoke-static {v1, v2}, Lbbo;->c(ILbbw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public synthetic b(Lbbn;)Lbbw;
    .locals 1

    invoke-virtual {p0, p1}, Lbay;->a(Lbbn;)Lbay;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lbay;

    if-eqz v2, :cond_0

    check-cast p1, Lbay;

    iget-wide v2, p0, Lbay;->a:J

    iget-wide v4, p1, Lbay;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lbay;->b:Laxb;

    if-nez v2, :cond_6

    iget-object v2, p1, Lbay;->b:Laxb;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lbay;->c:Laxf;

    if-nez v2, :cond_7

    iget-object v2, p1, Lbay;->c:Laxf;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lbay;->r:Lbbs;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lbay;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Lbay;->r:Lbbs;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lbay;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lbay;->b:Laxb;

    iget-object v3, p1, Lbay;->b:Laxb;

    invoke-virtual {v2, v3}, Laxb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lbay;->c:Laxf;

    iget-object v3, p1, Lbay;->c:Laxf;

    invoke-virtual {v2, v3}, Laxf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lbay;->r:Lbbs;

    iget-object v1, p1, Lbay;->r:Lbbs;

    invoke-virtual {v0, v1}, Lbbs;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lbay;->a:J

    iget-wide v4, p0, Lbay;->a:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lbay;->b:Laxb;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lbay;->c:Laxf;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lbay;->r:Lbbs;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbay;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lbay;->b:Laxb;

    invoke-virtual {v0}, Laxb;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbay;->c:Laxf;

    invoke-virtual {v0}, Laxf;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lbay;->r:Lbbs;

    invoke-virtual {v1}, Lbbs;->hashCode()I

    move-result v1

    goto :goto_2
.end method

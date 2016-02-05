.class public final Laww;
.super Lbbq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbq",
        "<",
        "Laww;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbbq;-><init>()V

    invoke-virtual {p0}, Laww;->a()Laww;

    return-void
.end method


# virtual methods
.method public a()Laww;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Laww;->a:I

    iput v1, p0, Laww;->b:I

    iput v1, p0, Laww;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Laww;->r:Lbbs;

    const/4 v0, -0x1

    iput v0, p0, Laww;->s:I

    return-object p0
.end method

.method public a(Lbbn;)Laww;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lbbn;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Laww;->a(Lbbn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lbbn;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Laww;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lbbn;->e()I

    move-result v0

    iput v0, p0, Laww;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lbbn;->e()I

    move-result v0

    iput v0, p0, Laww;->c:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lbbo;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Laww;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Laww;->a:I

    invoke-virtual {p1, v1, v0}, Lbbo;->a(II)V

    :cond_0
    iget v0, p0, Laww;->b:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Laww;->b:I

    invoke-virtual {p1, v0, v1}, Lbbo;->a(II)V

    :cond_1
    iget v0, p0, Laww;->c:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Laww;->c:I

    invoke-virtual {p1, v0, v1}, Lbbo;->a(II)V

    :cond_2
    invoke-super {p0, p1}, Lbbq;->a(Lbbo;)V

    return-void
.end method

.method protected b()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lbbq;->b()I

    move-result v0

    iget v1, p0, Laww;->a:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Laww;->a:I

    invoke-static {v2, v1}, Lbbo;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Laww;->b:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Laww;->b:I

    invoke-static {v1, v2}, Lbbo;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Laww;->c:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Laww;->c:I

    invoke-static {v1, v2}, Lbbo;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public synthetic b(Lbbn;)Lbbw;
    .locals 1

    invoke-virtual {p0, p1}, Laww;->a(Lbbn;)Laww;

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
    instance-of v2, p1, Laww;

    if-eqz v2, :cond_0

    check-cast p1, Laww;

    iget v2, p0, Laww;->a:I

    iget v3, p1, Laww;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Laww;->b:I

    iget v3, p1, Laww;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Laww;->c:I

    iget v3, p1, Laww;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Laww;->r:Lbbs;

    if-eqz v2, :cond_2

    iget-object v2, p0, Laww;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Laww;->r:Lbbs;

    if-eqz v2, :cond_3

    iget-object v2, p1, Laww;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Laww;->r:Lbbs;

    iget-object v1, p1, Laww;->r:Lbbs;

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

    iget v1, p0, Laww;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Laww;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Laww;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Laww;->r:Lbbs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laww;->r:Lbbs;

    invoke-virtual {v0}, Lbbs;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Laww;->r:Lbbs;

    invoke-virtual {v0}, Lbbs;->hashCode()I

    move-result v0

    goto :goto_0
.end method

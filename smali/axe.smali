.class public final Laxe;
.super Lbbq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbq",
        "<",
        "Laxe;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Laxe;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Laxh;

.field public c:Lawz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbbq;-><init>()V

    invoke-virtual {p0}, Laxe;->c()Laxe;

    return-void
.end method

.method public static a()[Laxe;
    .locals 2

    sget-object v0, Laxe;->d:[Laxe;

    if-nez v0, :cond_1

    sget-object v1, Lbbu;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laxe;->d:[Laxe;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Laxe;

    sput-object v0, Laxe;->d:[Laxe;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Laxe;->d:[Laxe;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lbbn;)Laxe;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lbbn;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Laxe;->a(Lbbn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lbbn;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laxe;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Laxe;->b:Laxh;

    if-nez v0, :cond_1

    new-instance v0, Laxh;

    invoke-direct {v0}, Laxh;-><init>()V

    iput-object v0, p0, Laxe;->b:Laxh;

    :cond_1
    iget-object v0, p0, Laxe;->b:Laxh;

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Laxe;->c:Lawz;

    if-nez v0, :cond_2

    new-instance v0, Lawz;

    invoke-direct {v0}, Lawz;-><init>()V

    iput-object v0, p0, Laxe;->c:Lawz;

    :cond_2
    iget-object v0, p0, Laxe;->c:Lawz;

    invoke-virtual {p1, v0}, Lbbn;->a(Lbbw;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lbbo;)V
    .locals 2

    iget-object v0, p0, Laxe;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Laxe;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lbbo;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Laxe;->b:Laxh;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Laxe;->b:Laxh;

    invoke-virtual {p1, v0, v1}, Lbbo;->a(ILbbw;)V

    :cond_1
    iget-object v0, p0, Laxe;->c:Lawz;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Laxe;->c:Lawz;

    invoke-virtual {p1, v0, v1}, Lbbo;->a(ILbbw;)V

    :cond_2
    invoke-super {p0, p1}, Lbbq;->a(Lbbo;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lbbq;->b()I

    move-result v0

    iget-object v1, p0, Laxe;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Laxe;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lbbo;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Laxe;->b:Laxh;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Laxe;->b:Laxh;

    invoke-static {v1, v2}, Lbbo;->c(ILbbw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Laxe;->c:Lawz;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Laxe;->c:Lawz;

    invoke-static {v1, v2}, Lbbo;->c(ILbbw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public synthetic b(Lbbn;)Lbbw;
    .locals 1

    invoke-virtual {p0, p1}, Laxe;->a(Lbbn;)Laxe;

    move-result-object v0

    return-object v0
.end method

.method public c()Laxe;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Laxe;->a:Ljava/lang/String;

    iput-object v1, p0, Laxe;->b:Laxh;

    iput-object v1, p0, Laxe;->c:Lawz;

    iput-object v1, p0, Laxe;->r:Lbbs;

    const/4 v0, -0x1

    iput v0, p0, Laxe;->s:I

    return-object p0
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
    instance-of v2, p1, Laxe;

    if-eqz v2, :cond_0

    check-cast p1, Laxe;

    iget-object v2, p0, Laxe;->a:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Laxe;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Laxe;->b:Laxh;

    if-nez v2, :cond_8

    iget-object v2, p1, Laxe;->b:Laxh;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Laxe;->c:Lawz;

    if-nez v2, :cond_9

    iget-object v2, p1, Laxe;->c:Lawz;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Laxe;->r:Lbbs;

    if-eqz v2, :cond_5

    iget-object v2, p0, Laxe;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p1, Laxe;->r:Lbbs;

    if-eqz v2, :cond_6

    iget-object v2, p1, Laxe;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Laxe;->a:Ljava/lang/String;

    iget-object v3, p1, Laxe;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_8
    iget-object v2, p0, Laxe;->b:Laxh;

    iget-object v3, p1, Laxe;->b:Laxh;

    invoke-virtual {v2, v3}, Laxh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_9
    iget-object v2, p0, Laxe;->c:Lawz;

    iget-object v3, p1, Laxe;->c:Lawz;

    invoke-virtual {v2, v3}, Lawz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_a
    iget-object v0, p0, Laxe;->r:Lbbs;

    iget-object v1, p1, Laxe;->r:Lbbs;

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

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Laxe;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Laxe;->b:Laxh;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Laxe;->c:Lawz;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Laxe;->r:Lbbs;

    if-eqz v2, :cond_0

    iget-object v2, p0, Laxe;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Laxe;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laxe;->b:Laxh;

    invoke-virtual {v0}, Laxh;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laxe;->c:Lawz;

    invoke-virtual {v0}, Lawz;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Laxe;->r:Lbbs;

    invoke-virtual {v1}, Lbbs;->hashCode()I

    move-result v1

    goto :goto_3
.end method

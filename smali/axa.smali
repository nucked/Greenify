.class public final Laxa;
.super Lbbq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbq",
        "<",
        "Laxa;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Laxa;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbbq;-><init>()V

    invoke-virtual {p0}, Laxa;->c()Laxa;

    return-void
.end method

.method public static a()[Laxa;
    .locals 2

    sget-object v0, Laxa;->c:[Laxa;

    if-nez v0, :cond_1

    sget-object v1, Lbbu;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laxa;->c:[Laxa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Laxa;

    sput-object v0, Laxa;->c:[Laxa;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Laxa;->c:[Laxa;

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
.method public a(Lbbn;)Laxa;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lbbn;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Laxa;->a(Lbbn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lbbn;->e()I

    move-result v0

    iput v0, p0, Laxa;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lbbn;->e()I

    move-result v0

    iput v0, p0, Laxa;->b:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lbbo;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Laxa;->a:I

    invoke-virtual {p1, v0, v1}, Lbbo;->a(II)V

    const/4 v0, 0x2

    iget v1, p0, Laxa;->b:I

    invoke-virtual {p1, v0, v1}, Lbbo;->a(II)V

    invoke-super {p0, p1}, Lbbq;->a(Lbbo;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lbbq;->b()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Laxa;->a:I

    invoke-static {v1, v2}, Lbbo;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Laxa;->b:I

    invoke-static {v1, v2}, Lbbo;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic b(Lbbn;)Lbbw;
    .locals 1

    invoke-virtual {p0, p1}, Laxa;->a(Lbbn;)Laxa;

    move-result-object v0

    return-object v0
.end method

.method public c()Laxa;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Laxa;->a:I

    iput v0, p0, Laxa;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Laxa;->r:Lbbs;

    const/4 v0, -0x1

    iput v0, p0, Laxa;->s:I

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
    instance-of v2, p1, Laxa;

    if-eqz v2, :cond_0

    check-cast p1, Laxa;

    iget v2, p0, Laxa;->a:I

    iget v3, p1, Laxa;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Laxa;->b:I

    iget v3, p1, Laxa;->b:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Laxa;->r:Lbbs;

    if-eqz v2, :cond_2

    iget-object v2, p0, Laxa;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Laxa;->r:Lbbs;

    if-eqz v2, :cond_3

    iget-object v2, p1, Laxa;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Laxa;->r:Lbbs;

    iget-object v1, p1, Laxa;->r:Lbbs;

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

    iget v1, p0, Laxa;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Laxa;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Laxa;->r:Lbbs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxa;->r:Lbbs;

    invoke-virtual {v0}, Lbbs;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Laxa;->r:Lbbs;

    invoke-virtual {v0}, Lbbs;->hashCode()I

    move-result v0

    goto :goto_0
.end method

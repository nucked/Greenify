.class public abstract Lbbw;
.super Ljava/lang/Object;


# instance fields
.field protected volatile s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbbw;->s:I

    return-void
.end method

.method public static final a(Lbbw;[B)Lbbw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbbw;",
            ">(TT;[B)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lbbw;->b(Lbbw;[BII)Lbbw;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lbbw;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lbbo;->a([BII)Lbbo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbw;->a(Lbbo;)V

    invoke-virtual {v0}, Lbbo;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final a(Lbbw;)[B
    .locals 3

    invoke-virtual {p0}, Lbbw;->g()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lbbw;->a(Lbbw;[BII)V

    return-object v0
.end method

.method public static final b(Lbbw;[BII)Lbbw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbbw;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lbbn;->a([BII)Lbbn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbw;->b(Lbbn;)Lbbw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbn;->a(I)V
    :try_end_0
    .catch Lbbv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lbbo;)V
    .locals 0

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Lbbn;)Lbbw;
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbbw;->e()Lbbw;

    move-result-object v0

    return-object v0
.end method

.method public e()Lbbw;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbw;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lbbw;->s:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lbbw;->g()I

    :cond_0
    iget v0, p0, Lbbw;->s:I

    return v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lbbw;->b()I

    move-result v0

    iput v0, p0, Lbbw;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lbbx;->a(Lbbw;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

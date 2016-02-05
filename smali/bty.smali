.class final Lbty;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 389
    invoke-virtual {p1}, Lbvb;->j()V

    .line 390
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Lbqs;

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lbty;->a(Lbve;Ljava/math/BigInteger;)V

    return-void
.end method

.method public a(Lbve;Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 400
    invoke-virtual {p1, p2}, Lbve;->a(Ljava/lang/Number;)Lbve;

    .line 401
    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lbty;->a(Lbvb;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

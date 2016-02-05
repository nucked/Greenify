.class final Lbuc;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/net/URI;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v1

    sget-object v2, Lbvd;->i:Lbvd;

    if-ne v1, v2, :cond_1

    .line 464
    invoke-virtual {p1}, Lbvb;->j()V

    .line 469
    :cond_0
    :goto_0
    return-object v0

    .line 468
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v1

    .line 469
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v1, Lbql;

    invoke-direct {v1, v0}, Lbql;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 460
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Lbuc;->a(Lbve;Ljava/net/URI;)V

    return-void
.end method

.method public a(Lbve;Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 476
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;

    .line 477
    return-void

    .line 476
    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lbuc;->a(Lbvb;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

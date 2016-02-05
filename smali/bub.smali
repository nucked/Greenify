.class final Lbub;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/net/URL;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v1

    sget-object v2, Lbvd;->i:Lbvd;

    if-ne v1, v2, :cond_1

    .line 446
    invoke-virtual {p1}, Lbvb;->j()V

    .line 450
    :cond_0
    :goto_0
    return-object v0

    .line 449
    :cond_1
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 442
    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, Lbub;->a(Lbve;Ljava/net/URL;)V

    return-void
.end method

.method public a(Lbve;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 454
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;

    .line 455
    return-void

    .line 454
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lbub;->a(Lbvb;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

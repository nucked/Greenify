.class final Lbuf;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/util/UUID;
    .locals 2

    .prologue
    .line 504
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 505
    invoke-virtual {p1}, Lbvb;->j()V

    .line 506
    const/4 v0, 0x0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 501
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lbuf;->a(Lbve;Ljava/util/UUID;)V

    return-void
.end method

.method public a(Lbve;Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 512
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;

    .line 513
    return-void

    .line 512
    :cond_0
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lbuf;->a(Lbvb;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
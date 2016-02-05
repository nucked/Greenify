.class final Lbue;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 486
    invoke-virtual {p1}, Lbvb;->j()V

    .line 487
    const/4 v0, 0x0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 482
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lbue;->a(Lbve;Ljava/net/InetAddress;)V

    return-void
.end method

.method public a(Lbve;Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 494
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;

    .line 495
    return-void

    .line 494
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lbue;->a(Lbvb;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

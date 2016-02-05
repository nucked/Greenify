.class final Lbtw;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    .line 352
    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 353
    invoke-virtual {p1}, Lbvb;->j()V

    .line 354
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    .line 357
    :cond_0
    sget-object v1, Lbvd;->h:Lbvd;

    if-ne v0, v1, :cond_1

    .line 358
    invoke-virtual {p1}, Lbvb;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 348
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lbtw;->a(Lbve;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lbve;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    invoke-virtual {p1, p2}, Lbve;->b(Ljava/lang/String;)Lbve;

    .line 365
    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lbtw;->a(Lbvb;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

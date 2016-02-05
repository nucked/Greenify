.class final Lbtz;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 410
    invoke-virtual {p1}, Lbvb;->j()V

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 406
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lbtz;->a(Lbve;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public a(Lbve;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 417
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;

    .line 418
    return-void

    .line 417
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lbtz;->a(Lbvb;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

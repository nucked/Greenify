.class final Lbuv;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 215
    invoke-virtual {p1}, Lbvb;->j()V

    .line 216
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lbvb;->m()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Lbqs;

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lbve;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p1, p2}, Lbve;->a(Ljava/lang/Number;)Lbve;

    .line 227
    return-void
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lbuv;->a(Lbve;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lbuv;->a(Lbvb;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

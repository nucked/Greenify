.class final Lbtt;
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
    .line 289
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 293
    invoke-virtual {p1}, Lbvb;->j()V

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbvb;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lbve;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p1, p2}, Lbve;->a(Ljava/lang/Number;)Lbve;

    .line 301
    return-void
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 289
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lbtt;->a(Lbve;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lbtt;->a(Lbvb;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
.class Lbqb;
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


# instance fields
.field final synthetic a:Lbpy;


# direct methods
.method constructor <init>(Lbpy;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lbqb;->a:Lbpy;

    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 257
    invoke-virtual {p1}, Lbvb;->j()V

    .line 258
    const/4 v0, 0x0

    .line 260
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
    .locals 3

    .prologue
    .line 263
    if-nez p2, :cond_0

    .line 264
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 268
    iget-object v2, p0, Lbqb;->a:Lbpy;

    invoke-static {v2, v0, v1}, Lbpy;->a(Lbpy;D)V

    .line 269
    invoke-virtual {p1, p2}, Lbve;->a(Ljava/lang/Number;)Lbve;

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 254
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lbqb;->a(Lbve;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lbqb;->a(Lbvb;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

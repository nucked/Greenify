.class Lbqd;
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
    .line 310
    iput-object p1, p0, Lbqd;->a:Lbpy;

    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 313
    invoke-virtual {p1}, Lbvb;->j()V

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbvb;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lbve;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 319
    if-nez p2, :cond_0

    .line 320
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lbqd;->a(Lbve;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lbqd;->a(Lbvb;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

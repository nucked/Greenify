.class Lbqc;
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
    .line 278
    iput-object p1, p0, Lbqc;->a:Lbpy;

    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/Float;
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p1}, Lbvb;->j()V

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbvb;->k()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lbve;Ljava/lang/Number;)V
    .locals 4

    .prologue
    .line 287
    if-nez p2, :cond_0

    .line 288
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 292
    iget-object v1, p0, Lbqc;->a:Lbpy;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lbpy;->a(Lbpy;D)V

    .line 293
    invoke-virtual {p1, p2}, Lbve;->a(Ljava/lang/Number;)Lbve;

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 278
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lbqc;->a(Lbve;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lbqc;->a(Lbvb;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

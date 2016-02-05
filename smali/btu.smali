.class final Lbtu;
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
    .line 304
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 307
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    .line 308
    sget-object v1, Lbus;->a:[I

    invoke-virtual {v0}, Lbvd;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 315
    :pswitch_0
    new-instance v1, Lbqs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number, got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :pswitch_1
    invoke-virtual {p1}, Lbvb;->j()V

    .line 311
    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lbsb;

    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lbve;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 320
    invoke-virtual {p1, p2}, Lbve;->a(Ljava/lang/Number;)Lbve;

    .line 321
    return-void
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lbtu;->a(Lbve;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lbtu;->a(Lbvb;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

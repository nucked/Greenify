.class final Lbao;
.super Laps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laps",
        "<",
        "Lbcz;",
        "Lbat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laps;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lats;Ljava/lang/Object;Laqc;Laqd;)Lapt;
    .locals 7

    move-object v4, p4

    check-cast v4, Lbat;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lbao;->a(Landroid/content/Context;Landroid/os/Looper;Lats;Lbat;Laqc;Laqd;)Lbcz;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lats;Lbat;Laqc;Laqd;)Lbcz;
    .locals 8

    if-nez p4, :cond_0

    sget-object v5, Lbat;->a:Lbat;

    :goto_0
    new-instance v0, Lbcz;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbcz;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLats;Lbat;Laqc;Laqd;)V

    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method

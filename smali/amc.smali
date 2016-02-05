.class final Lamc;
.super Laps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laps",
        "<",
        "Laoq;",
        "Laoz;",
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
.method public a(Landroid/content/Context;Landroid/os/Looper;Lats;Laoz;Laqc;Laqd;)Laoq;
    .locals 7

    new-instance v0, Laoq;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Laoq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lats;Laoz;Laqc;Laqd;)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lats;Ljava/lang/Object;Laqc;Laqd;)Lapt;
    .locals 7

    move-object v4, p4

    check-cast v4, Laoz;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lamc;->a(Landroid/content/Context;Landroid/os/Looper;Lats;Laoz;Laqc;Laqd;)Laoq;

    move-result-object v0

    return-object v0
.end method

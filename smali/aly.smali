.class final Laly;
.super Laps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laps",
        "<",
        "Layd;",
        "Lamf;",
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

    check-cast v4, Lamf;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Laly;->a(Landroid/content/Context;Landroid/os/Looper;Lats;Lamf;Laqc;Laqd;)Layd;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lats;Lamf;Laqc;Laqd;)Layd;
    .locals 7

    new-instance v0, Layd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Layd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lats;Lamf;Laqc;Laqd;)V

    return-object v0
.end method

.class final Lalz;
.super Laps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laps",
        "<",
        "Lamo;",
        "Lame;",
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
.method public a(Landroid/content/Context;Landroid/os/Looper;Lats;Lame;Laqc;Laqd;)Lamo;
    .locals 7

    new-instance v0, Lamo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lamo;-><init>(Landroid/content/Context;Landroid/os/Looper;Lats;Lame;Laqc;Laqd;)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lats;Ljava/lang/Object;Laqc;Laqd;)Lapt;
    .locals 7

    move-object v4, p4

    check-cast v4, Lame;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lalz;->a(Landroid/content/Context;Landroid/os/Looper;Lats;Lame;Laqc;Laqd;)Lamo;

    move-result-object v0

    return-object v0
.end method

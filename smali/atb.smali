.class public Latb;
.super Latx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Latx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final d:Lapv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapv",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILaqc;Laqd;Lats;Lapv;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Latx;-><init>(Landroid/content/Context;Landroid/os/Looper;ILats;Laqc;Laqd;)V

    iput-object p7, p0, Latb;->d:Lapv;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Latb;->d:Lapv;

    invoke-interface {v0}, Lapv;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Latb;->d:Lapv;

    invoke-interface {v0, p1, p2}, Lapv;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Latb;->d:Lapv;

    invoke-interface {v0, p1}, Lapv;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Latb;->d:Lapv;

    invoke-interface {v0}, Lapv;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

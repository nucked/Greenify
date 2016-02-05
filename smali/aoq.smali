.class public Laoq;
.super Latx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latx",
        "<",
        "Laof;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Laoz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lats;Laoz;Laqc;Laqd;)V
    .locals 7

    const/16 v3, 0x57

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Latx;-><init>(Landroid/content/Context;Landroid/os/Looper;ILats;Laqc;Laqd;)V

    invoke-static {p4}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoz;

    iput-object v0, p0, Laoq;->d:Laoz;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Laof;
    .locals 1

    invoke-static {p1}, Laog;->a(Landroid/os/IBinder;)Laof;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.service.START"

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Laoq;->a(Landroid/os/IBinder;)Laof;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    return-object v0
.end method

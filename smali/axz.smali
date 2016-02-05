.class public Laxz;
.super Latx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latx",
        "<",
        "Laya;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lats;Laqc;Laqd;)V
    .locals 7

    const/16 v3, 0x5c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Latx;-><init>(Landroid/content/Context;Landroid/os/Looper;ILats;Laqc;Laqd;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Laya;
    .locals 1

    invoke-static {p1}, Layb;->a(Landroid/os/IBinder;)Laya;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.consent.START"

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Laxz;->a(Landroid/os/IBinder;)Laya;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.consent.internal.IConsentService"

    return-object v0
.end method

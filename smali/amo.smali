.class public final Lamo;
.super Latx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latx",
        "<",
        "Lamu;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lame;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lats;Lame;Laqc;Laqd;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Latx;-><init>(Landroid/content/Context;Landroid/os/Looper;ILats;Laqc;Laqd;)V

    iput-object p4, p0, Lamo;->d:Lame;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lamu;
    .locals 1

    invoke-static {p1}, Lamv;->a(Landroid/os/IBinder;)Lamu;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lamo;->a(Landroid/os/IBinder;)Lamu;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method protected c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lamo;->d:Lame;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamo;->d:Lame;

    invoke-virtual {v0}, Lame;->a()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

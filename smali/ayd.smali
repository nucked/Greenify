.class public final Layd;
.super Latx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latx",
        "<",
        "Layh;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lats;Lamf;Laqc;Laqd;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Latx;-><init>(Landroid/content/Context;Landroid/os/Looper;ILats;Laqc;Laqd;)V

    if-nez p4, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Layd;->d:Landroid/os/Bundle;

    return-void

    :cond_0
    invoke-virtual {p4}, Lamf;->a()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Layh;
    .locals 1

    invoke-static {p1}, Layi;->a(Landroid/os/IBinder;)Layh;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Layd;->a(Landroid/os/IBinder;)Layh;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method

.method protected c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Layd;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, Layd;->o()Lats;

    move-result-object v0

    invoke-virtual {v0}, Lats;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lalx;->g:Lapm;

    invoke-virtual {v0, v1}, Lats;->a(Lapm;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

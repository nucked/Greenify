.class public Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;
.super Laso;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laso;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic L()Lavu;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->a()Lapg;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lapg;
    .locals 1

    invoke-static {}, Lapg;->a()Lapg;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->h()Lel;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2, p0}, Lapj;->a(ILandroid/app/Activity;Lei;ILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void
.end method

.method protected b(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->a()Lapg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->h()Lel;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lapg;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->h()Lel;

    move-result-object v1

    invoke-virtual {v1}, Lel;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Laqq;

    invoke-direct {v2, p0, v0}, Laqq;-><init>(Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lasf;->a(Landroid/content/Context;Lasf;)Lasf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->a:Lasf;

    return-void
.end method

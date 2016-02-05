.class public Lbcz;
.super Latx;

# interfaces
.implements Lbas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latx",
        "<",
        "Lbcu;",
        ">;",
        "Lbas;"
    }
.end annotation


# instance fields
.field private final d:Z

.field private final e:Lats;

.field private final f:Landroid/os/Bundle;

.field private g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLats;Landroid/os/Bundle;Laqc;Laqd;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Latx;-><init>(Landroid/content/Context;Landroid/os/Looper;ILats;Laqc;Laqd;)V

    iput-boolean p3, p0, Lbcz;->d:Z

    iput-object p4, p0, Lbcz;->e:Lats;

    iput-object p5, p0, Lbcz;->f:Landroid/os/Bundle;

    invoke-virtual {p4}, Lats;->j()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbcz;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLats;Lbat;Laqc;Laqd;)V
    .locals 8

    invoke-static {p4}, Lbcz;->a(Lats;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lbcz;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLats;Landroid/os/Bundle;Laqc;Laqd;)V

    return-void
.end method

.method public static a(Lats;)Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Lats;->i()Lbat;

    move-result-object v0

    invoke-virtual {p0}, Lats;->j()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {p0}, Lats;->b()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    const-string v3, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0}, Lbat;->a()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0}, Lbat;->b()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0}, Lbat;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v0}, Lbat;->d()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v0}, Lbat;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v0}, Lbat;->f()Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-object v2
.end method

.method private s()Lcom/google/android/gms/common/internal/ResolveAccountRequest;
    .locals 4

    iget-object v0, p0, Lbcz;->e:Lats;

    invoke-virtual {v0}, Lats;->c()Landroid/accounts/Account;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "<<default account>>"

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lbcz;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v0

    invoke-virtual {v0}, Laos;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Lbcz;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v2
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lbcu;
    .locals 1

    invoke-static {p1}, Lbcv;->a(Landroid/os/IBinder;)Lbcu;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public a(Lauo;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lbcz;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbcu;

    iget-object v1, p0, Lbcz;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lbcu;->a(Lauo;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lbcr;)V
    .locals 3

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0}, Lbcz;->s()Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    move-result-object v1

    invoke-virtual {p0}, Lbcz;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbcu;

    new-instance v2, Lcom/google/android/gms/signin/internal/SignInRequest;

    invoke-direct {v2, v1}, Lcom/google/android/gms/signin/internal/SignInRequest;-><init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V

    invoke-interface {v0, v2, p1}, Lbcu;->a(Lcom/google/android/gms/signin/internal/SignInRequest;Lbcr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/google/android/gms/signin/internal/SignInResponse;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/internal/SignInResponse;-><init>(I)V

    invoke-interface {p1, v1}, Lbcr;->a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "SignInClientImpl"

    const-string v2, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lbcz;->a(Landroid/os/IBinder;)Lbcu;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method protected c()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lbcz;->e:Lats;

    invoke-virtual {v0}, Lats;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbcz;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcz;->f:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lbcz;->e:Lats;

    invoke-virtual {v2}, Lats;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lbcz;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public f()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lbcz;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbcu;

    iget-object v1, p0, Lbcz;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbcu;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lbcz;->d:Z

    return v0
.end method

.method public k()V
    .locals 1

    new-instance v0, Laud;

    invoke-direct {v0, p0}, Laud;-><init>(Latx;)V

    invoke-virtual {p0, v0}, Lbcz;->a(Laqe;)V

    return-void
.end method

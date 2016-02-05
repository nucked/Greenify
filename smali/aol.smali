.class public Laol;
.super Laob;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Laob;-><init>()V

    iput-object p1, p0, Laol;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Laol;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lapj;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Google Play services."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Laol;->a:Landroid/content/Context;

    invoke-static {v0}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v1

    invoke-virtual {v1}, Laos;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Laos;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    :cond_0
    new-instance v1, Laqa;

    iget-object v3, p0, Laol;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Laqa;-><init>(Landroid/content/Context;)V

    sget-object v3, Lalx;->j:Lapm;

    invoke-virtual {v1, v3, v0}, Laqa;->a(Lapm;Lapo;)Laqa;

    move-result-object v0

    invoke-virtual {v0}, Laqa;->b()Lapz;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lapz;->f()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_2

    sget-object v0, Lalx;->q:Lani;

    invoke-interface {v0, v1}, Lani;->d(Lapz;)Laqg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lapz;->g()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lapz;->h()Laqg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lapz;->g()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Laol;->b()V

    invoke-direct {p0}, Laol;->c()V

    return-void
.end method

.class public Laos;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/locks/Lock;

.field private static b:Laos;


# instance fields
.field private final c:Ljava/util/concurrent/locks/Lock;

.field private final d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Laos;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    const-string v0, "com.google.android.gms.signin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Laos;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Laos;
    .locals 2

    invoke-static {p0}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Laos;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Laos;->b:Laos;

    if-nez v0, :cond_0

    new-instance v0, Laos;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laos;-><init>(Landroid/content/Context;)V

    sput-object v0, Laos;->b:Laos;

    :cond_0
    sget-object v0, Laos;->b:Laos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Laos;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Laos;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    const-string v0, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v0}, Laos;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laos;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/SignInAccount;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "signInAccount"

    invoke-direct {p0, v1, p1}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laos;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/SignInAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laos;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/auth/api/signin/SignInAccount;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 3

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "googleSignInAccount"

    invoke-direct {p0, v1, v0}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Laos;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "googleSignInOptions"

    invoke-direct {p0, v1, v0}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laos;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/google/android/gms/auth/api/signin/SignInAccount;Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;)V
    .locals 3

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laos;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/SignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laos;->f(Ljava/lang/String;)V

    :cond_0
    const-string v1, "signInConfiguration"

    invoke-direct {p0, v1, v0}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Laos;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signInAccount"

    invoke-direct {p0, v1, v0}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laos;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laos;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Laos;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "googleSignInAccount"

    invoke-direct {p0, v1, p1}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laos;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    const-string v0, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v0}, Laos;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laos;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "defaultGoogleSignInAccount"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laos;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Laos;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/auth/api/signin/SignInAccount;Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;)V
    .locals 2

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Laos;->c()V

    const-string v0, "defaultSignInAccount"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laos;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "defaultGoogleSignInAccount"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laos;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Laos;->a(Lcom/google/android/gms/auth/api/signin/SignInAccount;Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;)V

    return-void
.end method

.method c(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "googleSignInOptions"

    invoke-direct {p0, v1, p1}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laos;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const-string v0, "defaultSignInAccount"

    invoke-virtual {p0, v0}, Laos;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaultSignInAccount"

    invoke-virtual {p0, v1}, Laos;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Laos;->d()V

    invoke-virtual {p0, v0}, Laos;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Laos;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public d()V
    .locals 2

    const-string v0, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v0}, Laos;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v1}, Laos;->g(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Laos;->f(Ljava/lang/String;)V

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Laos;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/SignInAccount;

    move-result-object v0

    const-string v1, "signInAccount"

    invoke-direct {p0, v1, p1}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laos;->g(Ljava/lang/String;)V

    const-string v1, "signInConfiguration"

    invoke-direct {p0, v1, p1}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laos;->g(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laos;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method f(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "googleSignInAccount"

    invoke-direct {p0, v0, p1}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laos;->g(Ljava/lang/String;)V

    const-string v0, "googleSignInOptions"

    invoke-direct {p0, v0, p1}, Laos;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laos;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Laos;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laos;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

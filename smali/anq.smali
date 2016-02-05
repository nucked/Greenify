.class public Lanq;
.super Ljava/lang/Object;

# interfaces
.implements Lani;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lapz;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Laqf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapz;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ")",
            "Laqf",
            "<",
            "Lanl;",
            ">;"
        }
    .end annotation

    const-string v0, "GoogleSignInApiImpl"

    const-string v1, "trySilentSignIn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lanr;

    invoke-direct {v0, p0, p1, p2}, Lanr;-><init>(Lanq;Lapz;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {p1, v0}, Lapz;->a(Laqs;)Laqs;

    move-result-object v0

    new-instance v1, Lasj;

    invoke-direct {v1, v0}, Lasj;-><init>(Laqg;)V

    return-object v1
.end method

.method private a(Landroid/accounts/Account;Landroid/accounts/Account;)Z
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private e(Lapz;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    sget-object v0, Lalx;->e:Lapu;

    invoke-virtual {p1, v0}, Lapz;->a(Lapu;)Lapt;

    move-result-object v0

    check-cast v0, Lany;

    invoke-virtual {v0}, Lany;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lapz;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lalx;->e:Lapu;

    invoke-virtual {p1, v0}, Lapz;->a(Lapu;)Lapt;

    move-result-object v0

    check-cast v0, Lany;

    invoke-virtual {v0}, Lany;->e()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lanl;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "GoogleSignInApiImpl"

    const-string v2, "getSavedSignInResultIfEligible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v1

    invoke-virtual {v1}, Laos;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b()Landroid/accounts/Account;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lanq;->a(Landroid/accounts/Account;Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Laos;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lanl;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, v2}, Lanl;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Lanl;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "googleSignInStatus"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "googleSignInAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "googleSignInAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v1, "googleSignInStatus"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    :cond_2
    new-instance v2, Lanl;

    invoke-direct {v2, v0, v1}, Lanl;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public b(Lapz;)Laqf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapz;",
            ")",
            "Laqf",
            "<",
            "Lanl;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lanq;->e(Lapz;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    invoke-virtual {p1}, Lapz;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lanq;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lanl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Laqi;->a(Laql;Lapz;)Laqf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lanq;->a(Lapz;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Laqf;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lapz;)Laqg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapz;",
            ")",
            "Laqg",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lapz;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v0

    invoke-virtual {v0}, Laos;->d()V

    invoke-static {}, Lapz;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    invoke-virtual {v0}, Lapz;->d()V

    goto :goto_0

    :cond_0
    new-instance v0, Lant;

    invoke-direct {v0, p0, p1}, Lant;-><init>(Lanq;Lapz;)V

    invoke-virtual {p1, v0}, Lapz;->b(Laqs;)Laqs;

    move-result-object v0

    return-object v0
.end method

.method public d(Lapz;)Laqg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapz;",
            ")",
            "Laqg",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lapz;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v0

    invoke-virtual {v0}, Laos;->d()V

    invoke-static {}, Lapz;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    invoke-virtual {v0}, Lapz;->d()V

    goto :goto_0

    :cond_0
    new-instance v0, Lanv;

    invoke-direct {v0, p0, p1}, Lanv;-><init>(Lanq;Lapz;)V

    invoke-virtual {p1, v0}, Lapz;->b(Laqs;)Laqs;

    move-result-object v0

    return-object v0
.end method

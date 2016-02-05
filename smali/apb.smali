.class public Lapb;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lave;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lapb;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    return-void
.end method


# virtual methods
.method public a()Laoz;
    .locals 3

    iget-object v0, p0, Lapb;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->c()Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapb;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must support either Facebook, Google or Email sign-in."

    invoke-static {v0, v1}, Lave;->a(ZLjava/lang/Object;)V

    new-instance v0, Laoz;

    iget-object v1, p0, Lapb;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoz;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;Lapa;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lapb;
    .locals 1

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lapb;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    return-object p0
.end method

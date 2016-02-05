.class public Lann;
.super Ljava/lang/Object;

# interfaces
.implements Lfu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfu",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 0

    iput-object p1, p0, Lann;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Lanm;)V
    .locals 0

    invoke-direct {p0, p1}, Lann;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Ljc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ljc",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lanp;

    iget-object v1, p0, Lann;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {}, Lapz;->a()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanp;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method public a(Ljc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljc",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public synthetic a(Ljc;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lann;->a(Ljc;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljc;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljc",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lann;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v1, p0, Lann;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->a(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)I

    move-result v1

    iget-object v2, p0, Lann;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->b(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lann;->a:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    return-void
.end method

.class Lanr;
.super Lanx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanx",
        "<",
        "Lanl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field final synthetic b:Lanq;


# direct methods
.method constructor <init>(Lanq;Lapz;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    iput-object p1, p0, Lanr;->b:Lanq;

    iput-object p3, p0, Lanr;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p0, p1, p2}, Lanx;-><init>(Lanq;Lapz;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lanl;
    .locals 2

    new-instance v0, Lanl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lanl;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected a(Lany;)V
    .locals 3

    invoke-virtual {p1}, Lany;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v1

    invoke-virtual {p1}, Lany;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laof;

    new-instance v2, Lans;

    invoke-direct {v2, p0, v1}, Lans;-><init>(Lanr;Laos;)V

    iget-object v1, p0, Lanr;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-interface {v0, v2, v1}, Laof;->a(Laoc;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method protected bridge synthetic a(Lapt;)V
    .locals 0

    check-cast p1, Lany;

    invoke-virtual {p0, p1}, Lanr;->a(Lany;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Laql;
    .locals 1

    invoke-virtual {p0, p1}, Lanr;->a(Lcom/google/android/gms/common/api/Status;)Lanl;

    move-result-object v0

    return-object v0
.end method

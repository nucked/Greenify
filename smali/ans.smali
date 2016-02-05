.class Lans;
.super Lano;


# instance fields
.field final synthetic a:Laos;

.field final synthetic b:Lanr;


# direct methods
.method constructor <init>(Lanr;Laos;)V
    .locals 0

    iput-object p1, p0, Lans;->b:Lanr;

    iput-object p2, p0, Lans;->a:Laos;

    invoke-direct {p0}, Lano;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lans;->a:Laos;

    iget-object v1, p0, Lans;->b:Lanr;

    iget-object v1, v1, Lanr;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, p1, v1}, Laos;->b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    :cond_0
    iget-object v0, p0, Lans;->b:Lanr;

    new-instance v1, Lanl;

    invoke-direct {v1, p1, p2}, Lanl;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lanr;->a(Laql;)V

    return-void
.end method

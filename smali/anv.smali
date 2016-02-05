.class Lanv;
.super Lanx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanx",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanq;


# direct methods
.method constructor <init>(Lanq;Lapz;)V
    .locals 0

    iput-object p1, p0, Lanv;->a:Lanq;

    invoke-direct {p0, p1, p2}, Lanx;-><init>(Lanq;Lapz;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected a(Lany;)V
    .locals 3

    invoke-virtual {p1}, Lany;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Laof;

    new-instance v1, Lanw;

    invoke-direct {v1, p0}, Lanw;-><init>(Lanv;)V

    invoke-virtual {p1}, Lany;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Laof;->c(Laoc;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method

.method protected bridge synthetic a(Lapt;)V
    .locals 0

    check-cast p1, Lany;

    invoke-virtual {p0, p1}, Lanv;->a(Lany;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Laql;
    .locals 1

    invoke-virtual {p0, p1}, Lanv;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

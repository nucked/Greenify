.class public final Lauf;
.super Laty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latx",
        "<TT;>.aty;"
    }
.end annotation


# instance fields
.field final synthetic e:Latx;


# direct methods
.method public constructor <init>(Latx;I)V
    .locals 1

    iput-object p1, p0, Lauf;->e:Latx;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Laty;-><init>(Latx;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lauf;->e:Latx;

    invoke-static {v0}, Latx;->b(Latx;)Laqe;

    move-result-object v0

    invoke-interface {v0, p1}, Laqe;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lauf;->e:Latx;

    invoke-virtual {v0, p1}, Latx;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lauf;->e:Latx;

    invoke-static {v0}, Latx;->b(Latx;)Laqe;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Laqe;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method

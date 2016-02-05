.class Laru;
.super Ljava/lang/Object;

# interfaces
.implements Laqm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laqm",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lasn;

.field final synthetic b:Z

.field final synthetic c:Lapz;

.field final synthetic d:Larp;


# direct methods
.method constructor <init>(Larp;Lasn;ZLapz;)V
    .locals 0

    iput-object p1, p0, Laru;->d:Larp;

    iput-object p2, p0, Laru;->a:Lasn;

    iput-boolean p3, p0, Laru;->b:Z

    iput-object p4, p0, Laru;->c:Lapz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Laql;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Laru;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Laru;->d:Larp;

    invoke-static {v0}, Larp;->d(Larp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v0

    invoke-virtual {v0}, Laos;->d()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laru;->d:Larp;

    invoke-virtual {v0}, Larp;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laru;->d:Larp;

    invoke-virtual {v0}, Larp;->j()V

    :cond_0
    iget-object v0, p0, Laru;->a:Lasn;

    invoke-virtual {v0, p1}, Lasn;->a(Laql;)V

    iget-boolean v0, p0, Laru;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Laru;->c:Lapz;

    invoke-virtual {v0}, Lapz;->g()V

    :cond_1
    return-void
.end method

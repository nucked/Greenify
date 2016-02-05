.class public Laro;
.super Ljava/lang/Object;

# interfaces
.implements Lasa;


# instance fields
.field private final a:Lasb;


# direct methods
.method public constructor <init>(Lasb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laro;->a:Lasb;

    return-void
.end method


# virtual methods
.method public a(Laqs;)Laqs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lapt;",
            "R::",
            "Laql;",
            "T:",
            "Laqs",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Laro;->a:Lasb;

    iget-object v0, v0, Lasb;->g:Larp;

    iget-object v0, v0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Laro;->a:Lasb;

    invoke-virtual {v0}, Lasb;->i()V

    iget-object v0, p0, Laro;->a:Lasb;

    iget-object v0, v0, Lasb;->g:Larp;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Larp;->d:Ljava/util/Set;

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lapm",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public b(Laqs;)Laqs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lapt;",
            "T:",
            "Laqs",
            "<+",
            "Laql;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Laro;->a:Lasb;

    invoke-virtual {v0}, Lasb;->e()V

    return-void
.end method

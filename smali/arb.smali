.class public Larb;
.super Ljava/lang/Object;

# interfaces
.implements Lasa;


# instance fields
.field private final a:Lasb;

.field private b:Z


# direct methods
.method public constructor <init>(Lasb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Larb;->b:Z

    iput-object p1, p0, Larb;->a:Lasb;

    return-void
.end method

.method static synthetic a(Larb;)Lasb;
    .locals 1

    iget-object v0, p0, Larb;->a:Lasb;

    return-object v0
.end method

.method private a(Larz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lapt;",
            ">(",
            "Larz",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Larb;->a:Lasb;

    iget-object v0, v0, Lasb;->g:Larp;

    invoke-virtual {v0, p1}, Larp;->a(Larz;)V

    iget-object v0, p0, Larb;->a:Lasb;

    iget-object v0, v0, Lasb;->g:Larp;

    invoke-interface {p1}, Larz;->a()Lapu;

    move-result-object v1

    invoke-virtual {v0, v1}, Larp;->a(Lapu;)Lapt;

    move-result-object v0

    invoke-interface {v0}, Lapt;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Larb;->a:Lasb;

    iget-object v1, v1, Lasb;->b:Ljava/util/Map;

    invoke-interface {p1}, Larz;->a()Lapu;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Larz;->c(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Larz;->b(Lapt;)V

    goto :goto_0
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

    invoke-virtual {p0, p1}, Larb;->b(Laqs;)Laqs;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Larb;->a:Lasb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lasb;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Larb;->a:Lasb;

    iget-object v0, v0, Lasb;->h:Lash;

    iget-boolean v1, p0, Larb;->b:Z

    invoke-interface {v0, p1, v1}, Lash;->a(IZ)V

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

    :try_start_0
    invoke-direct {p0, p1}, Larb;->a(Larz;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Larb;->a:Lasb;

    new-instance v1, Larc;

    invoke-direct {v1, p0, p0}, Larc;-><init>(Larb;Lasa;)V

    invoke-virtual {v0, v1}, Lasb;->a(Lasc;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Larb;->b:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Larb;->a:Lasb;

    iget-object v2, v2, Lasb;->g:Larp;

    invoke-virtual {v2}, Larp;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Larb;->b:Z

    iget-object v0, p0, Larb;->a:Lasb;

    iget-object v0, v0, Lasb;->g:Larp;

    iget-object v0, v0, Larp;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasr;

    invoke-virtual {v0}, Lasr;->a()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Larb;->a:Lasb;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lasb;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Larb;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Larb;->b:Z

    iget-object v0, p0, Larb;->a:Lasb;

    new-instance v1, Lard;

    invoke-direct {v1, p0, p0}, Lard;-><init>(Larb;Lasa;)V

    invoke-virtual {v0, v1}, Lasb;->a(Lasc;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Larb;->b:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Larb;->b:Z

    iget-object v0, p0, Larb;->a:Lasb;

    iget-object v0, v0, Lasb;->g:Larp;

    invoke-virtual {v0, v1}, Larp;->a(Z)V

    invoke-virtual {p0}, Larb;->b()Z

    :cond_0
    return-void
.end method

.class Larh;
.super Larn;


# instance fields
.field final synthetic a:Lare;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lapt;",
            "Laqe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lare;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lapt;",
            "Laqe;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Larh;->a:Lare;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Larn;-><init>(Lare;Larf;)V

    iput-object p2, p0, Larh;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Larh;->a:Lare;

    invoke-static {v0}, Lare;->b(Lare;)Lavu;

    move-result-object v0

    iget-object v1, p0, Larh;->a:Lare;

    invoke-static {v1}, Lare;->a(Lare;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavu;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Larh;->a:Lare;

    invoke-static {v0}, Lare;->d(Lare;)Lasb;

    move-result-object v0

    new-instance v2, Lari;

    iget-object v3, p0, Larh;->a:Lare;

    invoke-direct {v2, p0, v3, v1}, Lari;-><init>(Larh;Lasa;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lasb;->a(Lasc;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Larh;->a:Lare;

    invoke-static {v0}, Lare;->e(Lare;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Larh;->a:Lare;

    invoke-static {v0}, Lare;->f(Lare;)Lbas;

    move-result-object v0

    invoke-interface {v0}, Lbas;->k()V

    :cond_2
    iget-object v0, p0, Larh;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapt;

    iget-object v1, p0, Larh;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqe;

    invoke-interface {v0, v1}, Lapt;->a(Laqe;)V

    goto :goto_0
.end method

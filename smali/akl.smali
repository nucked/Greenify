.class public Lakl;
.super Lakf;


# instance fields
.field private final a:Lakn;

.field private b:Lajf;

.field private final c:Lalj;

.field private d:Lajr;


# direct methods
.method protected constructor <init>(Lakh;)V
    .locals 2

    invoke-direct {p0, p1}, Lakf;-><init>(Lakh;)V

    new-instance v0, Lajr;

    invoke-virtual {p1}, Lakh;->d()Lazo;

    move-result-object v1

    invoke-direct {v0, v1}, Lajr;-><init>(Lazo;)V

    iput-object v0, p0, Lakl;->d:Lajr;

    new-instance v0, Lakn;

    invoke-direct {v0, p0}, Lakn;-><init>(Lakl;)V

    iput-object v0, p0, Lakl;->a:Lakn;

    new-instance v0, Lakm;

    invoke-direct {v0, p0, p1}, Lakm;-><init>(Lakl;Lakh;)V

    iput-object v0, p0, Lakl;->c:Lalj;

    return-void
.end method

.method static synthetic a(Lakl;)Lakn;
    .locals 1

    iget-object v0, p0, Lakl;->a:Lakn;

    return-object v0
.end method

.method private a(Lajf;)V
    .locals 1

    invoke-virtual {p0}, Lakl;->m()V

    iput-object p1, p0, Lakl;->b:Lajf;

    invoke-direct {p0}, Lakl;->f()V

    invoke-virtual {p0}, Lakl;->t()Lajx;

    move-result-object v0

    invoke-virtual {v0}, Lajx;->h()V

    return-void
.end method

.method static synthetic a(Lakl;Lajf;)V
    .locals 0

    invoke-direct {p0, p1}, Lakl;->a(Lajf;)V

    return-void
.end method

.method static synthetic a(Lakl;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lakl;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method private a(Landroid/content/ComponentName;)V
    .locals 1

    invoke-virtual {p0}, Lakl;->m()V

    iget-object v0, p0, Lakl;->b:Lajf;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lakl;->b:Lajf;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lakl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakl;->h()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lakl;)V
    .locals 0

    invoke-direct {p0}, Lakl;->g()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lakl;->d:Lajr;

    invoke-virtual {v0}, Lajr;->a()V

    iget-object v0, p0, Lakl;->c:Lalj;

    invoke-virtual {p0}, Lakl;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->v()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lalj;->a(J)V

    return-void
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Lakl;->m()V

    invoke-virtual {p0}, Lakl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lakl;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lakl;->e()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    invoke-virtual {p0}, Lakl;->t()Lajx;

    move-result-object v0

    invoke-virtual {v0}, Lajx;->f()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Laje;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lakl;->m()V

    invoke-virtual {p0}, Lakl;->D()V

    iget-object v0, p0, Lakl;->b:Lajf;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Laje;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lakl;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->o()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Laje;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Laje;->d()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lajf;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lakl;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lakl;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lakl;->b(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lakl;->m()V

    invoke-virtual {p0}, Lakl;->D()V

    iget-object v0, p0, Lakl;->b:Lajf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lakl;->m()V

    invoke-virtual {p0}, Lakl;->D()V

    iget-object v1, p0, Lakl;->b:Lajf;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lajf;->a()V

    invoke-direct {p0}, Lakl;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v1}, Lakl;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lakl;->m()V

    invoke-virtual {p0}, Lakl;->D()V

    iget-object v1, p0, Lakl;->b:Lajf;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lakl;->a:Lakn;

    invoke-virtual {v1}, Lakn;->a()Lajf;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lakl;->b:Lajf;

    invoke-direct {p0}, Lakl;->f()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Lakl;->m()V

    invoke-virtual {p0}, Lakl;->D()V

    :try_start_0
    invoke-static {}, Lavi;->a()Lavi;

    move-result-object v0

    invoke-virtual {p0}, Lakl;->o()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lakl;->a:Lakn;

    invoke-virtual {v0, v1, v2}, Lavi;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lakl;->b:Lajf;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lakl;->b:Lajf;

    invoke-direct {p0}, Lakl;->h()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

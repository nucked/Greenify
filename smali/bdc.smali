.class public Lbdc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lbdk;

.field private d:Lbhi;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbde;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbdf;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:J

.field private volatile h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbdk;Ljava/lang/String;JLaxf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdc;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdc;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lbdc;->h:Ljava/lang/String;

    iput-object p1, p0, Lbdc;->a:Landroid/content/Context;

    iput-object p2, p0, Lbdc;->c:Lbdk;

    iput-object p3, p0, Lbdc;->b:Ljava/lang/String;

    iput-wide p4, p0, Lbdc;->g:J

    iget-object v0, p6, Laxf;->b:Laxb;

    invoke-direct {p0, v0}, Lbdc;->a(Laxb;)V

    iget-object v0, p6, Laxf;->a:[Laxe;

    if-eqz v0, :cond_0

    iget-object v0, p6, Laxf;->a:[Laxe;

    invoke-direct {p0, v0}, Lbdc;->a([Laxe;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lbdk;Ljava/lang/String;JLbbe;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdc;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdc;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lbdc;->h:Ljava/lang/String;

    iput-object p1, p0, Lbdc;->a:Landroid/content/Context;

    iput-object p2, p0, Lbdc;->c:Lbdk;

    iput-object p3, p0, Lbdc;->b:Ljava/lang/String;

    iput-wide p4, p0, Lbdc;->g:J

    invoke-direct {p0, p6}, Lbdc;->a(Lbbe;)V

    return-void
.end method

.method private a(Laxb;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lbba;->a(Laxb;)Lbbe;
    :try_end_0
    .catch Lbbi; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0}, Lbdc;->a(Lbbe;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not loading resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lbbi;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lbbe;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Lbbe;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbdc;->h:Ljava/lang/String;

    iget-object v0, p0, Lbdc;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbdc;->f(Ljava/lang/String;)Lbej;

    move-result-object v6

    new-instance v0, Lbhi;

    iget-object v1, p0, Lbdc;->a:Landroid/content/Context;

    iget-object v3, p0, Lbdc;->c:Lbdk;

    new-instance v4, Lbdg;

    invoke-direct {v4, p0, v2}, Lbdg;-><init>(Lbdc;Lbdd;)V

    new-instance v5, Lbdh;

    invoke-direct {v5, p0, v2}, Lbdh;-><init>(Lbdc;Lbdd;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lbhi;-><init>(Landroid/content/Context;Lbbe;Lbdk;Lbjy;Lbjy;Lbej;)V

    invoke-direct {p0, v0}, Lbdc;->a(Lbhi;)V

    const-string v0, "_gtm.loadEventEnabled"

    invoke-virtual {p0, v0}, Lbdc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdc;->c:Lbdk;

    const-string v1, "gtm.load"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtm.id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lbdc;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lbdk;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbdk;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lbhi;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbdc;->d:Lbhi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a([Laxe;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lbdc;->f()Lbhi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbhi;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized f()Lbhi;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbdc;->d:Lbhi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbdc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lbdc;->f()Lbhi;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getBoolean called for closed container."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lbhi;->b(Ljava/lang/String;)Lbgf;

    move-result-object v0

    invoke-virtual {v0}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-static {v0}, Lbip;->d(Laxh;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getBoolean() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lbdc;->g:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lbdc;->f()Lbhi;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getString called for closed container."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lbhi;->b(Ljava/lang/String;)Lbgf;

    move-result-object v0

    invoke-virtual {v0}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-static {v0}, Lbip;->a(Laxh;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getString() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lbip;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method c(Ljava/lang/String;)Lbde;
    .locals 2

    iget-object v1, p0, Lbdc;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbdc;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbde;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 4

    invoke-virtual {p0}, Lbdc;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lbdf;
    .locals 2

    iget-object v1, p0, Lbdc;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbdc;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdf;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbdc;->h:Ljava/lang/String;

    return-object v0
.end method

.method e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbdc;->d:Lbhi;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lbdc;->f()Lbhi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbhi;->a(Ljava/lang/String;)V

    return-void
.end method

.method f(Ljava/lang/String;)Lbej;
    .locals 2

    invoke-static {}, Lbgn;->a()Lbgn;

    move-result-object v0

    invoke-virtual {v0}, Lbgn;->b()Lbgo;

    move-result-object v0

    sget-object v1, Lbgo;->c:Lbgo;

    invoke-virtual {v0, v1}, Lbgo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    new-instance v0, Lbfw;

    invoke-direct {v0}, Lbfw;-><init>()V

    return-object v0
.end method

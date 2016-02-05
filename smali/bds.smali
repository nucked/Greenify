.class public Lbds;
.super Ljava/lang/Object;


# static fields
.field private static g:Lbds;


# instance fields
.field private final a:Lbdx;

.field private final b:Landroid/content/Context;

.field private final c:Lbdk;

.field private final d:Lbht;

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lbji;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lbjw;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbdx;Lbdk;Lbht;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbds;->b:Landroid/content/Context;

    iput-object p4, p0, Lbds;->d:Lbht;

    iput-object p2, p0, Lbds;->a:Lbdx;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbds;->e:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lbds;->c:Lbdk;

    iget-object v0, p0, Lbds;->c:Lbdk;

    new-instance v1, Lbdt;

    invoke-direct {v1, p0}, Lbdt;-><init>(Lbds;)V

    invoke-virtual {v0, v1}, Lbdk;->a(Lbdo;)V

    iget-object v0, p0, Lbds;->c:Lbdk;

    new-instance v1, Lbih;

    iget-object v2, p0, Lbds;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lbih;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbdk;->a(Lbdo;)V

    new-instance v0, Lbjw;

    invoke-direct {v0}, Lbjw;-><init>()V

    iput-object v0, p0, Lbds;->f:Lbjw;

    invoke-direct {p0}, Lbds;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbds;
    .locals 5

    const-class v1, Lbds;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbds;->g:Lbds;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lbdu;

    invoke-direct {v0}, Lbdu;-><init>()V

    new-instance v2, Lbkb;

    invoke-direct {v2, p0}, Lbkb;-><init>(Landroid/content/Context;)V

    new-instance v3, Lbds;

    new-instance v4, Lbdk;

    invoke-direct {v4, v2}, Lbdk;-><init>(Lbdp;)V

    invoke-static {}, Lbhu;->c()Lbhu;

    move-result-object v2

    invoke-direct {v3, p0, v0, v4, v2}, Lbds;-><init>(Landroid/content/Context;Lbdx;Lbdk;Lbht;)V

    sput-object v3, Lbds;->g:Lbds;

    :cond_1
    sget-object v0, Lbds;->g:Lbds;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method static synthetic a(Lbds;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbds;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbds;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbji;

    invoke-virtual {v0, p1}, Lbji;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbds;->b:Landroid/content/Context;

    new-instance v1, Lbdv;

    invoke-direct {v1, p0}, Lbdv;-><init>(Lbds;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Laqg;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Laqg",
            "<",
            "Lbdi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbds;->a:Lbdx;

    iget-object v1, p0, Lbds;->b:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lbds;->f:Lbjw;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lbdx;->a(Landroid/content/Context;Lbds;Landroid/os/Looper;Ljava/lang/String;ILbjw;)Lbjl;

    move-result-object v0

    invoke-virtual {v0}, Lbjl;->a()V

    return-object v0
.end method

.method public a()Lbdk;
    .locals 1

    iget-object v0, p0, Lbds;->c:Lbdk;

    return-object v0
.end method

.method public a(Lbji;)V
    .locals 2

    iget-object v0, p0, Lbds;->e:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized a(Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lbgn;->a()Lbgn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbgn;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lbgn;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lbdw;->a:[I

    invoke-virtual {v1}, Lbgn;->b()Lbgo;

    move-result-object v3

    invoke-virtual {v3}, Lbgo;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lbds;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbji;

    invoke-virtual {v0}, Lbji;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lbji;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbji;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lbds;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbji;

    invoke-virtual {v0}, Lbji;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lbgn;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbji;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbji;->d()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lbji;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lbji;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbji;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lbds;->d:Lbht;

    invoke-virtual {v0}, Lbht;->a()V

    return-void
.end method

.method public b(Lbji;)Z
    .locals 1

    iget-object v0, p0, Lbds;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

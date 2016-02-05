.class Lbhu;
.super Lbht;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static n:Lbhu;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lbex;

.field private volatile d:Lbeu;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lbey;

.field private k:Landroid/os/Handler;

.field private l:Lbft;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbhu;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lbht;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lbhu;->e:I

    iput-boolean v1, p0, Lbhu;->f:Z

    iput-boolean v2, p0, Lbhu;->g:Z

    iput-boolean v1, p0, Lbhu;->h:Z

    iput-boolean v1, p0, Lbhu;->i:Z

    new-instance v0, Lbhv;

    invoke-direct {v0, p0}, Lbhv;-><init>(Lbhu;)V

    iput-object v0, p0, Lbhu;->j:Lbey;

    iput-boolean v2, p0, Lbhu;->m:Z

    return-void
.end method

.method static synthetic a(Lbhu;)Z
    .locals 1

    iget-boolean v0, p0, Lbhu;->h:Z

    return v0
.end method

.method static synthetic b(Lbhu;)I
    .locals 1

    iget v0, p0, Lbhu;->e:I

    return v0
.end method

.method public static c()Lbhu;
    .locals 1

    sget-object v0, Lbhu;->n:Lbhu;

    if-nez v0, :cond_0

    new-instance v0, Lbhu;

    invoke-direct {v0}, Lbhu;-><init>()V

    sput-object v0, Lbhu;->n:Lbhu;

    :cond_0
    sget-object v0, Lbhu;->n:Lbhu;

    return-object v0
.end method

.method static synthetic c(Lbhu;)Z
    .locals 1

    iget-boolean v0, p0, Lbhu;->m:Z

    return v0
.end method

.method static synthetic d(Lbhu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhu;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lbhu;)Lbex;
    .locals 1

    iget-object v0, p0, Lbhu;->c:Lbex;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbhu;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lbft;

    invoke-direct {v0, p0}, Lbft;-><init>(Lbht;)V

    iput-object v0, p0, Lbhu;->l:Lbft;

    iget-object v0, p0, Lbhu;->l:Lbft;

    iget-object v1, p0, Lbhu;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbft;->a(Landroid/content/Context;)V

    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbhu;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lbhw;

    invoke-direct {v2, p0}, Lbhw;-><init>(Lbhu;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbhu;->k:Landroid/os/Handler;

    iget v0, p0, Lbhu;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbhu;->k:Landroid/os/Handler;

    iget-object v1, p0, Lbhu;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lbhu;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lbhu;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbhu;->g:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lbfo;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbhu;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbhu;->d:Lbeu;

    new-instance v1, Lbhx;

    invoke-direct {v1, p0}, Lbhx;-><init>(Lbhu;)V

    invoke-interface {v0, v1}, Lbeu;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lbeu;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbhu;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbhu;->b:Landroid/content/Context;

    iget-object v0, p0, Lbhu;->d:Lbeu;

    if-nez v0, :cond_0

    iput-object p2, p0, Lbhu;->d:Lbeu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbhu;->m:Z

    invoke-virtual {p0, v0, p1}, Lbhu;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbhu;->m:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lbhu;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lbhu;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lbhu;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lbhu;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lbhu;->e:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lbhu;->k:Landroid/os/Handler;

    iget-object v1, p0, Lbhu;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lbhu;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lbhu;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lbhu;->m:Z

    iput-boolean p2, p0, Lbhu;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbhu;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbhu;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lbhu;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbhu;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lbhu;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lbhu;->k:Landroid/os/Handler;

    iget-object v1, p0, Lbhu;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lbhu;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()Lbex;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbhu;->c:Lbex;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbhu;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lbgh;

    iget-object v1, p0, Lbhu;->j:Lbey;

    iget-object v2, p0, Lbhu;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lbgh;-><init>(Lbey;Landroid/content/Context;)V

    iput-object v0, p0, Lbhu;->c:Lbex;

    :cond_1
    iget-object v0, p0, Lbhu;->k:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lbhu;->g()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbhu;->g:Z

    iget-boolean v0, p0, Lbhu;->f:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbhu;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhu;->f:Z

    :cond_3
    iget-object v0, p0, Lbhu;->l:Lbft;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lbhu;->i:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lbhu;->f()V

    :cond_4
    iget-object v0, p0, Lbhu;->c:Lbex;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.class public Lbil;
.super Ljava/lang/Object;


# instance fields
.field private a:Lail;

.field private b:Landroid/content/Context;

.field private c:Laiv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbil;->b:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbil;->a:Lail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbil;->b:Landroid/content/Context;

    invoke-static {v0}, Lail;->a(Landroid/content/Context;)Lail;

    move-result-object v0

    iput-object v0, p0, Lbil;->a:Lail;

    iget-object v0, p0, Lbil;->a:Lail;

    new-instance v1, Lbim;

    invoke-direct {v1}, Lbim;-><init>()V

    invoke-virtual {v0, v1}, Lail;->a(Lait;)V

    iget-object v0, p0, Lbil;->a:Lail;

    invoke-virtual {v0, p1}, Lail;->a(Ljava/lang/String;)Laiv;

    move-result-object v0

    iput-object v0, p0, Lbil;->c:Laiv;
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


# virtual methods
.method public a(Ljava/lang/String;)Laiv;
    .locals 1

    invoke-direct {p0, p1}, Lbil;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbil;->c:Laiv;

    return-object v0
.end method

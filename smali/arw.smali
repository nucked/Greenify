.class Larw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lary;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Larz",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lasu;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Larz;Lasu;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Larw;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Larw;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Larw;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Larz;Lasu;Landroid/os/IBinder;Larq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Larw;-><init>(Larz;Lasu;Landroid/os/IBinder;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Larw;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larz;

    iget-object v1, p0, Larw;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasu;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Larz;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lasu;->a(I)V

    :cond_0
    iget-object v0, p0, Larw;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, p0, Larw;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Larz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Larz",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Larw;->a()V

    return-void
.end method

.method public binderDied()V
    .locals 0

    invoke-direct {p0}, Larw;->a()V

    return-void
.end method

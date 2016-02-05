.class Lbha;
.super Ljava/lang/Object;

# interfaces
.implements Lbhd;


# instance fields
.field final synthetic a:Lbgz;


# direct methods
.method constructor <init>(Lbgz;)V
    .locals 0

    iput-object p1, p0, Lbha;->a:Lbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

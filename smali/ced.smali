.class Lced;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckl;


# instance fields
.field final synthetic a:Landroid/os/HandlerThread;

.field final synthetic b:Lceb;


# direct methods
.method constructor <init>(Lceb;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lced;->b:Lceb;

    iput-object p2, p0, Lced;->a:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lced;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 93
    const-string v0, "Poller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    .line 86
    iget-object v2, p0, Lced;->b:Lceb;

    invoke-static {v2, p1}, Lceb;->a(Lceb;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 88
    const-wide/32 v2, 0x3b9aca00

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "Poller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms spent processing line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method

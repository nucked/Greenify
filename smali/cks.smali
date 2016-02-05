.class public Lcks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcku;


# instance fields
.field private final a:Lbll;

.field private final b:J

.field private final c:J

.field private d:J


# direct methods
.method public constructor <init>(Lbll;JJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcks;->a:Lbll;

    .line 45
    iput-wide p2, p0, Lcks;->b:J

    .line 46
    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcks;->c:J

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcks;->d:J

    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .locals 4

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcks;->a:Lbll;

    invoke-virtual {v0}, Lbll;->a()J

    move-result-wide v0

    .line 53
    iget-wide v2, p0, Lcks;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 54
    const-wide/16 v0, 0x0

    .line 57
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 56
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcks;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcks;->d:J

    .line 57
    iget-wide v0, p0, Lcks;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

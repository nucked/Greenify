.class Lckw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckt;


# instance fields
.field private final a:J

.field private final b:Lcku;

.field private final c:Lckv;

.field private d:J


# direct methods
.method constructor <init>(JLcku;Lckv;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lbkt;->a(Z)V

    .line 46
    iput-wide p1, p0, Lckw;->a:J

    .line 47
    invoke-static {p3}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcku;

    iput-object v0, p0, Lckw;->b:Lcku;

    .line 48
    invoke-static {p4}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckv;

    iput-object v0, p0, Lckw;->c:Lckv;

    .line 49
    iput-wide v2, p0, Lckw;->d:J

    .line 50
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lckw;->a(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized a(J)Z
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    monitor-enter p0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    :try_start_0
    const-string v3, "Number of tokens to consume must be positive"

    invoke-static {v2, v3}, Lbkt;->a(ZLjava/lang/Object;)V

    .line 73
    iget-wide v2, p0, Lckw;->a:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    move v2, v0

    :goto_1
    const-string v3, "Number of tokens to consume must be less than the capacity of the bucket."

    invoke-static {v2, v3}, Lbkt;->a(ZLjava/lang/Object;)V

    .line 76
    iget-wide v2, p0, Lckw;->a:J

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lckw;->b:Lcku;

    invoke-interface {v6}, Lcku;->a()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 77
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lckw;->d:J

    add-long/2addr v2, v6

    iget-wide v6, p0, Lckw;->a:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lckw;->d:J

    .line 80
    iget-wide v2, p0, Lckw;->d:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 81
    iget-wide v2, p0, Lckw;->d:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lckw;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_2
    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 72
    goto :goto_0

    :cond_1
    move v2, v1

    .line 73
    goto :goto_1

    :cond_2
    move v0, v1

    .line 85
    goto :goto_2

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

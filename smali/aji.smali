.class public Laji;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:I

.field private c:D

.field private d:J

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/String;

.field private final g:Lazo;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Lazo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laji;->e:Ljava/lang/Object;

    iput p1, p0, Laji;->b:I

    iget v0, p0, Laji;->b:I

    int-to-double v0, v0

    iput-wide v0, p0, Laji;->c:D

    iput-wide p2, p0, Laji;->a:J

    iput-object p4, p0, Laji;->f:Ljava/lang/String;

    iput-object p5, p0, Laji;->g:Lazo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lazo;)V
    .locals 6

    const/16 v1, 0x3c

    const-wide/16 v2, 0x7d0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Laji;-><init>(IJLjava/lang/String;Lazo;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Laji;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Laji;->g:Lazo;

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v2

    iget-wide v4, p0, Laji;->c:D

    iget v0, p0, Laji;->b:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    iget-wide v4, p0, Laji;->d:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Laji;->a:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    iget v0, p0, Laji;->b:I

    int-to-double v6, v0

    iget-wide v8, p0, Laji;->c:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Laji;->c:D

    :cond_0
    iput-wide v2, p0, Laji;->d:J

    iget-wide v2, p0, Laji;->c:D

    cmpl-double v0, v2, v10

    if-ltz v0, :cond_1

    iget-wide v2, p0, Laji;->c:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Laji;->c:D

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excessive "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Laji;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " detected; call ignored."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajj;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

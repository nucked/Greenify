.class public final Lblg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbll;

.field private b:Z

.field private c:J

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lbll;->b()Lbll;

    move-result-object v0

    invoke-direct {p0, v0}, Lblg;-><init>(Lbll;)V

    .line 131
    return-void
.end method

.method constructor <init>(Lbll;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lbkt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbll;

    iput-object v0, p0, Lblg;->a:Lbll;

    .line 142
    return-void
.end method

.method public static a()Lblg;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lblg;

    invoke-direct {v0}, Lblg;-><init>()V

    invoke-virtual {v0}, Lblg;->b()Lblg;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)Ljava/util/concurrent/TimeUnit;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 226
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 227
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 244
    :goto_0
    return-object v0

    .line 229
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 230
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 232
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 233
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 235
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 236
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 238
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 239
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 241
    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 242
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 244
    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0
.end method

.method private static b(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lblh;->a:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 250
    :pswitch_0
    const-string v0, "ns"

    .line 262
    :goto_0
    return-object v0

    .line 252
    :pswitch_1
    const-string v0, "\u03bcs"

    goto :goto_0

    .line 254
    :pswitch_2
    const-string v0, "ms"

    goto :goto_0

    .line 256
    :pswitch_3
    const-string v0, "s"

    goto :goto_0

    .line 258
    :pswitch_4
    const-string v0, "min"

    goto :goto_0

    .line 260
    :pswitch_5
    const-string v0, "h"

    goto :goto_0

    .line 262
    :pswitch_6
    const-string v0, "d"

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private c()J
    .locals 4

    .prologue
    .line 194
    iget-boolean v0, p0, Lblg;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblg;->a:Lbll;

    invoke-virtual {v0}, Lbll;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lblg;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lblg;->c:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lblg;->c:J

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0}, Lblg;->c()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lblg;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-boolean v0, p0, Lblg;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Lbkt;->b(ZLjava/lang/Object;)V

    .line 161
    iput-boolean v1, p0, Lblg;->b:Z

    .line 162
    iget-object v0, p0, Lblg;->a:Lbll;

    invoke-virtual {v0}, Lbll;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lblg;->d:J

    .line 163
    return-object p0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 216
    invoke-direct {p0}, Lblg;->c()J

    move-result-wide v0

    .line 218
    invoke-static {v0, v1}, Lblg;->a(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    .line 219
    long-to-double v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v0, v4

    .line 222
    const-string v3, "%.4g %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v2}, Lblg;->b(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

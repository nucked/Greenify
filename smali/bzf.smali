.class Lbzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbzb;


# direct methods
.method constructor <init>(Lbzb;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lbzf;->a:Lbzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 394
    const-string v0, "Automator"

    const-string v1, "Watchdog timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->j:Lcbi;

    const-string v2, "WatchDog"

    iget-object v3, p0, Lbzf;->a:Lbzb;

    iget-object v3, v3, Lbzb;->b:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbzf;->a:Lbzb;

    iget-wide v4, v4, Lbzb;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 396
    iget-object v0, p0, Lbzf;->a:Lbzb;

    invoke-static {v0}, Lbzb;->a(Lbzb;)V

    .line 397
    return-void
.end method

.class public Lcla;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Lcku;

.field private c:Lckv;

.field private final d:Lbll;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcla;->a:Ljava/lang/Long;

    .line 39
    iput-object v0, p0, Lcla;->b:Lcku;

    .line 40
    invoke-static {}, Lckx;->b()Lckv;

    move-result-object v0

    iput-object v0, p0, Lcla;->c:Lckv;

    .line 41
    invoke-static {}, Lbll;->b()Lbll;

    move-result-object v0

    iput-object v0, p0, Lcla;->d:Lbll;

    return-void
.end method


# virtual methods
.method public a()Lckw;
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lcla;->a:Ljava/lang/Long;

    const-string v1, "Must specify a capacity"

    invoke-static {v0, v1}, Lbkt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcla;->b:Lcku;

    const-string v1, "Must specify a refill strategy"

    invoke-static {v0, v1}, Lbkt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lckw;

    iget-object v1, p0, Lcla;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcla;->b:Lcku;

    iget-object v4, p0, Lcla;->c:Lckv;

    invoke-direct {v0, v2, v3, v1, v4}, Lckw;-><init>(JLcku;Lckv;)V

    return-object v0
.end method

.method public a(J)Lcla;
    .locals 3

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must specify a positive number of tokens"

    invoke-static {v0, v1}, Lbkt;->a(ZLjava/lang/Object;)V

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcla;->a:Ljava/lang/Long;

    .line 47
    return-object p0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JJLjava/util/concurrent/TimeUnit;)Lcla;
    .locals 7

    .prologue
    .line 53
    new-instance v0, Lcks;

    iget-object v1, p0, Lcla;->d:Lbll;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcks;-><init>(Lbll;JJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, v0}, Lcla;->a(Lcku;)Lcla;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcku;)Lcla;
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcku;

    iput-object v0, p0, Lcla;->b:Lcku;

    .line 60
    return-object p0
.end method

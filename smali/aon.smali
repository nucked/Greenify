.class public Laon;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lazo;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lazp;->c()Lazo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Laon;-><init>(Ljava/lang/String;JLazo;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLazo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lave;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laon;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lave;->b(Z)V

    iput-wide p2, p0, Laon;->b:J

    invoke-static {p4}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazo;

    iput-object v0, p0, Laon;->c:Lazo;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 6

    iget-object v0, p0, Laon;->c:Lazo;

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Laon;->b:J

    const-wide/16 v4, 0x12c

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

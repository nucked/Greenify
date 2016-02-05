.class Lbjn;
.super Ljava/lang/Object;

# interfaces
.implements Lbjo;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbjl;


# direct methods
.method constructor <init>(Lbjl;Z)V
    .locals 0

    iput-object p1, p0, Lbjn;->b:Lbjl;

    iput-boolean p2, p0, Lbjn;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbdc;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lbjn;->a:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lbdc;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    iget-object v4, p0, Lbjn;->b:Lbjl;

    invoke-static {v4}, Lbjl;->c(Lbjl;)Lazo;

    move-result-object v4

    invoke-interface {v4}, Lazo;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lbdc;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

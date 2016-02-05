.class public Lze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lqj;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Lra;

.field private e:Z

.field private final f:Lrb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lze;->b:J

    .line 115
    new-instance v0, Lzf;

    invoke-direct {v0, p0}, Lzf;-><init>(Lze;)V

    iput-object v0, p0, Lze;->f:Lrb;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lze;->a:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic a(Lze;)Lra;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lze;->d:Lra;

    return-object v0
.end method

.method static synthetic b(Lze;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lze;->c()V

    return-void
.end method

.method static synthetic c(Lze;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lze;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lze;->e:Z

    .line 82
    return-void
.end method


# virtual methods
.method public a(J)Lze;
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lze;->e:Z

    if-nez v0, :cond_0

    .line 96
    iput-wide p1, p0, Lze;->b:J

    .line 98
    :cond_0
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lze;
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lze;->e:Z

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lze;->c:Landroid/view/animation/Interpolator;

    .line 105
    :cond_0
    return-object p0
.end method

.method public a(Lqj;)Lze;
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lze;->e:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lze;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-object p0
.end method

.method public a(Lqj;Lqj;)Lze;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lze;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p1}, Lqj;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lqj;->b(J)Lqj;

    .line 58
    iget-object v0, p0, Lze;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-object p0
.end method

.method public a(Lra;)Lze;
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lze;->e:Z

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lze;->d:Lra;

    .line 112
    :cond_0
    return-object p0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 63
    iget-boolean v0, p0, Lze;->e:Z

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lze;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqj;

    .line 65
    iget-wide v2, p0, Lze;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 66
    iget-wide v2, p0, Lze;->b:J

    invoke-virtual {v0, v2, v3}, Lqj;->a(J)Lqj;

    .line 68
    :cond_1
    iget-object v2, p0, Lze;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lze;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lqj;->a(Landroid/view/animation/Interpolator;)Lqj;

    .line 71
    :cond_2
    iget-object v2, p0, Lze;->d:Lra;

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Lze;->f:Lrb;

    invoke-virtual {v0, v2}, Lqj;->a(Lra;)Lqj;

    .line 74
    :cond_3
    invoke-virtual {v0}, Lqj;->c()V

    goto :goto_1

    .line 77
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lze;->e:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lze;->e:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lze;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqj;

    .line 89
    invoke-virtual {v0}, Lqj;->b()V

    goto :goto_1

    .line 91
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lze;->e:Z

    goto :goto_0
.end method

.class Lql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt;


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lql;->a:Ljava/util/WeakHashMap;

    .line 316
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 335
    .line 336
    iget-object v0, p0, Lql;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lql;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 342
    :cond_0
    return-void
.end method

.method static synthetic a(Lql;Lqj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lql;->d(Lqj;Landroid/view/View;)V

    return-void
.end method

.method private d(Lqj;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 294
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 295
    const/4 v1, 0x0

    .line 296
    instance-of v2, v0, Lra;

    if-eqz v2, :cond_4

    .line 297
    check-cast v0, Lra;

    .line 299
    :goto_0
    invoke-static {p1}, Lqj;->a(Lqj;)Ljava/lang/Runnable;

    move-result-object v1

    .line 300
    invoke-static {p1}, Lqj;->b(Lqj;)Ljava/lang/Runnable;

    move-result-object v2

    .line 301
    if-eqz v1, :cond_0

    .line 302
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 304
    :cond_0
    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v0, p2}, Lra;->a(Landroid/view/View;)V

    .line 306
    invoke-interface {v0, p2}, Lra;->b(Landroid/view/View;)V

    .line 308
    :cond_1
    if-eqz v2, :cond_2

    .line 309
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 311
    :cond_2
    iget-object v0, p0, Lql;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lql;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private e(Lqj;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    .line 346
    iget-object v0, p0, Lql;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lql;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 349
    :goto_0
    if-nez v0, :cond_1

    .line 350
    new-instance v0, Lqm;

    invoke-direct {v0, p0, p1, p2, v1}, Lqm;-><init>(Lql;Lqj;Landroid/view/View;Lqk;)V

    .line 351
    iget-object v1, p0, Lql;->a:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 352
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lql;->a:Ljava/util/WeakHashMap;

    .line 354
    :cond_0
    iget-object v1, p0, Lql;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 357
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lqj;Landroid/view/View;)J
    .locals 2

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Lqj;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lql;->e(Lqj;Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public a(Lqj;Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public a(Lqj;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public a(Lqj;Landroid/view/View;Lra;)V
    .locals 1

    .prologue
    .line 285
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 286
    return-void
.end method

.method public a(Lqj;Landroid/view/View;Lrc;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public b(Lqj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lql;->e(Lqj;Landroid/view/View;)V

    .line 208
    return-void
.end method

.method public b(Lqj;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lql;->e(Lqj;Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public b(Lqj;Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public c(Lqj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p2}, Lql;->a(Landroid/view/View;)V

    .line 269
    invoke-direct {p0, p1, p2}, Lql;->d(Lqj;Landroid/view/View;)V

    .line 270
    return-void
.end method

.method public c(Lqj;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lql;->e(Lqj;Landroid/view/View;)V

    .line 105
    return-void
.end method

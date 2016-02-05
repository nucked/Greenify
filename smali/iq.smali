.class public abstract Liq;
.super Ljc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljc",
        "<TD;>;"
    }
.end annotation


# instance fields
.field volatile a:Lir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liq",
            "<TD;>.ir;"
        }
    .end annotation
.end field

.field volatile b:Lir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liq",
            "<TD;>.ir;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:Landroid/os/Handler;

.field private final o:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Ljj;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Liq;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0, p1}, Ljc;-><init>(Landroid/content/Context;)V

    .line 118
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Liq;->d:J

    .line 127
    iput-object p2, p0, Liq;->o:Ljava/util/concurrent/Executor;

    .line 128
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Ljc;->a()V

    .line 147
    invoke-virtual {p0}, Liq;->k()Z

    .line 148
    new-instance v0, Lir;

    invoke-direct {v0, p0}, Lir;-><init>(Liq;)V

    iput-object v0, p0, Liq;->a:Lir;

    .line 150
    invoke-virtual {p0}, Liq;->c()V

    .line 151
    return-void
.end method

.method a(Lir;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liq",
            "<TD;>.ir;TD;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p2}, Liq;->a(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Liq;->b:Lir;

    if-ne v0, p1, :cond_0

    .line 227
    invoke-virtual {p0}, Liq;->r()V

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Liq;->d:J

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Liq;->b:Lir;

    .line 231
    invoke-virtual {p0}, Liq;->g()V

    .line 232
    invoke-virtual {p0}, Liq;->c()V

    .line 234
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 343
    invoke-super {p0, p1, p2, p3, p4}, Ljc;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Liq;->a:Lir;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Liq;->a:Lir;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 346
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Liq;->a:Lir;

    iget-boolean v0, v0, Lir;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 348
    :cond_0
    iget-object v0, p0, Liq;->b:Lir;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Liq;->b:Lir;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 350
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Liq;->b:Lir;

    iget-boolean v0, v0, Lir;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 352
    :cond_1
    iget-wide v0, p0, Liq;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-wide v0, p0, Liq;->c:J

    invoke-static {v0, v1, p3}, Lmf;->a(JLjava/io/PrintWriter;)V

    .line 355
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget-wide v0, p0, Liq;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Lmf;->a(JJLjava/io/PrintWriter;)V

    .line 358
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 360
    :cond_2
    return-void
.end method

.method b(Lir;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liq",
            "<TD;>.ir;TD;)V"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Liq;->a:Lir;

    if-eq v0, p1, :cond_0

    .line 239
    invoke-virtual {p0, p1, p2}, Liq;->a(Lir;Ljava/lang/Object;)V

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Liq;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0, p2}, Liq;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Liq;->q()V

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Liq;->d:J

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Liq;->a:Lir;

    .line 249
    invoke-virtual {p0, p2}, Liq;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Liq;->a:Lir;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Liq;->b:Lir;

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Liq;->a:Lir;

    iget-boolean v1, v1, Lir;->a:Z

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Liq;->a:Lir;

    iput-boolean v0, v1, Lir;->a:Z

    .line 164
    iget-object v1, p0, Liq;->e:Landroid/os/Handler;

    iget-object v2, p0, Liq;->a:Lir;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    iput-object v3, p0, Liq;->a:Lir;

    .line 187
    :cond_1
    :goto_0
    return v0

    .line 168
    :cond_2
    iget-object v1, p0, Liq;->a:Lir;

    iget-boolean v1, v1, Lir;->a:Z

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Liq;->a:Lir;

    iput-boolean v0, v1, Lir;->a:Z

    .line 173
    iget-object v1, p0, Liq;->e:Landroid/os/Handler;

    iget-object v2, p0, Liq;->a:Lir;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iput-object v3, p0, Liq;->a:Lir;

    goto :goto_0

    .line 177
    :cond_3
    iget-object v1, p0, Liq;->a:Lir;

    invoke-virtual {v1, v0}, Lir;->a(Z)Z

    move-result v0

    .line 179
    if-eqz v0, :cond_4

    .line 180
    iget-object v1, p0, Liq;->a:Lir;

    iput-object v1, p0, Liq;->b:Lir;

    .line 181
    invoke-virtual {p0}, Liq;->f()V

    .line 183
    :cond_4
    iput-object v3, p0, Liq;->a:Lir;

    goto :goto_0
.end method

.method c()V
    .locals 6

    .prologue
    .line 201
    iget-object v0, p0, Liq;->b:Lir;

    if-nez v0, :cond_1

    iget-object v0, p0, Liq;->a:Lir;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Liq;->a:Lir;

    iget-boolean v0, v0, Lir;->a:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Liq;->a:Lir;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lir;->a:Z

    .line 204
    iget-object v0, p0, Liq;->e:Landroid/os/Handler;

    iget-object v1, p0, Liq;->a:Lir;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    :cond_0
    iget-wide v0, p0, Liq;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 208
    iget-wide v2, p0, Liq;->d:J

    iget-wide v4, p0, Liq;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 213
    iget-object v0, p0, Liq;->a:Lir;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lir;->a:Z

    .line 214
    iget-object v0, p0, Liq;->e:Landroid/os/Handler;

    iget-object v1, p0, Liq;->a:Lir;

    iget-wide v2, p0, Liq;->d:J

    iget-wide v4, p0, Liq;->c:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v1, p0, Liq;->a:Lir;

    iget-object v2, p0, Liq;->o:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lir;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Ljj;

    goto :goto_0
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Liq;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

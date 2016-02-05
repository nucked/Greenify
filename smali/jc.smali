.class public Ljc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field f:I

.field g:Lje;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lje",
            "<TD;>;"
        }
    .end annotation
.end field

.field h:Ljd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd",
            "<TD;>;"
        }
    .end annotation
.end field

.field i:Landroid/content/Context;

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Ljc;->j:Z

    .line 40
    iput-boolean v1, p0, Ljc;->k:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljc;->l:Z

    .line 42
    iput-boolean v1, p0, Ljc;->m:Z

    .line 43
    iput-boolean v1, p0, Ljc;->n:Z

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljc;->i:Landroid/content/Context;

    .line 115
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public a(ILje;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lje",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Ljc;->g:Lje;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iput-object p2, p0, Ljc;->g:Lje;

    .line 168
    iput p1, p0, Ljc;->f:I

    .line 169
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ljc;->f:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 523
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ljc;->g:Lje;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    iget-boolean v0, p0, Ljc;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljc;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljc;->n:Z

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ljc;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 526
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ljc;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 527
    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ljc;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 529
    :cond_1
    iget-boolean v0, p0, Ljc;->k:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ljc;->l:Z

    if-eqz v0, :cond_3

    .line 530
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ljc;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 531
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ljc;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    :cond_3
    return-void
.end method

.method public a(Ljd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Ljc;->h:Ljd;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p1, p0, Ljc;->h:Ljd;

    .line 200
    return-void
.end method

.method public a(Lje;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lje",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Ljc;->g:Lje;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Ljc;->g:Lje;

    if-eq v0, p1, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljc;->g:Lje;

    .line 184
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ljc;->g:Lje;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Ljc;->g:Lje;

    invoke-interface {v0, p0, p1}, Lje;->a(Ljc;Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method public b(Ljd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Ljc;->h:Ljd;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Ljc;->h:Ljd;

    if-eq v0, p1, :cond_1

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljc;->h:Ljd;

    .line 218
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    invoke-static {p1, v0}, Llq;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 499
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ljc;->h:Ljd;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Ljc;->h:Ljd;

    invoke-interface {v0, p0}, Ljd;->a(Ljc;)V

    .line 140
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Ljc;->k:Z

    return v0
.end method

.method public final i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljc;->j:Z

    .line 270
    iput-boolean v1, p0, Ljc;->l:Z

    .line 271
    iput-boolean v1, p0, Ljc;->k:Z

    .line 272
    invoke-virtual {p0}, Ljc;->j()V

    .line 273
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Ljc;->b()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 329
    invoke-virtual {p0}, Ljc;->a()V

    .line 330
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljc;->j:Z

    .line 361
    invoke-virtual {p0}, Ljc;->n()V

    .line 362
    return-void
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0}, Ljc;->p()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljc;->l:Z

    .line 422
    iput-boolean v1, p0, Ljc;->j:Z

    .line 423
    iput-boolean v1, p0, Ljc;->k:Z

    .line 424
    iput-boolean v1, p0, Ljc;->m:Z

    .line 425
    iput-boolean v1, p0, Ljc;->n:Z

    .line 426
    return-void
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljc;->n:Z

    .line 458
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Ljc;->n:Z

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljc;->m:Z

    .line 471
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    invoke-static {p0, v0}, Llq;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 507
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v1, p0, Ljc;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

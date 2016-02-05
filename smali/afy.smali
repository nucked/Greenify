.class public abstract Lafy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field public g:Lafy;

.field public h:Lafy;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/support/v7/widget/RecyclerView;

.field private l:I

.field private n:I

.field private o:Lafp;

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8232
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lafy;->m:Ljava/util/List;

    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 8530
    iget-object v0, p0, Lafy;->a:Landroid/view/View;

    iget v1, p0, Lafy;->q:I

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;I)V

    .line 8532
    const/4 v0, 0x0

    iput v0, p0, Lafy;->q:I

    .line 8533
    return-void
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 8604
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()Z
    .locals 1

    .prologue
    .line 8612
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lafy;->a:Landroid/view/View;

    invoke-static {v0}, Lou;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lafy;Lafp;)Lafp;
    .locals 0

    .prologue
    .line 8126
    iput-object p1, p0, Lafy;->o:Lafp;

    return-object p1
.end method

.method static synthetic a(Lafy;)V
    .locals 0

    .prologue
    .line 8126
    invoke-direct {p0}, Lafy;->z()V

    return-void
.end method

.method static synthetic a(Lafy;Z)Z
    .locals 0

    .prologue
    .line 8126
    iput-boolean p1, p0, Lafy;->p:Z

    return p1
.end method

.method static synthetic b(Lafy;)V
    .locals 0

    .prologue
    .line 8126
    invoke-direct {p0}, Lafy;->A()V

    return-void
.end method

.method static synthetic c(Lafy;)Z
    .locals 1

    .prologue
    .line 8126
    invoke-direct {p0}, Lafy;->C()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lafy;)Z
    .locals 1

    .prologue
    .line 8126
    iget-boolean v0, p0, Lafy;->p:Z

    return v0
.end method

.method static synthetic e(Lafy;)Z
    .locals 1

    .prologue
    .line 8126
    invoke-direct {p0}, Lafy;->B()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lafy;)I
    .locals 1

    .prologue
    .line 8126
    iget v0, p0, Lafy;->l:I

    return v0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 8475
    iget-object v0, p0, Lafy;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 8476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafy;->i:Ljava/util/List;

    .line 8477
    iget-object v0, p0, Lafy;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lafy;->j:Ljava/util/List;

    .line 8479
    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 8520
    iget-object v0, p0, Lafy;->a:Landroid/view/View;

    invoke-static {v0}, Lou;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lafy;->q:I

    .line 8522
    iget-object v0, p0, Lafy;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;I)V

    .line 8524
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8286
    iput v0, p0, Lafy;->c:I

    .line 8287
    iput v0, p0, Lafy;->f:I

    .line 8288
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 8458
    iget v0, p0, Lafy;->l:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lafy;->l:I

    .line 8459
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .prologue
    .line 8264
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lafy;->b(I)V

    .line 8265
    invoke-virtual {p0, p2, p3}, Lafy;->a(IZ)V

    .line 8266
    iput p1, p0, Lafy;->b:I

    .line 8267
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 8270
    iget v0, p0, Lafy;->c:I

    if-ne v0, v1, :cond_0

    .line 8271
    iget v0, p0, Lafy;->b:I

    iput v0, p0, Lafy;->c:I

    .line 8273
    :cond_0
    iget v0, p0, Lafy;->f:I

    if-ne v0, v1, :cond_1

    .line 8274
    iget v0, p0, Lafy;->b:I

    iput v0, p0, Lafy;->f:I

    .line 8276
    :cond_1
    if-eqz p2, :cond_2

    .line 8277
    iget v0, p0, Lafy;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lafy;->f:I

    .line 8279
    :cond_2
    iget v0, p0, Lafy;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lafy;->b:I

    .line 8280
    iget-object v0, p0, Lafy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8281
    iget-object v0, p0, Lafy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lafk;->c:Z

    .line 8283
    :cond_3
    return-void
.end method

.method a(Lafp;Z)V
    .locals 0

    .prologue
    .line 8425
    iput-object p1, p0, Lafy;->o:Lafp;

    .line 8426
    iput-boolean p2, p0, Lafy;->p:Z

    .line 8427
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 8466
    if-nez p1, :cond_1

    .line 8467
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lafy;->b(I)V

    .line 8472
    :cond_0
    :goto_0
    return-void

    .line 8468
    :cond_1
    iget v0, p0, Lafy;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 8469
    invoke-direct {p0}, Lafy;->y()V

    .line 8470
    iget-object v0, p0, Lafy;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 8570
    if-eqz p1, :cond_1

    iget v0, p0, Lafy;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lafy;->n:I

    .line 8571
    iget v0, p0, Lafy;->n:I

    if-gez v0, :cond_2

    .line 8572
    const/4 v0, 0x0

    iput v0, p0, Lafy;->n:I

    .line 8577
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8587
    :cond_0
    :goto_1
    return-void

    .line 8570
    :cond_1
    iget v0, p0, Lafy;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8579
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lafy;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 8580
    iget v0, p0, Lafy;->l:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lafy;->l:I

    goto :goto_1

    .line 8581
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Lafy;->n:I

    if-nez v0, :cond_0

    .line 8582
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lafy;->l:I

    goto :goto_1
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 8446
    iget v0, p0, Lafy;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 8291
    iget v0, p0, Lafy;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8292
    iget v0, p0, Lafy;->b:I

    iput v0, p0, Lafy;->c:I

    .line 8294
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 8462
    iget v0, p0, Lafy;->l:I

    or-int/2addr v0, p1

    iput v0, p0, Lafy;->l:I

    .line 8463
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 8297
    iget v0, p0, Lafy;->l:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 8336
    iget v0, p0, Lafy;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lafy;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lafy;->f:I

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 8362
    iget-object v0, p0, Lafy;->k:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8363
    const/4 v0, -0x1

    .line 8365
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lafy;->k:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Lafy;)I

    move-result v0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 8380
    iget v0, p0, Lafy;->c:I

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 8390
    iget-wide v0, p0, Lafy;->d:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 8397
    iget v0, p0, Lafy;->e:I

    return v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 8401
    iget-object v0, p0, Lafy;->o:Lafp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()V
    .locals 1

    .prologue
    .line 8405
    iget-object v0, p0, Lafy;->o:Lafp;

    invoke-virtual {v0, p0}, Lafp;->d(Lafy;)V

    .line 8406
    return-void
.end method

.method k()Z
    .locals 1

    .prologue
    .line 8409
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()V
    .locals 1

    .prologue
    .line 8413
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lafy;->l:I

    .line 8414
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 8417
    iget v0, p0, Lafy;->l:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lafy;->l:I

    .line 8418
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 8430
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 8434
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 8438
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 8442
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 8450
    iget v0, p0, Lafy;->l:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 8454
    iget v0, p0, Lafy;->l:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lafy;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method t()V
    .locals 1

    .prologue
    .line 8482
    iget-object v0, p0, Lafy;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8483
    iget-object v0, p0, Lafy;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8485
    :cond_0
    iget v0, p0, Lafy;->l:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lafy;->l:I

    .line 8486
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8537
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lafy;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lafy;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lafy;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lafy;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8540
    invoke-virtual {p0}, Lafy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8541
    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lafy;->p:Z

    if-eqz v0, :cond_a

    const-string v0, "[changeScrap]"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8544
    :cond_0
    invoke-virtual {p0}, Lafy;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8545
    :cond_1
    invoke-virtual {p0}, Lafy;->p()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8546
    :cond_2
    invoke-virtual {p0}, Lafy;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8547
    :cond_3
    invoke-virtual {p0}, Lafy;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8548
    :cond_4
    invoke-virtual {p0}, Lafy;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8549
    :cond_5
    invoke-virtual {p0}, Lafy;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8550
    :cond_6
    invoke-virtual {p0}, Lafy;->w()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lafy;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8551
    :cond_7
    invoke-virtual {p0}, Lafy;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8553
    :cond_8
    iget-object v0, p0, Lafy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8554
    :cond_9
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8555
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8541
    :cond_a
    const-string v0, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8489
    iget v0, p0, Lafy;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 8490
    iget-object v0, p0, Lafy;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafy;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 8492
    :cond_0
    sget-object v0, Lafy;->m:Ljava/util/List;

    .line 8498
    :goto_0
    return-object v0

    .line 8495
    :cond_1
    iget-object v0, p0, Lafy;->j:Ljava/util/List;

    goto :goto_0

    .line 8498
    :cond_2
    sget-object v0, Lafy;->m:Ljava/util/List;

    goto :goto_0
.end method

.method v()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 8503
    iput v3, p0, Lafy;->l:I

    .line 8504
    iput v2, p0, Lafy;->b:I

    .line 8505
    iput v2, p0, Lafy;->c:I

    .line 8506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lafy;->d:J

    .line 8507
    iput v2, p0, Lafy;->f:I

    .line 8508
    iput v3, p0, Lafy;->n:I

    .line 8509
    iput-object v4, p0, Lafy;->g:Lafy;

    .line 8510
    iput-object v4, p0, Lafy;->h:Lafy;

    .line 8511
    invoke-virtual {p0}, Lafy;->t()V

    .line 8512
    iput v3, p0, Lafy;->q:I

    .line 8513
    return-void
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 8595
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lafy;->a:Landroid/view/View;

    invoke-static {v0}, Lou;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 8616
    iget v0, p0, Lafy;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

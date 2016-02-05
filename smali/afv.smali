.class public Lafv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:I

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9345
    const/4 v0, -0x1

    iput v0, p0, Lafv;->b:I

    .line 9352
    iput v1, p0, Lafv;->a:I

    .line 9357
    iput v1, p0, Lafv;->d:I

    .line 9363
    iput v1, p0, Lafv;->e:I

    .line 9365
    iput-boolean v1, p0, Lafv;->f:Z

    .line 9367
    iput-boolean v1, p0, Lafv;->g:Z

    .line 9369
    iput-boolean v1, p0, Lafv;->h:Z

    .line 9371
    iput-boolean v1, p0, Lafv;->i:Z

    .line 9373
    iput-boolean v1, p0, Lafv;->j:Z

    return-void
.end method

.method static synthetic a(Lafv;I)I
    .locals 1

    .prologue
    .line 9343
    iget v0, p0, Lafv;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lafv;->e:I

    return v0
.end method

.method public static synthetic a(Lafv;)Z
    .locals 1

    .prologue
    .line 9343
    iget-boolean v0, p0, Lafv;->i:Z

    return v0
.end method

.method public static synthetic a(Lafv;Z)Z
    .locals 0

    .prologue
    .line 9343
    iput-boolean p1, p0, Lafv;->f:Z

    return p1
.end method

.method public static synthetic b(Lafv;I)I
    .locals 0

    .prologue
    .line 9343
    iput p1, p0, Lafv;->e:I

    return p1
.end method

.method public static synthetic b(Lafv;)Z
    .locals 1

    .prologue
    .line 9343
    iget-boolean v0, p0, Lafv;->h:Z

    return v0
.end method

.method public static synthetic b(Lafv;Z)Z
    .locals 0

    .prologue
    .line 9343
    iput-boolean p1, p0, Lafv;->g:Z

    return p1
.end method

.method public static synthetic c(Lafv;I)I
    .locals 0

    .prologue
    .line 9343
    iput p1, p0, Lafv;->d:I

    return p1
.end method

.method public static synthetic c(Lafv;)Z
    .locals 1

    .prologue
    .line 9343
    iget-boolean v0, p0, Lafv;->j:Z

    return v0
.end method

.method public static synthetic c(Lafv;Z)Z
    .locals 0

    .prologue
    .line 9343
    iput-boolean p1, p0, Lafv;->h:Z

    return p1
.end method

.method static synthetic d(Lafv;I)I
    .locals 0

    .prologue
    .line 9343
    iput p1, p0, Lafv;->b:I

    return p1
.end method

.method public static synthetic d(Lafv;)Z
    .locals 1

    .prologue
    .line 9343
    iget-boolean v0, p0, Lafv;->f:Z

    return v0
.end method

.method public static synthetic d(Lafv;Z)Z
    .locals 0

    .prologue
    .line 9343
    iput-boolean p1, p0, Lafv;->i:Z

    return p1
.end method

.method static synthetic e(Lafv;)Z
    .locals 1

    .prologue
    .line 9343
    iget-boolean v0, p0, Lafv;->g:Z

    return v0
.end method

.method public static synthetic e(Lafv;Z)Z
    .locals 0

    .prologue
    .line 9343
    iput-boolean p1, p0, Lafv;->j:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 9386
    iget-boolean v0, p0, Lafv;->g:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 9397
    iget-boolean v0, p0, Lafv;->i:Z

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 9470
    iget v0, p0, Lafv;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 9506
    iget-boolean v0, p0, Lafv;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lafv;->d:I

    iget v1, p0, Lafv;->e:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lafv;->a:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lafv;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lafv;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lafv;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lafv;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lafv;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lafv;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lafv;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lafv;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lafv;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Laez;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lafy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lafa;

.field private b:Z


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 5268
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Lafy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public a(Lafb;)V
    .locals 1

    .prologue
    .line 5426
    iget-object v0, p0, Laez;->a:Lafa;

    invoke-virtual {v0, p1}, Lafa;->registerObserver(Ljava/lang/Object;)V

    .line 5427
    return-void
.end method

.method public a(Lafy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5335
    return-void
.end method

.method public abstract a(Lafy;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Lafy;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5217
    invoke-virtual {p0, p1, p2}, Laez;->a(Lafy;I)V

    .line 5218
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5452
    return-void
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 5296
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Lafy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 5227
    const-string v0, "RV CreateView"

    invoke-static {v0}, Lkz;->a(Ljava/lang/String;)V

    .line 5228
    invoke-virtual {p0, p1, p2}, Laez;->a(Landroid/view/ViewGroup;I)Lafy;

    move-result-object v0

    .line 5229
    iput p2, v0, Lafy;->e:I

    .line 5230
    invoke-static {}, Lkz;->a()V

    .line 5231
    return-object v0
.end method

.method public b(Lafb;)V
    .locals 1

    .prologue
    .line 5440
    iget-object v0, p0, Laez;->a:Lafa;

    invoke-virtual {v0, p1}, Lafa;->unregisterObserver(Ljava/lang/Object;)V

    .line 5441
    return-void
.end method

.method public final b(Lafy;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 5242
    iput p2, p1, Lafy;->b:I

    .line 5243
    invoke-virtual {p0}, Laez;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5244
    invoke-virtual {p0, p2}, Laez;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Lafy;->d:J

    .line 5246
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Lafy;->a(II)V

    .line 5249
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Lkz;->a(Ljava/lang/String;)V

    .line 5250
    invoke-virtual {p1}, Lafy;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Laez;->a(Lafy;ILjava/util/List;)V

    .line 5251
    invoke-virtual {p1}, Lafy;->t()V

    .line 5252
    invoke-static {}, Lkz;->a()V

    .line 5253
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5461
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 5314
    iget-boolean v0, p0, Laez;->b:Z

    return v0
.end method

.method public b(Lafy;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 5372
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lafy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5386
    return-void
.end method

.method public d(Lafy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5398
    return-void
.end method

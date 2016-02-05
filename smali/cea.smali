.class Lcea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lbof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbof",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lbof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbof",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcea;->a:Ljava/util/HashSet;

    .line 248
    invoke-static {}, Lbmp;->j()Lbmp;

    move-result-object v0

    iput-object v0, p0, Lcea;->b:Lbof;

    .line 249
    invoke-static {}, Lbmp;->j()Lbmp;

    move-result-object v0

    iput-object v0, p0, Lcea;->c:Lbof;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcea;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcea;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcea;->b:Lbof;

    invoke-interface {v0}, Lbof;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcea;->c:Lbof;

    invoke-interface {v0}, Lbof;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcea;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

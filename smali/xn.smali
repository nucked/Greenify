.class final Lxn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Lzp;

.field k:Lzn;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1849
    iput p1, p0, Lxn;->a:I

    .line 1851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxn;->q:Z

    .line 1852
    return-void
.end method


# virtual methods
.method a(Laaf;)Laag;
    .locals 3

    .prologue
    .line 1916
    iget-object v0, p0, Lxn;->j:Lzp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1927
    :goto_0
    return-object v0

    .line 1918
    :cond_0
    iget-object v0, p0, Lxn;->k:Lzn;

    if-nez v0, :cond_1

    .line 1919
    new-instance v0, Lzn;

    iget-object v1, p0, Lxn;->l:Landroid/content/Context;

    sget v2, Lyj;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Lzn;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lxn;->k:Lzn;

    .line 1921
    iget-object v0, p0, Lxn;->k:Lzn;

    invoke-virtual {v0, p1}, Lzn;->a(Laaf;)V

    .line 1922
    iget-object v0, p0, Lxn;->j:Lzp;

    iget-object v1, p0, Lxn;->k:Lzn;

    invoke-virtual {v0, v1}, Lzp;->a(Laae;)V

    .line 1925
    :cond_1
    iget-object v0, p0, Lxn;->k:Lzn;

    iget-object v1, p0, Lxn;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lzn;->a(Landroid/view/ViewGroup;)Laag;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1872
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1873
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1874
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1877
    sget v2, Lyc;->actionBarPopupTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1878
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 1879
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1883
    :cond_0
    sget v2, Lyc;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1884
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 1885
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1890
    :goto_0
    new-instance v0, Lyx;

    invoke-direct {v0, p1, v4}, Lyx;-><init>(Landroid/content/Context;I)V

    .line 1891
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1893
    iput-object v0, p0, Lxn;->l:Landroid/content/Context;

    .line 1895
    sget-object v1, Lym;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1896
    sget v1, Lym;->Theme_panelBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lxn;->b:I

    .line 1898
    sget v1, Lym;->Theme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lxn;->f:I

    .line 1900
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1901
    return-void

    .line 1887
    :cond_1
    sget v0, Lyl;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method a(Lzp;)V
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lxn;->j:Lzp;

    if-ne p1, v0, :cond_1

    .line 1913
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    iget-object v0, p0, Lxn;->j:Lzp;

    if-eqz v0, :cond_2

    .line 1907
    iget-object v0, p0, Lxn;->j:Lzp;

    iget-object v1, p0, Lxn;->k:Lzn;

    invoke-virtual {v0, v1}, Lzp;->b(Laae;)V

    .line 1909
    :cond_2
    iput-object p1, p0, Lxn;->j:Lzp;

    .line 1910
    if-eqz p1, :cond_0

    .line 1911
    iget-object v0, p0, Lxn;->k:Lzn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxn;->k:Lzn;

    invoke-virtual {p1, v0}, Lzp;->a(Laae;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1855
    iget-object v2, p0, Lxn;->h:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 1858
    :cond_0
    :goto_0
    return v0

    .line 1856
    :cond_1
    iget-object v2, p0, Lxn;->i:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1858
    iget-object v2, p0, Lxn;->k:Lzn;

    invoke-virtual {v2}, Lzn;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

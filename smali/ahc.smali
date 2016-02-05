.class public Lahc;
.super Lvy;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1865
    invoke-direct {p0, p1, p2}, Lvy;-><init>(II)V

    .line 1858
    const/4 v0, 0x0

    iput v0, p0, Lahc;->b:I

    .line 1866
    const v0, 0x800013

    iput v0, p0, Lahc;->a:I

    .line 1867
    return-void
.end method

.method public constructor <init>(Lahc;)V
    .locals 1

    .prologue
    .line 1879
    invoke-direct {p0, p1}, Lvy;-><init>(Lvy;)V

    .line 1858
    const/4 v0, 0x0

    iput v0, p0, Lahc;->b:I

    .line 1881
    iget v0, p1, Lahc;->b:I

    iput v0, p0, Lahc;->b:I

    .line 1882
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1861
    invoke-direct {p0, p1, p2}, Lvy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1858
    const/4 v0, 0x0

    iput v0, p0, Lahc;->b:I

    .line 1862
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1896
    invoke-direct {p0, p1}, Lvy;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1858
    const/4 v0, 0x0

    iput v0, p0, Lahc;->b:I

    .line 1897
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1889
    invoke-direct {p0, p1}, Lvy;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1858
    const/4 v0, 0x0

    iput v0, p0, Lahc;->b:I

    .line 1892
    invoke-virtual {p0, p1}, Lahc;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1893
    return-void
.end method

.method public constructor <init>(Lvy;)V
    .locals 1

    .prologue
    .line 1885
    invoke-direct {p0, p1}, Lvy;-><init>(Lvy;)V

    .line 1858
    const/4 v0, 0x0

    iput v0, p0, Lahc;->b:I

    .line 1886
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1900
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lahc;->leftMargin:I

    .line 1901
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lahc;->topMargin:I

    .line 1902
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lahc;->rightMargin:I

    .line 1903
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lahc;->bottomMargin:I

    .line 1904
    return-void
.end method

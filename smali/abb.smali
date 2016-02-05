.class Labb;
.super Lacg;
.source "SourceFile"

# interfaces
.implements Labg;


# instance fields
.field final synthetic a:Laaw;

.field private final b:[F


# direct methods
.method public constructor <init>(Laaw;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 610
    iput-object p1, p0, Labb;->a:Laaw;

    .line 611
    const/4 v0, 0x0

    sget v1, Lyc;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Lacg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 608
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Labb;->b:[F

    .line 613
    invoke-virtual {p0, v2}, Labb;->setClickable(Z)V

    .line 614
    invoke-virtual {p0, v2}, Labb;->setFocusable(Z)V

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labb;->setVisibility(I)V

    .line 616
    invoke-virtual {p0, v2}, Labb;->setEnabled(Z)V

    .line 618
    new-instance v0, Labc;

    invoke-direct {v0, p0, p0, p1}, Labc;-><init>(Labb;Landroid/view/View;Laaw;)V

    invoke-virtual {p0, v0}, Labb;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 647
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 651
    invoke-super {p0}, Lacg;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :goto_0
    return v1

    .line 655
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labb;->playSoundEffect(I)V

    .line 656
    iget-object v0, p0, Labb;->a:Laaw;

    invoke-virtual {v0}, Laaw;->d()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 8

    .prologue
    .line 672
    invoke-super {p0, p1, p2, p3, p4}, Lacg;->setFrame(IIII)Z

    move-result v0

    .line 675
    invoke-virtual {p0}, Labb;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 676
    invoke-virtual {p0}, Labb;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 677
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 678
    invoke-virtual {p0}, Labb;->getWidth()I

    move-result v1

    .line 679
    invoke-virtual {p0}, Labb;->getHeight()I

    move-result v3

    .line 680
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 681
    invoke-virtual {p0}, Labb;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Labb;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 682
    invoke-virtual {p0}, Labb;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Labb;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 683
    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 684
    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 685
    sub-int v5, v1, v4

    sub-int v6, v3, v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    invoke-static {v2, v5, v6, v1, v3}, Ljv;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 689
    :cond_0
    return v0
.end method

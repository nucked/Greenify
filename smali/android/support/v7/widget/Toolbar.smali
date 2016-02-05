.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private A:Z

.field private final B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final D:[I

.field private E:Lahd;

.field private final F:Labk;

.field private G:Lahf;

.field private H:Laaw;

.field private I:Lahb;

.field private J:Laaf;

.field private K:Lzq;

.field private L:Z

.field private final M:Ljava/lang/Runnable;

.field private final N:Lagv;

.field public a:Landroid/view/View;

.field private b:Landroid/support/v7/widget/ActionMenuView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/content/Context;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private final t:Lagc;

.field private u:I

.field private v:Ljava/lang/CharSequence;

.field private w:Ljava/lang/CharSequence;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 199
    sget v0, Lyc;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    new-instance v0, Lagc;

    invoke-direct {v0}, Lagc;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    .line 146
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->u:I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:[I

    .line 167
    new-instance v0, Lagy;

    invoke-direct {v0, p0}, Lagy;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Labk;

    .line 186
    new-instance v0, Lagz;

    invoke-direct {v0, p0}, Lagz;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->M:Ljava/lang/Runnable;

    .line 206
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lym;->Toolbar:[I

    invoke-static {v0, p2, v1, p3, v7}, Lagx;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lagx;

    move-result-object v0

    .line 209
    sget v1, Lym;->Toolbar_titleTextAppearance:I

    invoke-virtual {v0, v1, v7}, Lagx;->g(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->l:I

    .line 210
    sget v1, Lym;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v0, v1, v7}, Lagx;->g(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    .line 211
    sget v1, Lym;->Toolbar_android_gravity:I

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->u:I

    invoke-virtual {v0, v1, v2}, Lagx;->c(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->u:I

    .line 212
    const/16 v1, 0x30

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->n:I

    .line 213
    sget v1, Lym;->Toolbar_titleMargins:I

    invoke-virtual {v0, v1, v7}, Lagx;->d(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->s:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->r:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->q:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->p:I

    .line 216
    sget v1, Lym;->Toolbar_titleMarginStart:I

    invoke-virtual {v0, v1, v6}, Lagx;->d(II)I

    move-result v1

    .line 217
    if-ltz v1, :cond_0

    .line 218
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->p:I

    .line 221
    :cond_0
    sget v1, Lym;->Toolbar_titleMarginEnd:I

    invoke-virtual {v0, v1, v6}, Lagx;->d(II)I

    move-result v1

    .line 222
    if-ltz v1, :cond_1

    .line 223
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->q:I

    .line 226
    :cond_1
    sget v1, Lym;->Toolbar_titleMarginTop:I

    invoke-virtual {v0, v1, v6}, Lagx;->d(II)I

    move-result v1

    .line 227
    if-ltz v1, :cond_2

    .line 228
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->r:I

    .line 231
    :cond_2
    sget v1, Lym;->Toolbar_titleMarginBottom:I

    invoke-virtual {v0, v1, v6}, Lagx;->d(II)I

    move-result v1

    .line 233
    if-ltz v1, :cond_3

    .line 234
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->s:I

    .line 237
    :cond_3
    sget v1, Lym;->Toolbar_maxButtonHeight:I

    invoke-virtual {v0, v1, v6}, Lagx;->e(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->o:I

    .line 239
    sget v1, Lym;->Toolbar_contentInsetStart:I

    invoke-virtual {v0, v1, v8}, Lagx;->d(II)I

    move-result v1

    .line 242
    sget v2, Lym;->Toolbar_contentInsetEnd:I

    invoke-virtual {v0, v2, v8}, Lagx;->d(II)I

    move-result v2

    .line 245
    sget v3, Lym;->Toolbar_contentInsetLeft:I

    invoke-virtual {v0, v3, v7}, Lagx;->e(II)I

    move-result v3

    .line 247
    sget v4, Lym;->Toolbar_contentInsetRight:I

    invoke-virtual {v0, v4, v7}, Lagx;->e(II)I

    move-result v4

    .line 250
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    invoke-virtual {v5, v3, v4}, Lagc;->b(II)V

    .line 252
    if-ne v1, v8, :cond_4

    if-eq v2, v8, :cond_5

    .line 254
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    invoke-virtual {v3, v1, v2}, Lagc;->a(II)V

    .line 257
    :cond_5
    sget v1, Lym;->Toolbar_collapseIcon:I

    invoke-virtual {v0, v1}, Lagx;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    .line 258
    sget v1, Lym;->Toolbar_collapseContentDescription:I

    invoke-virtual {v0, v1}, Lagx;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Ljava/lang/CharSequence;

    .line 260
    sget v1, Lym;->Toolbar_title:I

    invoke-virtual {v0, v1}, Lagx;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 262
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    :cond_6
    sget v1, Lym;->Toolbar_subtitle:I

    invoke-virtual {v0, v1}, Lagx;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 266
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 267
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 270
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    .line 271
    sget v1, Lym;->Toolbar_popupTheme:I

    invoke-virtual {v0, v1, v7}, Lagx;->g(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 273
    sget v1, Lym;->Toolbar_navigationIcon:I

    invoke-virtual {v0, v1}, Lagx;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_8

    .line 275
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_8
    sget v1, Lym;->Toolbar_navigationContentDescription:I

    invoke-virtual {v0, v1}, Lagx;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 278
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 279
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 282
    :cond_9
    sget v1, Lym;->Toolbar_logo:I

    invoke-virtual {v0, v1}, Lagx;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_a

    .line 284
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_a
    sget v1, Lym;->Toolbar_logoDescription:I

    invoke-virtual {v0, v1}, Lagx;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 288
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 289
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 292
    :cond_b
    sget v1, Lym;->Toolbar_titleTextColor:I

    invoke-virtual {v0, v1}, Lagx;->e(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 293
    sget v1, Lym;->Toolbar_titleTextColor:I

    invoke-virtual {v0, v1, v6}, Lagx;->b(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 296
    :cond_c
    sget v1, Lym;->Toolbar_subtitleTextColor:I

    invoke-virtual {v0, v1}, Lagx;->e(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 297
    sget v1, Lym;->Toolbar_subtitleTextColor:I

    invoke-virtual {v0, v1, v6}, Lagx;->b(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 299
    :cond_d
    invoke-virtual {v0}, Lagx;->a()V

    .line 302
    invoke-virtual {v0}, Lagx;->b()Lagv;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->N:Lagv;

    .line 303
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 1668
    and-int/lit8 v0, p1, 0x70

    .line 1669
    sparse-switch v0, :sswitch_data_0

    .line 1675
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->u:I

    and-int/lit8 v0, v0, 0x70

    :sswitch_0
    return v0

    .line 1669
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/View;I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1636
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lahc;

    .line 1637
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1638
    if-lez p2, :cond_0

    sub-int v1, v3, p2

    div-int/lit8 v1, v1, 0x2

    .line 1639
    :goto_0
    iget v4, v0, Lahc;->a:I

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1649
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 1650
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 1651
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v6

    .line 1652
    sub-int v1, v6, v4

    sub-int/2addr v1, v5

    .line 1653
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 1654
    iget v7, v0, Lahc;->topMargin:I

    if-ge v1, v7, :cond_1

    .line 1655
    iget v0, v0, Lahc;->topMargin:I

    .line 1663
    :goto_1
    add-int/2addr v0, v4

    :goto_2
    return v0

    :cond_0
    move v1, v2

    .line 1638
    goto :goto_0

    .line 1641
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 1644
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    iget v0, v0, Lahc;->bottomMargin:I

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 1657
    :cond_1
    sub-int v5, v6, v5

    sub-int v3, v5, v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 1659
    iget v5, v0, Lahc;->bottomMargin:I

    if-ge v3, v5, :cond_2

    .line 1660
    iget v0, v0, Lahc;->bottomMargin:I

    sub-int/2addr v0, v3

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1639
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/view/View;IIII[I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1201
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1203
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    aget v2, p6, v5

    sub-int/2addr v1, v2

    .line 1204
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    aget v3, p6, v6

    sub-int/2addr v2, v3

    .line 1205
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1206
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1207
    add-int/2addr v3, v4

    .line 1208
    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v5

    .line 1209
    neg-int v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v6

    .line 1211
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1213
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1217
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1218
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method private a(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1611
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lahc;

    .line 1612
    iget v1, v0, Lahc;->leftMargin:I

    aget v2, p3, v3

    sub-int/2addr v1, v2

    .line 1613
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, p2

    .line 1614
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v3

    .line 1615
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result v1

    .line 1616
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1617
    add-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1618
    iget v0, v0, Lahc;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 1619
    return v0
.end method

.method private a(Ljava/util/List;[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1591
    aget v1, p2, v3

    .line 1592
    const/4 v0, 0x1

    aget v0, p2, v0

    .line 1594
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    move v4, v3

    move v5, v0

    move v6, v1

    .line 1595
    :goto_0
    if-ge v2, v7, :cond_0

    .line 1596
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1597
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lahc;

    .line 1598
    iget v8, v1, Lahc;->leftMargin:I

    sub-int v6, v8, v6

    .line 1599
    iget v1, v1, Lahc;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1600
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1601
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1602
    neg-int v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1603
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1604
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v8

    add-int/2addr v0, v9

    add-int v1, v4, v0

    .line 1595
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_0

    .line 1606
    :cond_0
    return v4
.end method

.method public static synthetic a(Landroid/support/v7/widget/Toolbar;)Lahd;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->E:Lahd;

    return-object v0
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1178
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1181
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1185
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1186
    if-eq v2, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1187
    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1190
    :cond_0
    invoke-static {p6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1192
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1193
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 1064
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1066
    if-nez v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Lahc;

    move-result-object v0

    .line 1073
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lahc;->b:I

    .line 1075
    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1076
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    :goto_1
    return-void

    .line 1068
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1069
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Lahc;

    move-result-object v0

    goto :goto_0

    .line 1071
    :cond_1
    check-cast v0, Lahc;

    goto :goto_0

    .line 1079
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1687
    invoke-static {p0}, Lou;->h(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1688
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 1689
    invoke-static {p0}, Lou;->h(Landroid/view/View;)I

    move-result v3

    invoke-static {p2, v3}, Lmw;->a(II)I

    move-result v3

    .line 1692
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1694
    if-eqz v0, :cond_2

    .line 1695
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 1696
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1697
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lahc;

    .line 1698
    iget v4, v0, Lahc;->b:I

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Lahc;->a:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1700
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1687
    goto :goto_0

    .line 1704
    :cond_2
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1705
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1706
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lahc;

    .line 1707
    iget v5, v0, Lahc;->b:I

    if-nez v5, :cond_3

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v0, v0, Lahc;->a:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1709
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1713
    :cond_4
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1730
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 1716
    invoke-static {p0}, Lou;->h(Landroid/view/View;)I

    move-result v1

    .line 1717
    invoke-static {p1, v1}, Lmw;->a(II)I

    move-result v0

    .line 1718
    and-int/lit8 v0, v0, 0x7

    .line 1719
    packed-switch v0, :pswitch_data_0

    .line 1725
    :pswitch_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1719
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1734
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1735
    invoke-static {v0}, Lnm;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    invoke-static {v0}, Lnm;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1624
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lahc;

    .line 1625
    iget v1, v0, Lahc;->rightMargin:I

    aget v2, p3, v4

    sub-int/2addr v1, v2

    .line 1626
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, p2, v2

    .line 1627
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v4

    .line 1628
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result v1

    .line 1629
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1630
    sub-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1631
    iget v0, v0, Lahc;->leftMargin:I

    add-int/2addr v0, v3

    sub-int v0, v2, v0

    .line 1632
    return v0
.end method

.method public static synthetic b(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->p()V

    return-void
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1741
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static synthetic c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic d(Landroid/support/v7/widget/Toolbar;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->n:I

    return v0
.end method

.method private d(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1807
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 891
    new-instance v0, Lzb;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    .line 532
    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 865
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    .line 866
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Lzp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 868
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lzp;

    .line 869
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    if-nez v1, :cond_0

    .line 870
    new-instance v1, Lahb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lahb;-><init>(Landroid/support/v7/widget/Toolbar;Lagy;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    .line 872
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 873
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lzp;->a(Laae;Landroid/content/Context;)V

    .line 875
    :cond_1
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    .line 880
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 881
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->F:Labk;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Labk;)V

    .line 882
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->J:Laaf;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->K:Lzq;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Laaf;Lzq;)V

    .line 883
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Lahc;

    move-result-object v0

    .line 884
    const v1, 0x800005

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lahc;->a:I

    .line 885
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 888
    :cond_0
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 1035
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lyc;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    .line 1038
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Lahc;

    move-result-object v0

    .line 1039
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lahc;->a:I

    .line 1040
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1045
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lyc;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    .line 1048
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1050
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Lahc;

    move-result-object v0

    .line 1051
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lahc;->a:I

    .line 1052
    const/4 v1, 0x2

    iput v1, v0, Lahc;->b:I

    .line 1053
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    new-instance v1, Laha;

    invoke-direct {v1, p0}, Laha;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1116
    return-void
.end method

.method private r()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1225
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->L:Z

    if-nez v1, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return v0

    .line 1227
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1228
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1229
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1230
    invoke-direct {p0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1235
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Lahc;
    .locals 2

    .prologue
    .line 1746
    new-instance v0, Lahc;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lahc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lahc;
    .locals 1

    .prologue
    .line 1751
    instance-of v0, p1, Lahc;

    if-eqz v0, :cond_0

    .line 1752
    new-instance v0, Lahc;

    check-cast p1, Lahc;

    invoke-direct {v0, p1}, Lahc;-><init>(Lahc;)V

    .line 1758
    :goto_0
    return-object v0

    .line 1753
    :cond_0
    instance-of v0, p1, Lvy;

    if-eqz v0, :cond_1

    .line 1754
    new-instance v0, Lahc;

    check-cast p1, Lvy;

    invoke-direct {v0, p1}, Lahc;-><init>(Lvy;)V

    goto :goto_0

    .line 1755
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1756
    new-instance v0, Lahc;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lahc;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1758
    :cond_2
    new-instance v0, Lahc;

    invoke-direct {v0, p1}, Lahc;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    invoke-virtual {v0, p1, p2}, Lagc;->a(II)V

    .line 936
    return-void
.end method

.method public a(Laaf;Lzq;)V
    .locals 0

    .prologue
    .line 1825
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->J:Laaf;

    .line 1826
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->K:Lzq;

    .line 1827
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 681
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->l:I

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 685
    :cond_0
    return-void
.end method

.method public a(Lzp;Laaw;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 392
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    .line 397
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Lzp;

    move-result-object v0

    .line 398
    if-eq v0, p1, :cond_0

    .line 402
    if-eqz v0, :cond_2

    .line 403
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Laaw;

    invoke-virtual {v0, v1}, Lzp;->b(Laae;)V

    .line 404
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    invoke-virtual {v0, v1}, Lzp;->b(Laae;)V

    .line 407
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    if-nez v0, :cond_3

    .line 408
    new-instance v0, Lahb;

    invoke-direct {v0, p0, v3}, Lahb;-><init>(Landroid/support/v7/widget/Toolbar;Lagy;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    .line 411
    :cond_3
    invoke-virtual {p2, v2}, Laaw;->d(Z)V

    .line 412
    if-eqz p1, :cond_4

    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lzp;->a(Laae;Landroid/content/Context;)V

    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lzp;->a(Laae;Landroid/content/Context;)V

    .line 421
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Laaw;)V

    .line 423
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->H:Laaw;

    goto :goto_0

    .line 416
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p2, v0, v3}, Laaw;->a(Landroid/content/Context;Lzp;)V

    .line 417
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lahb;->a(Landroid/content/Context;Lzp;)V

    .line 418
    invoke-virtual {p2, v2}, Laaw;->b(Z)V

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    invoke-virtual {v0, v2}, Lahb;->b(Z)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 692
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->m:I

    .line 693
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 696
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1769
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lahc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->i()V

    .line 433
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    iget-object v0, v0, Lahb;->b:Lzt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Lahc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/util/AttributeSet;)Lahc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Lahc;

    move-result-object v0

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    invoke-virtual {v0}, Lagc;->d()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    invoke-virtual {v0}, Lagc;->a()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    invoke-virtual {v0}, Lagc;->b()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    invoke-virtual {v0}, Lagc;->c()I

    move-result v0

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 839
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    .line 840
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 860
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->k:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Lade;
    .locals 2

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->G:Lahf;

    if-nez v0, :cond_0

    .line 1779
    new-instance v0, Lahf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lahf;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->G:Lahf;

    .line 1781
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->G:Lahf;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 561
    :goto_0
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lzt;->collapseActionView()Z

    .line 564
    :cond_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    iget-object v0, v0, Lahb;->b:Lzt;

    goto :goto_0
.end method

.method public i()Lahc;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1764
    new-instance v0, Lahc;

    invoke-direct {v0, v1, v1}, Lahc;-><init>(II)V

    return-object v0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 1785
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 1787
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1788
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1789
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lahc;

    .line 1790
    iget v0, v0, Lahc;->b:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eq v2, v0, :cond_0

    .line 1791
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 1792
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1795
    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 1798
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1800
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1801
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1800
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1803
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1804
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1120
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1121
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1122
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1155
    invoke-static {p1}, Lnz;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1156
    if-ne v0, v4, :cond_0

    .line 1157
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->A:Z

    .line 1160
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->A:Z

    if-nez v1, :cond_1

    .line 1161
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1162
    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 1163
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->A:Z

    .line 1167
    :cond_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1168
    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->A:Z

    .line 1171
    :cond_3
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    .prologue
    .line 1376
    invoke-static/range {p0 .. p0}, Lou;->h(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    move v5, v3

    .line 1377
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v12

    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v13

    .line 1379
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1380
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v14

    .line 1381
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v15

    .line 1382
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v16

    .line 1384
    sub-int v3, v12, v14

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->D:[I

    move-object/from16 v17, v0

    .line 1387
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v17, v7

    aput v8, v17, v4

    .line 1390
    invoke-static/range {p0 .. p0}, Lou;->o(Landroid/view/View;)I

    move-result v18

    .line 1392
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1393
    if-eqz v5, :cond_9

    .line 1394
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    move v4, v6

    .line 1402
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1403
    if-eqz v5, :cond_a

    .line 1404
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    .line 1412
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1413
    if-eqz v5, :cond_b

    .line 1414
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    .line 1422
    :cond_1
    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v17, v7

    .line 1423
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v9

    sub-int v10, v12, v14

    sub-int/2addr v10, v3

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v17, v7

    .line 1424
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1425
    sub-int v7, v12, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1427
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1428
    if-eqz v5, :cond_c

    .line 1429
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    .line 1437
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1438
    if-eqz v5, :cond_d

    .line 1439
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    move v7, v3

    move v8, v4

    .line 1447
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v19

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v20

    .line 1449
    const/4 v4, 0x0

    .line 1450
    if-eqz v19, :cond_3

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lahc;

    .line 1452
    iget v9, v3, Lahc;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v3, v3, Lahc;->bottomMargin:I

    add-int/2addr v3, v9

    add-int/2addr v4, v3

    .line 1454
    :cond_3
    if-eqz v20, :cond_20

    .line 1455
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lahc;

    .line 1456
    iget v9, v3, Lahc;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v3, v3, Lahc;->bottomMargin:I

    add-int/2addr v3, v9

    add-int/2addr v3, v4

    move v11, v3

    .line 1459
    :goto_6
    if-nez v19, :cond_4

    if-eqz v20, :cond_7

    .line 1461
    :cond_4
    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object v9, v3

    .line 1462
    :goto_7
    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object v4, v3

    .line 1463
    :goto_8
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lahc;

    .line 1464
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lahc;

    .line 1465
    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-gtz v9, :cond_6

    :cond_5
    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-lez v9, :cond_10

    :cond_6
    const/4 v9, 0x1

    .line 1468
    :goto_9
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->u:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 1474
    sub-int v10, v13, v15

    sub-int v10, v10, v16

    .line 1475
    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 1476
    iget v0, v3, Lahc;->topMargin:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->r:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    if-ge v10, v0, :cond_11

    .line 1477
    iget v3, v3, Lahc;->topMargin:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int/2addr v3, v4

    .line 1486
    :goto_a
    add-int v10, v15, v3

    .line 1493
    :goto_b
    if-eqz v5, :cond_13

    .line 1494
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->p:I

    :goto_c
    const/4 v4, 0x1

    aget v4, v17, v4

    sub-int/2addr v3, v4

    .line 1495
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v4, v7, v4

    .line 1496
    const/4 v5, 0x1

    const/4 v7, 0x0

    neg-int v3, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v17, v5

    .line 1500
    if-eqz v19, :cond_1e

    .line 1501
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lahc;

    .line 1502
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    .line 1503
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v10

    .line 1504
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v11, v5, v10, v4, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 1505
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->q:I

    sub-int/2addr v5, v10

    .line 1506
    iget v3, v3, Lahc;->bottomMargin:I

    add-int v10, v7, v3

    move v7, v5

    .line 1508
    :goto_d
    if-eqz v20, :cond_1d

    .line 1509
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lahc;

    .line 1510
    iget v5, v3, Lahc;->topMargin:I

    add-int/2addr v5, v10

    .line 1511
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v4, v10

    .line 1512
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v5

    .line 1513
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v13, v10, v5, v4, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1514
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/Toolbar;->q:I

    sub-int v5, v4, v5

    .line 1515
    iget v3, v3, Lahc;->bottomMargin:I

    add-int/2addr v3, v11

    move v3, v5

    .line 1517
    :goto_e
    if-eqz v9, :cond_1c

    .line 1518
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_f
    move v7, v3

    .line 1553
    :cond_7
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1555
    const/4 v3, 0x0

    move v5, v3

    move v4, v8

    :goto_11
    if-ge v5, v9, :cond_15

    .line 1556
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    .line 1555
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_11

    .line 1376
    :cond_8
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_0

    .line 1397
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v6, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_1

    .line 1407
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_2

    .line 1417
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    goto/16 :goto_3

    .line 1432
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_4

    .line 1442
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    move v7, v3

    move v8, v4

    goto/16 :goto_5

    .line 1461
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object v9, v3

    goto/16 :goto_7

    .line 1462
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object v4, v3

    goto/16 :goto_8

    .line 1465
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 1470
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    iget v3, v3, Lahc;->topMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int v10, v3, v4

    .line 1471
    goto/16 :goto_b

    .line 1479
    :cond_11
    sub-int v13, v13, v16

    sub-int v11, v13, v11

    sub-int/2addr v11, v10

    sub-int/2addr v11, v15

    .line 1481
    iget v3, v3, Lahc;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/Toolbar;->s:I

    add-int/2addr v3, v13

    if-ge v11, v3, :cond_1f

    .line 1482
    const/4 v3, 0x0

    iget v4, v4, Lahc;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/Toolbar;->s:I

    add-int/2addr v4, v13

    sub-int/2addr v4, v11

    sub-int v4, v10, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_a

    .line 1489
    :sswitch_1
    sub-int v3, v13, v16

    iget v4, v4, Lahc;->bottomMargin:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->s:I

    sub-int/2addr v3, v4

    sub-int v10, v3, v11

    goto/16 :goto_b

    .line 1494
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 1521
    :cond_13
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->p:I

    :goto_12
    const/4 v4, 0x0

    aget v4, v17, v4

    sub-int/2addr v3, v4

    .line 1522
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v8, v4

    .line 1523
    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v3, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v17, v4

    .line 1527
    if-eqz v19, :cond_1b

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lahc;

    .line 1529
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v8

    .line 1530
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v10

    .line 1531
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v11, v8, v10, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1532
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->q:I

    add-int/2addr v4, v10

    .line 1533
    iget v3, v3, Lahc;->bottomMargin:I

    add-int/2addr v3, v5

    move v5, v4

    move v4, v3

    .line 1535
    :goto_13
    if-eqz v20, :cond_1a

    .line 1536
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lahc;

    .line 1537
    iget v10, v3, Lahc;->topMargin:I

    add-int/2addr v4, v10

    .line 1538
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    .line 1539
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v4

    .line 1540
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v13, v8, v4, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1541
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->q:I

    add-int/2addr v4, v10

    .line 1542
    iget v3, v3, Lahc;->bottomMargin:I

    add-int/2addr v3, v11

    move v3, v4

    .line 1544
    :goto_14
    if-eqz v9, :cond_7

    .line 1545
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_10

    .line 1521
    :cond_14
    const/4 v3, 0x0

    goto :goto_12

    .line 1560
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1562
    const/4 v3, 0x0

    move v5, v3

    :goto_15
    if-ge v5, v8, :cond_16

    .line 1563
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v7, v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v7

    .line 1562
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_15

    .line 1569
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;[I)I

    move-result v5

    .line 1571
    sub-int v3, v12, v6

    sub-int/2addr v3, v14

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    .line 1572
    div-int/lit8 v6, v5, 0x2

    .line 1573
    sub-int/2addr v3, v6

    .line 1574
    add-int/2addr v5, v3

    .line 1575
    if-ge v3, v4, :cond_18

    move v3, v4

    .line 1581
    :cond_17
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1582
    const/4 v4, 0x0

    move v5, v3

    :goto_17
    if-ge v4, v6, :cond_19

    .line 1583
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v5

    .line 1582
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_17

    .line 1577
    :cond_18
    if-le v5, v7, :cond_17

    .line 1578
    sub-int v4, v5, v7

    sub-int/2addr v3, v4

    goto :goto_16

    .line 1587
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1588
    return-void

    :cond_1a
    move v3, v8

    goto/16 :goto_14

    :cond_1b
    move v5, v8

    move v4, v10

    goto/16 :goto_13

    :cond_1c
    move v3, v4

    goto/16 :goto_f

    :cond_1d
    move v3, v4

    goto/16 :goto_e

    :cond_1e
    move v7, v4

    goto/16 :goto_d

    :cond_1f
    move v3, v10

    goto/16 :goto_a

    :cond_20
    move v11, v4

    goto/16 :goto_6

    :cond_21
    move v7, v3

    move v8, v4

    goto/16 :goto_5

    :cond_22
    move v4, v6

    goto/16 :goto_1

    .line 1468
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1240
    const/4 v3, 0x0

    .line 1241
    const/4 v11, 0x0

    .line 1242
    const/4 v9, 0x0

    .line 1244
    iget-object v10, p0, Landroid/support/v7/widget/Toolbar;->D:[I

    .line 1247
    invoke-static {p0}, Lahm;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1248
    const/4 v1, 0x1

    .line 1249
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    .line 1257
    :goto_0
    const/4 v0, 0x0

    .line 1258
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->o:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1261
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1262
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1264
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-static {v1}, Lou;->i(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Lahm;->a(II)I

    move-result v1

    move v9, v1

    move v11, v2

    .line 1268
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->o:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1271
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1273
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1275
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-static {v1}, Lou;->i(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Lahm;->a(II)I

    move-result v9

    .line 1279
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    .line 1280
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1281
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v8

    .line 1283
    const/4 v0, 0x0

    .line 1284
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1285
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->o:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1287
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1288
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1290
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v1}, Lou;->i(Landroid/view/View;)I

    move-result v1

    invoke-static {v9, v1}, Lahm;->a(II)I

    move-result v9

    .line 1294
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1295
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1296
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v7

    .line 1298
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1299
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1301
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1303
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-static {v0}, Lou;->i(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lahm;->a(II)I

    move-result v9

    .line 1307
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1308
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1310
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1312
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lou;->i(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lahm;->a(II)I

    move-result v9

    .line 1316
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v8

    .line 1317
    const/4 v0, 0x0

    move v7, v0

    move v12, v11

    move v11, v9

    :goto_1
    if-ge v7, v8, :cond_7

    .line 1318
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1319
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lahc;

    .line 1320
    iget v0, v0, Lahc;->b:I

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v11

    move v1, v12

    .line 1317
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v11, v0

    move v12, v1

    goto :goto_1

    .line 1251
    :cond_5
    const/4 v1, 0x0

    .line 1252
    const/4 v0, 0x1

    move v7, v0

    move v8, v1

    goto/16 :goto_0

    .line 1325
    :cond_6
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1327
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1328
    invoke-static {v1}, Lou;->i(Landroid/view/View;)I

    move-result v0

    invoke-static {v11, v0}, Lahm;->a(II)I

    move-result v0

    move v1, v2

    goto :goto_2

    .line 1332
    :cond_7
    const/4 v1, 0x0

    .line 1333
    const/4 v0, 0x0

    .line 1334
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->r:I

    iget v4, p0, Landroid/support/v7/widget/Toolbar;->s:I

    add-int v9, v2, v4

    .line 1335
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->p:I

    iget v4, p0, Landroid/support/v7/widget/Toolbar;->q:I

    add-int/2addr v2, v4

    .line 1336
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1337
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    add-int v7, v3, v2

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    .line 1340
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1341
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1342
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-static {v4}, Lou;->i(Landroid/view/View;)I

    move-result v4

    invoke-static {v11, v4}, Lahm;->a(II)I

    move-result v11

    .line 1345
    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1346
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    add-int v7, v3, v2

    add-int/2addr v9, v0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1350
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 1352
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lou;->i(Landroid/view/View;)I

    move-result v2

    invoke-static {v11, v2}, Lahm;->a(II)I

    move-result v11

    .line 1356
    :cond_9
    add-int/2addr v1, v3

    .line 1357
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1361
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1362
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1364
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v11

    invoke-static {v1, p1, v2}, Lou;->a(III)I

    move-result v1

    .line 1367
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v11, 0x10

    invoke-static {v0, p2, v2}, Lou;->a(III)I

    move-result v0

    .line 1371
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->r()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1372
    return-void

    :cond_b
    move v0, v11

    move v1, v12

    goto/16 :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1097
    check-cast p1, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 1098
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1100
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Lzp;

    move-result-object v0

    .line 1101
    :goto_0
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1102
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_0

    .line 1104
    invoke-static {v0}, Lnr;->b(Landroid/view/MenuItem;)Z

    .line 1108
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/widget/Toolbar$SavedState;->b:Z

    if-eqz v0, :cond_1

    .line 1109
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->q()V

    .line 1111
    :cond_1
    return-void

    .line 1100
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 333
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 334
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 336
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->t:Lagc;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lagc;->a(Z)V

    .line 337
    return-void

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1085
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1087
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    iget-object v1, v1, Lahb;->b:Lzt;

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:Lahb;

    iget-object v1, v1, Lahb;->b:Lzt;

    invoke-virtual {v1}, Lzt;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    .line 1091
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->b:Z

    .line 1092
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1131
    invoke-static {p1}, Lnz;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1132
    if-nez v0, :cond_0

    .line 1133
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->z:Z

    .line 1136
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->z:Z

    if-nez v1, :cond_1

    .line 1137
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1138
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1139
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->z:Z

    .line 1143
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1144
    :cond_2
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->z:Z

    .line 1147
    :cond_3
    return v2
.end method

.method public setCollapsible(Z)V
    .locals 0

    .prologue
    .line 1816
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->L:Z

    .line 1817
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1818
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->N:Lagv;

    invoke-virtual {v0, p1}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 465
    if-eqz p1, :cond_2

    .line 466
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->l()V

    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 474
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    :cond_1
    return-void

    .line 470
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->l()V

    .line 514
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 743
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    return-void

    .line 743
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 755
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->o()V

    .line 758
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 761
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->N:Lagv;

    invoke-virtual {v0, p1}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 777
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 792
    if-eqz p1, :cond_2

    .line 793
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->o()V

    .line 794
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 801
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_1
    return-void

    .line 797
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 799
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->o()V

    .line 827
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    return-void
.end method

.method public setOnMenuItemClickListener(Lahd;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->E:Lahd;

    .line 916
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 849
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 851
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .prologue
    .line 313
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->k:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    .line 315
    if-nez p1, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 650
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 651
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    .line 654
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 655
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 656
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->m:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 659
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->y:I

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 664
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 670
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->w:Ljava/lang/CharSequence;

    .line 674
    return-void

    .line 666
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .prologue
    .line 716
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->y:I

    .line 717
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 596
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 598
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 599
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 600
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 601
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 602
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->l:I

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->l:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 605
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->x:I

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 610
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 616
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->v:Ljava/lang/CharSequence;

    .line 620
    return-void

    .line 612
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 614
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 704
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->x:I

    .line 705
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    :cond_0
    return-void
.end method

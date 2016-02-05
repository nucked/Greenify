.class public Lahf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lade;


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/Window$Callback;

.field private m:Z

.field private n:Laaw;

.field private o:I

.field private final p:Lagv;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 91
    sget v0, Lyk;->abc_action_bar_up_description:I

    sget v1, Lyg;->abc_ic_ab_back_mtrl_am_alpha:I

    invoke-direct {p0, p1, p2, v0, v1}, Lahf;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lahf;->o:I

    .line 87
    iput v1, p0, Lahf;->q:I

    .line 97
    iput-object p1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    .line 98
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lahf;->i:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lahf;->j:Ljava/lang/CharSequence;

    .line 100
    iget-object v0, p0, Lahf;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lahf;->h:Z

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lahf;->g:Landroid/graphics/drawable/Drawable;

    .line 103
    if-eqz p2, :cond_d

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lym;->ActionBar:[I

    sget v4, Lyc;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Lagx;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lagx;

    move-result-object v0

    .line 107
    sget v2, Lym;->ActionBar_title:I

    invoke-virtual {v0, v2}, Lagx;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {p0, v2}, Lahf;->b(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    sget v2, Lym;->ActionBar_subtitle:I

    invoke-virtual {v0, v2}, Lagx;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 113
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    invoke-virtual {p0, v2}, Lahf;->c(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    sget v2, Lym;->ActionBar_logo:I

    invoke-virtual {v0, v2}, Lagx;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p0, v2}, Lahf;->d(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_2
    sget v2, Lym;->ActionBar_icon:I

    invoke-virtual {v0, v2}, Lagx;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 123
    iget-object v3, p0, Lahf;->g:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 124
    invoke-virtual {p0, v2}, Lahf;->a(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_3
    sget v2, Lym;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Lagx;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    invoke-virtual {p0, v2}, Lahf;->e(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_4
    sget v2, Lym;->ActionBar_displayOptions:I

    invoke-virtual {v0, v2, v1}, Lagx;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lahf;->c(I)V

    .line 134
    sget v2, Lym;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v2, v1}, Lagx;->g(II)I

    move-result v2

    .line 136
    if-eqz v2, :cond_5

    .line 137
    iget-object v3, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lahf;->a(Landroid/view/View;)V

    .line 139
    iget v2, p0, Lahf;->b:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Lahf;->c(I)V

    .line 142
    :cond_5
    sget v2, Lym;->ActionBar_height:I

    invoke-virtual {v0, v2, v1}, Lagx;->f(II)I

    move-result v2

    .line 143
    if-lez v2, :cond_6

    .line 144
    iget-object v3, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 145
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    iget-object v2, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_6
    sget v2, Lym;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v2, v5}, Lagx;->d(II)I

    move-result v2

    .line 151
    sget v3, Lym;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v3, v5}, Lagx;->d(II)I

    move-result v3

    .line 153
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 154
    :cond_7
    iget-object v4, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->a(II)V

    .line 158
    :cond_8
    sget v2, Lym;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lagx;->g(II)I

    move-result v2

    .line 159
    if-eqz v2, :cond_9

    .line 160
    iget-object v3, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 163
    :cond_9
    sget v2, Lym;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lagx;->g(II)I

    move-result v2

    .line 165
    if-eqz v2, :cond_a

    .line 166
    iget-object v3, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 169
    :cond_a
    sget v2, Lym;->ActionBar_popupTheme:I

    invoke-virtual {v0, v2, v1}, Lagx;->g(II)I

    move-result v1

    .line 170
    if-eqz v1, :cond_b

    .line 171
    iget-object v2, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 174
    :cond_b
    invoke-virtual {v0}, Lagx;->a()V

    .line 176
    invoke-virtual {v0}, Lagx;->b()Lagv;

    move-result-object v0

    iput-object v0, p0, Lahf;->p:Lagv;

    .line 183
    :goto_1
    invoke-virtual {p0, p3}, Lahf;->d(I)V

    .line 184
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lahf;->k:Ljava/lang/CharSequence;

    .line 186
    iget-object v0, p0, Lahf;->p:Lagv;

    invoke-virtual {v0, p4}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lahf;->c(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lahg;

    invoke-direct {v1, p0}, Lahg;-><init>(Lahf;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void

    :cond_c
    move v0, v1

    .line 100
    goto/16 :goto_0

    .line 178
    :cond_d
    invoke-direct {p0}, Lahf;->r()I

    move-result v0

    iput v0, p0, Lahf;->b:I

    .line 180
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lagv;->a(Landroid/content/Context;)Lagv;

    move-result-object v0

    iput-object v0, p0, Lahf;->p:Lagv;

    goto :goto_1
.end method

.method static synthetic a(Lahf;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Lahf;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lahf;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lahf;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lahf;->l:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic d(Lahf;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lahf;->m:Z

    return v0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 282
    iput-object p1, p0, Lahf;->i:Ljava/lang/CharSequence;

    .line 283
    iget v0, p0, Lahf;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    return-void
.end method

.method private r()I
    .locals 2

    .prologue
    .line 229
    const/16 v0, 0xb

    .line 231
    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    const/16 v0, 0xf

    .line 234
    :cond_0
    return v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    iget v1, p0, Lahf;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 346
    iget v0, p0, Lahf;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lahf;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahf;->f:Landroid/graphics/drawable/Drawable;

    .line 352
    :cond_0
    :goto_0
    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 353
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lahf;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lahf;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 640
    iget v0, p0, Lahf;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lahf;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lahf;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lahf;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 650
    iget v0, p0, Lahf;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 651
    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lahf;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahf;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 653
    :cond_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lahf;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public a(IJ)Lqj;
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lqj;->a(F)Lqj;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lqj;->a(J)Lqj;

    move-result-object v0

    new-instance v1, Lahh;

    invoke-direct {v1, p0, p1}, Lahh;-><init>(Lahf;I)V

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 323
    if-eqz p1, :cond_0

    iget-object v0, p0, Lahf;->p:Lagv;

    invoke-virtual {v0, p1}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lahf;->a(Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Laaf;Lzq;)V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->a(Laaf;Lzq;)V

    .line 690
    return-void
.end method

.method public a(Lage;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 446
    iget-object v0, p0, Lahf;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahf;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lahf;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 449
    :cond_0
    iput-object p1, p0, Lahf;->c:Landroid/view/View;

    .line 450
    if-eqz p1, :cond_1

    iget v0, p0, Lahf;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lahf;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 452
    iget-object v0, p0, Lahf;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lahc;

    .line 453
    iput v3, v0, Lahc;->width:I

    .line 454
    iput v3, v0, Lahc;->height:I

    .line 455
    const v1, 0x800053

    iput v1, v0, Lahc;->a:I

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lage;->setAllowCollapse(Z)V

    .line 458
    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lahf;->e:Landroid/graphics/drawable/Drawable;

    .line 329
    invoke-direct {p0}, Lahf;->s()V

    .line 330
    return-void
.end method

.method public a(Landroid/view/Menu;Laaf;)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lahf;->n:Laaw;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Laaw;

    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laaw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahf;->n:Laaw;

    .line 389
    iget-object v0, p0, Lahf;->n:Laaw;

    sget v1, Lyh;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Laaw;->a(I)V

    .line 391
    :cond_0
    iget-object v0, p0, Lahf;->n:Laaw;

    invoke-virtual {v0, p2}, Laaw;->a(Laaf;)V

    .line 392
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Lzp;

    iget-object v1, p0, Lahf;->n:Laaw;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Lzp;Laaw;)V

    .line 393
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lahf;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lahf;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lahf;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 567
    :cond_0
    iput-object p1, p0, Lahf;->d:Landroid/view/View;

    .line 568
    if-eqz p1, :cond_1

    iget v0, p0, Lahf;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lahf;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 571
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lahf;->l:Landroid/view/Window$Callback;

    .line 260
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lahf;->h:Z

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0, p1}, Lahf;->e(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 473
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 334
    if-eqz p1, :cond_0

    iget-object v0, p0, Lahf;->p:Lagv;

    invoke-virtual {v0, p1}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lahf;->d(Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lahf;->h:Z

    .line 278
    invoke-direct {p0, p1}, Lahf;->e(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    iget v0, p0, Lahf;->b:I

    .line 408
    xor-int/2addr v0, p1

    .line 409
    iput p1, p0, Lahf;->b:I

    .line 410
    if-eqz v0, :cond_3

    .line 411
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 412
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 413
    invoke-direct {p0}, Lahf;->u()V

    .line 414
    invoke-direct {p0}, Lahf;->t()V

    .line 420
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 421
    invoke-direct {p0}, Lahf;->s()V

    .line 424
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 425
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 426
    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lahf;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lahf;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 434
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Lahf;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 435
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 436
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lahf;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 442
    :cond_3
    :goto_2
    return-void

    .line 416
    :cond_4
    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 429
    :cond_5
    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 438
    :cond_6
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lahf;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lahf;->r:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 223
    iput-object p1, p0, Lahf;->r:Landroid/graphics/drawable/Drawable;

    .line 224
    invoke-direct {p0}, Lahf;->u()V

    .line 226
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 295
    iput-object p1, p0, Lahf;->j:Ljava/lang/CharSequence;

    .line 296
    iget v0, p0, Lahf;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 299
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    .line 255
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lahf;->q:I

    if-ne p1, v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iput p1, p0, Lahf;->q:I

    .line 215
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget v0, p0, Lahf;->q:I

    invoke-virtual {p0, v0}, Lahf;->e(I)V

    goto :goto_0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lahf;->f:Landroid/graphics/drawable/Drawable;

    .line 340
    invoke-direct {p0}, Lahf;->s()V

    .line 341
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lahf;->k:Ljava/lang/CharSequence;

    .line 631
    invoke-direct {p0}, Lahf;->t()V

    .line 632
    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 636
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lahf;->d(Ljava/lang/CharSequence;)V

    .line 637
    return-void

    .line 636
    :cond_0
    invoke-virtual {p0}, Lahf;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lahf;->g:Landroid/graphics/drawable/Drawable;

    .line 618
    invoke-direct {p0}, Lahf;->u()V

    .line 619
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lahf;->m:Z

    .line 383
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 398
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lahf;->b:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lahf;->o:I

    return v0
.end method

.method public q()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lahf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.class public Lacp;
.super Landroid/widget/Spinner;
.source "SourceFile"

# interfaces
.implements Loo;


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:[I


# instance fields
.field private d:Lagv;

.field private e:Laby;

.field private f:Landroid/content/Context;

.field private g:Laee;

.field private h:Landroid/widget/SpinnerAdapter;

.field private i:Z

.field private j:Lacs;

.field private k:I

.field private final l:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lacp;->a:Z

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lacp;->b:Z

    .line 67
    new-array v0, v1, [I

    const v1, 0x10102f1

    aput v1, v0, v2

    sput-object v0, Lacp;->c:[I

    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v0, v2

    .line 65
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 131
    sget v0, Lyc;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lacp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lacp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    .line 165
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lacp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lacp;->l:Landroid/graphics/Rect;

    .line 196
    sget-object v0, Lym;->Spinner:[I

    invoke-static {p1, p2, v0, p3, v7}, Lagx;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lagx;

    move-result-object v4

    .line 199
    invoke-virtual {v4}, Lagx;->b()Lagv;

    move-result-object v0

    iput-object v0, p0, Lacp;->d:Lagv;

    .line 200
    new-instance v0, Laby;

    iget-object v2, p0, Lacp;->d:Lagv;

    invoke-direct {v0, p0, v2}, Laby;-><init>(Landroid/view/View;Lagv;)V

    iput-object v0, p0, Lacp;->e:Laby;

    .line 202
    if-eqz p5, :cond_4

    .line 203
    new-instance v0, Lyx;

    invoke-direct {v0, p1, p5}, Lyx;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lacp;->f:Landroid/content/Context;

    .line 215
    :goto_0
    iget-object v0, p0, Lacp;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 216
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_8

    .line 221
    :try_start_0
    sget-object v0, Lacp;->c:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 223
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result p4

    .line 229
    :cond_0
    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    :cond_1
    :goto_1
    if-ne p4, v3, :cond_2

    .line 240
    new-instance v0, Lacs;

    iget-object v2, p0, Lacp;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p2, p3}, Lacs;-><init>(Lacp;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 241
    iget-object v2, p0, Lacp;->f:Landroid/content/Context;

    sget-object v5, Lym;->Spinner:[I

    invoke-static {v2, p2, v5, p3, v7}, Lagx;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lagx;

    move-result-object v2

    .line 243
    sget v5, Lym;->Spinner_android_dropDownWidth:I

    const/4 v6, -0x2

    invoke-virtual {v2, v5, v6}, Lagx;->f(II)I

    move-result v5

    iput v5, p0, Lacp;->k:I

    .line 245
    sget v5, Lym;->Spinner_android_popupBackground:I

    invoke-virtual {v2, v5}, Lagx;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lacs;->a(Landroid/graphics/drawable/Drawable;)V

    .line 247
    sget v5, Lym;->Spinner_android_prompt:I

    invoke-virtual {v4, v5}, Lagx;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lacs;->a(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v2}, Lagx;->a()V

    .line 250
    iput-object v0, p0, Lacp;->j:Lacs;

    .line 251
    new-instance v2, Lacq;

    invoke-direct {v2, p0, p0, v0}, Lacq;-><init>(Lacp;Landroid/view/View;Lacs;)V

    iput-object v2, p0, Lacp;->g:Laee;

    .line 267
    :cond_2
    invoke-virtual {v4}, Lagx;->a()V

    .line 269
    iput-boolean v3, p0, Lacp;->i:Z

    .line 273
    iget-object v0, p0, Lacp;->h:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lacp;->h:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Lacp;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 275
    iput-object v1, p0, Lacp;->h:Landroid/widget/SpinnerAdapter;

    .line 278
    :cond_3
    iget-object v0, p0, Lacp;->e:Laby;

    invoke-virtual {v0, p2, p3}, Laby;->a(Landroid/util/AttributeSet;I)V

    .line 279
    return-void

    .line 205
    :cond_4
    sget v0, Lym;->Spinner_popupTheme:I

    invoke-virtual {v4, v0, v7}, Lagx;->g(II)I

    move-result v0

    .line 206
    if-eqz v0, :cond_5

    .line 207
    new-instance v2, Lyx;

    invoke-direct {v2, p1, v0}, Lyx;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lacp;->f:Landroid/content/Context;

    goto/16 :goto_0

    .line 211
    :cond_5
    sget-boolean v0, Lacp;->a:Z

    if-nez v0, :cond_6

    move-object v0, p1

    :goto_2
    iput-object v0, p0, Lacp;->f:Landroid/content/Context;

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2

    .line 226
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 227
    :goto_3
    :try_start_2
    const-string v5, "AppCompatSpinner"

    const-string v6, "Could not read android:spinnerMode"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_7

    .line 230
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    throw v0

    :cond_8
    move p4, v3

    .line 235
    goto/16 :goto_1

    .line 229
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 226
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic a(Lacp;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lacp;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 520
    if-nez p1, :cond_0

    .line 560
    :goto_0
    return v0

    .line 527
    :cond_0
    invoke-virtual {p0}, Lacp;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 529
    invoke-virtual {p0}, Lacp;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 534
    invoke-virtual {p0}, Lacp;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 535
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 536
    sub-int v3, v8, v1

    .line 537
    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    .line 538
    :goto_1
    if-ge v5, v8, :cond_2

    .line 539
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 540
    if-eq v0, v1, :cond_4

    move-object v1, v2

    .line 544
    :goto_2
    invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 545
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 546
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    :cond_1
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 551
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 538
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    .line 555
    :cond_2
    if-eqz p2, :cond_3

    .line 556
    iget-object v0, p0, Lacp;->l:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 557
    iget-object v0, p0, Lacp;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lacp;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method static synthetic a(Lacp;)Lacs;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lacp;->j:Lacs;

    return-object v0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lacp;->a:Z

    return v0
.end method

.method static synthetic b(Lacp;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lacp;->l:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic c(Lacp;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lacp;->k:I

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 514
    iget-object v0, p0, Lacp;->e:Laby;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lacp;->e:Laby;

    invoke-virtual {v0}, Laby;->c()V

    .line 517
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0}, Lacs;->f()I

    move-result v0

    .line 351
    :goto_0
    return v0

    .line 348
    :cond_0
    sget-boolean v0, Lacp;->b:Z

    if-eqz v0, :cond_1

    .line 349
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0}, Lacs;->g()I

    move-result v0

    .line 328
    :goto_0
    return v0

    .line 325
    :cond_0
    sget-boolean v0, Lacp;->b:Z

    if-eqz v0, :cond_1

    .line 326
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    goto :goto_0

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    .line 364
    iget v0, p0, Lacp;->k:I

    .line 368
    :goto_0
    return v0

    .line 365
    :cond_0
    sget-boolean v0, Lacp;->b:Z

    if-eqz v0, :cond_1

    .line 366
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0}, Lacs;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 308
    :cond_0
    sget-boolean v0, Lacp;->b:Z

    if-eqz v0, :cond_1

    .line 309
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lacp;->f:Landroid/content/Context;

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    sget-boolean v0, Lacp;->a:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0}, Lacs;->a()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lacp;->e:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacp;->e:Laby;

    invoke-virtual {v0}, Laby;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lacp;->e:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacp;->e:Laby;

    invoke-virtual {v0}, Laby;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 392
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0}, Lacs;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0}, Lacs;->i()V

    .line 395
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 407
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 409
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lacp;->getMeasuredWidth()I

    move-result v0

    .line 411
    invoke-virtual {p0}, Lacp;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lacp;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lacp;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lacp;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lacp;->setMeasuredDimension(II)V

    .line 416
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lacp;->g:Laee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacp;->g:Laee;

    invoke-virtual {v0, p0, p1}, Laee;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0}, Lacs;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0}, Lacs;->c()V

    .line 422
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lacp;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .prologue
    .line 375
    iget-boolean v0, p0, Lacp;->i:Z

    if-nez v0, :cond_1

    .line 376
    iput-object p1, p0, Lacp;->h:Landroid/widget/SpinnerAdapter;

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 382
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lacp;->f:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lacp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 384
    :goto_1
    iget-object v1, p0, Lacp;->j:Lacs;

    new-instance v2, Lacr;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lacr;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, Lacs;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lacp;->f:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v0, p0, Lacp;->e:Laby;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lacp;->e:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 444
    iget-object v0, p0, Lacp;->e:Laby;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lacp;->e:Laby;

    invoke-virtual {v0, p1}, Laby;->a(I)V

    .line 447
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0, p1}, Lacs;->b(I)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    sget-boolean v0, Lacp;->b:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0, p1}, Lacs;->c(I)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    sget-boolean v0, Lacp;->b:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_1

    .line 356
    iput p1, p0, Lacp;->k:I

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    sget-boolean v0, Lacp;->b:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0, p1}, Lacs;->a(Landroid/graphics/drawable/Drawable;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sget-boolean v0, Lacp;->b:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lacp;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lacp;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lacp;->j:Lacs;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lacp;->j:Lacs;

    invoke-virtual {v0, p1}, Lacs;->a(Ljava/lang/CharSequence;)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lacp;->e:Laby;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lacp;->e:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/content/res/ColorStateList;)V

    .line 469
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lacp;->e:Laby;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lacp;->e:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 496
    :cond_0
    return-void
.end method

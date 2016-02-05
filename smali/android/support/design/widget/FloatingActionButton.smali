.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation runtime Lal;
    a = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:Landroid/graphics/PorterDuff$Mode;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Landroid/graphics/Rect;

.field private final h:Lbe;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    invoke-static {p1}, Lco;->a(Landroid/content/Context;)V

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    .line 114
    sget-object v0, Lx;->FloatingActionButton:[I

    sget v1, Lw;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    sget v1, Lx;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 118
    sget v1, Lx;->FloatingActionButton_backgroundTintMode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 120
    sget v1, Lx;->FloatingActionButton_rippleColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 121
    sget v1, Lx;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    .line 122
    sget v1, Lx;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    .line 123
    sget v1, Lx;->FloatingActionButton_elevation:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 124
    sget v2, Lx;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 126
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    new-instance v0, Lat;

    invoke-direct {v0, p0}, Lat;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    .line 148
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 149
    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 150
    new-instance v3, Lbh;

    invoke-direct {v3, p0, v0}, Lbh;-><init>(Landroid/view/View;Lbn;)V

    iput-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lt;->design_fab_content_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 159
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v3

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    .line 161
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    iget v6, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lbe;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 163
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {v0, v1}, Lbe;->a(F)V

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {v0, v2}, Lbe;->b(F)V

    .line 165
    return-void

    .line 151
    :cond_0
    const/16 v4, 0xc

    if-lt v3, v4, :cond_1

    .line 152
    new-instance v3, Lbb;

    invoke-direct {v3, p0, v0}, Lbb;-><init>(Landroid/view/View;Lbn;)V

    iput-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    goto :goto_0

    .line 154
    :cond_1
    new-instance v3, Lav;

    invoke-direct {v3, p0, v0}, Lav;-><init>(Landroid/view/View;Lbn;)V

    iput-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    goto :goto_0
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 360
    .line 361
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 362
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 363
    sparse-switch v1, :sswitch_data_0

    .line 380
    :goto_0
    :sswitch_0
    return p0

    .line 373
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 377
    goto :goto_0

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .prologue
    .line 384
    sparse-switch p0, :sswitch_data_0

    .line 396
    :goto_0
    return-object p1

    .line 386
    :sswitch_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 388
    :sswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 390
    :sswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 392
    :sswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 394
    :sswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method public static synthetic a(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic b(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe;->b(Lbg;)V

    .line 274
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe;->a(Lbg;)V

    .line 292
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 349
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe;->a([I)V

    .line 350
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getSizeDimension()I
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    packed-switch v0, :pswitch_data_0

    .line 330
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lt;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    .line 327
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lt;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 355
    invoke-super {p0}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    .line 356
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {v0}, Lbe;->a()V

    .line 357
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 337
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {v0}, Lbe;->d()V

    .line 338
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 343
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {v0}, Lbe;->e()V

    .line 344
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 171
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v1

    .line 172
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v0

    .line 176
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 182
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 265
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 255
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .prologue
    .line 260
    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 218
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 219
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 248
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 249
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    if-eq v0, p1, :cond_0

    .line 193
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 194
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(I)V

    .line 196
    :cond_0
    return-void
.end method

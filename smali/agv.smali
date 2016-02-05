.class public final Lagv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field private static final b:Landroid/graphics/PorterDuff$Mode;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lagv;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lagw;

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I


# instance fields
.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lagv;->a:Z

    .line 53
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lagv;->b:Landroid/graphics/PorterDuff$Mode;

    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lagv;->c:Ljava/util/WeakHashMap;

    .line 56
    new-instance v0, Lagw;

    const/4 v3, 0x6

    invoke-direct {v0, v3}, Lagw;-><init>(I)V

    sput-object v0, Lagv;->d:Lagw;

    .line 62
    new-array v0, v6, [I

    sget v3, Lyg;->abc_textfield_search_default_mtrl_alpha:I

    aput v3, v0, v2

    sget v3, Lyg;->abc_textfield_default_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Lyg;->abc_ab_share_pack_mtrl_alpha:I

    aput v3, v0, v5

    sput-object v0, Lagv;->e:[I

    .line 72
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v3, Lyg;->abc_ic_ab_back_mtrl_am_alpha:I

    aput v3, v0, v2

    sget v3, Lyg;->abc_ic_go_search_api_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Lyg;->abc_ic_search_api_mtrl_alpha:I

    aput v3, v0, v5

    sget v3, Lyg;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v3, v0, v6

    sget v3, Lyg;->abc_ic_clear_mtrl_alpha:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Lyg;->abc_ic_menu_share_mtrl_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lyg;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Lyg;->abc_ic_menu_cut_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Lyg;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Lyg;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xa

    sget v4, Lyg;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    aput v4, v0, v3

    const/16 v3, 0xb

    sget v4, Lyg;->abc_ic_voice_search_api_mtrl_alpha:I

    aput v4, v0, v3

    sput-object v0, Lagv;->f:[I

    .line 91
    new-array v0, v7, [I

    sget v3, Lyg;->abc_textfield_activated_mtrl_alpha:I

    aput v3, v0, v2

    sget v3, Lyg;->abc_textfield_search_activated_mtrl_alpha:I

    aput v3, v0, v1

    sget v3, Lyg;->abc_cab_background_top_mtrl_alpha:I

    aput v3, v0, v5

    sget v3, Lyg;->abc_text_cursor_material:I

    aput v3, v0, v6

    sput-object v0, Lagv;->g:[I

    .line 102
    new-array v0, v6, [I

    sget v3, Lyg;->abc_popup_background_mtrl_mult:I

    aput v3, v0, v2

    sget v3, Lyg;->abc_cab_background_internal_bg:I

    aput v3, v0, v1

    sget v3, Lyg;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v3, v0, v5

    sput-object v0, Lagv;->h:[I

    .line 112
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v3, Lyg;->abc_edit_text_material:I

    aput v3, v0, v2

    sget v3, Lyg;->abc_tab_indicator_material:I

    aput v3, v0, v1

    sget v3, Lyg;->abc_textfield_search_material:I

    aput v3, v0, v5

    sget v3, Lyg;->abc_spinner_mtrl_am_alpha:I

    aput v3, v0, v6

    sget v3, Lyg;->abc_spinner_textfield_background_material:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Lyg;->abc_ratingbar_full_material:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lyg;->abc_switch_track_mtrl_alpha:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Lyg;->abc_switch_thumb_material:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Lyg;->abc_btn_default_mtrl_shape:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Lyg;->abc_btn_borderless_material:I

    aput v4, v0, v3

    sput-object v0, Lagv;->i:[I

    .line 130
    new-array v0, v5, [I

    sget v3, Lyg;->abc_btn_check_material:I

    aput v3, v0, v2

    sget v2, Lyg;->abc_btn_radio_material:I

    aput v2, v0, v1

    sput-object v0, Lagv;->j:[I

    return-void

    :cond_0
    move v0, v2

    .line 49
    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lagv;->k:Ljava/lang/ref/WeakReference;

    .line 165
    return-void
.end method

.method public static a(Landroid/content/Context;)Lagv;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lagv;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagv;

    .line 156
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lagv;

    invoke-direct {v0, p0}, Lagv;-><init>(Landroid/content/Context;)V

    .line 158
    sget-object v1, Lagv;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    return-object v0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 653
    sget-object v0, Lagv;->d:Lagw;

    invoke-virtual {v0, p0, p1}, Lagw;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 655
    if-nez v0, :cond_0

    .line 657
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 658
    sget-object v1, Lagv;->d:Lagw;

    invoke-virtual {v1, p0, p1, v0}, Lagw;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 661
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 644
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x0

    .line 648
    :goto_0
    return-object v0

    .line 647
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 648
    invoke-static {v0, p1}, Lagv;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 144
    invoke-static {p1}, Lagv;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Lagv;->a(Landroid/content/Context;)Lagv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lis;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 665
    if-nez p2, :cond_0

    sget-object p2, Lagv;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-static {p1, p2}, Lagv;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 666
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Lagu;[I)V
    .locals 2

    .prologue
    .line 595
    invoke-static {p0}, Lagv;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 596
    const-string v0, "TintManager"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-boolean v0, p1, Lagu;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lagu;->c:Z

    if-eqz v0, :cond_5

    .line 601
    :cond_2
    iget-boolean v0, p1, Lagu;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lagu;->a:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v1, p1, Lagu;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lagu;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, v1, p2}, Lagv;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 609
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 612
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 601
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v1, Lagv;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 606
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v1

    .line 622
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 624
    :cond_3
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_4

    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 626
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 629
    instance-of v3, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v3, :cond_0

    .line 630
    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 632
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 633
    invoke-static {v5}, Lagv;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-nez v5, :cond_5

    move v1, v2

    .line 634
    goto :goto_0

    .line 632
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 262
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 263
    if-ne v3, p1, :cond_1

    .line 264
    const/4 v0, 0x1

    .line 267
    :cond_0
    return v0

    .line 262
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v3, 0x7

    .line 336
    iget-object v0, p0, Lagv;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 342
    sget v0, Lyc;->colorControlNormal:I

    invoke-static {p1, v0}, Lagq;->a(Landroid/content/Context;I)I

    move-result v0

    .line 343
    sget v1, Lyc;->colorControlActivated:I

    invoke-static {p1, v1}, Lagq;->a(Landroid/content/Context;I)I

    move-result v1

    .line 346
    new-array v2, v3, [[I

    .line 347
    new-array v3, v3, [I

    .line 348
    const/4 v4, 0x0

    .line 351
    sget-object v5, Lagq;->a:[I

    aput-object v5, v2, v4

    .line 352
    sget v5, Lyc;->colorControlNormal:I

    invoke-static {p1, v5}, Lagq;->c(Landroid/content/Context;I)I

    move-result v5

    aput v5, v3, v4

    .line 353
    const/4 v4, 0x1

    .line 355
    sget-object v5, Lagq;->b:[I

    aput-object v5, v2, v4

    .line 356
    aput v1, v3, v4

    .line 357
    const/4 v4, 0x2

    .line 359
    sget-object v5, Lagq;->c:[I

    aput-object v5, v2, v4

    .line 360
    aput v1, v3, v4

    .line 361
    const/4 v4, 0x3

    .line 363
    sget-object v5, Lagq;->d:[I

    aput-object v5, v2, v4

    .line 364
    aput v1, v3, v4

    .line 365
    const/4 v4, 0x4

    .line 367
    sget-object v5, Lagq;->e:[I

    aput-object v5, v2, v4

    .line 368
    aput v1, v3, v4

    .line 369
    const/4 v4, 0x5

    .line 371
    sget-object v5, Lagq;->f:[I

    aput-object v5, v2, v4

    .line 372
    aput v1, v3, v4

    .line 373
    const/4 v1, 0x6

    .line 376
    sget-object v4, Lagq;->h:[I

    aput-object v4, v2, v1

    .line 377
    aput v0, v3, v1

    .line 380
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lagv;->m:Landroid/content/res/ColorStateList;

    .line 382
    :cond_0
    iget-object v0, p0, Lagv;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v1, 0x4

    .line 506
    new-array v0, v1, [[I

    .line 507
    new-array v1, v1, [I

    .line 508
    const/4 v2, 0x0

    .line 510
    invoke-static {p1, p2}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    .line 511
    sget v4, Lyc;->colorControlHighlight:I

    invoke-static {p1, v4}, Lagq;->a(Landroid/content/Context;I)I

    move-result v4

    .line 514
    sget-object v5, Lagq;->a:[I

    aput-object v5, v0, v2

    .line 515
    sget v5, Lyc;->colorButtonNormal:I

    invoke-static {p1, v5}, Lagq;->c(Landroid/content/Context;I)I

    move-result v5

    aput v5, v1, v2

    .line 516
    const/4 v2, 0x1

    .line 518
    sget-object v5, Lagq;->d:[I

    aput-object v5, v0, v2

    .line 519
    invoke-static {v4, v3}, Lju;->a(II)I

    move-result v5

    aput v5, v1, v2

    .line 520
    const/4 v2, 0x2

    .line 522
    sget-object v5, Lagq;->b:[I

    aput-object v5, v0, v2

    .line 523
    invoke-static {v4, v3}, Lju;->a(II)I

    move-result v4

    aput v4, v1, v2

    .line 524
    const/4 v2, 0x3

    .line 527
    sget-object v4, Lagq;->h:[I

    aput-object v4, v0, v2

    .line 528
    aput v3, v1, v2

    .line 531
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private c(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 386
    new-array v0, v1, [[I

    .line 387
    new-array v1, v1, [I

    .line 388
    const/4 v2, 0x0

    .line 391
    sget-object v3, Lagq;->a:[I

    aput-object v3, v0, v2

    .line 392
    sget v3, Lyc;->colorControlNormal:I

    invoke-static {p1, v3}, Lagq;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 393
    const/4 v2, 0x1

    .line 395
    sget-object v3, Lagq;->e:[I

    aput-object v3, v0, v2

    .line 396
    sget v3, Lyc;->colorControlActivated:I

    invoke-static {p1, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 397
    const/4 v2, 0x2

    .line 400
    sget-object v3, Lagq;->h:[I

    aput-object v3, v0, v2

    .line 401
    sget v3, Lyc;->colorControlNormal:I

    invoke-static {p1, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 404
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private d(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const v5, 0x1010030

    const/4 v1, 0x3

    const v4, 0x3e99999a    # 0.3f

    .line 408
    new-array v0, v1, [[I

    .line 409
    new-array v1, v1, [I

    .line 410
    const/4 v2, 0x0

    .line 413
    sget-object v3, Lagq;->a:[I

    aput-object v3, v0, v2

    .line 414
    const v3, 0x3dcccccd    # 0.1f

    invoke-static {p1, v5, v3}, Lagq;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 415
    const/4 v2, 0x1

    .line 417
    sget-object v3, Lagq;->e:[I

    aput-object v3, v0, v2

    .line 418
    sget v3, Lyc;->colorControlActivated:I

    invoke-static {p1, v3, v4}, Lagq;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 419
    const/4 v2, 0x2

    .line 422
    sget-object v3, Lagq;->h:[I

    aput-object v3, v0, v2

    .line 423
    invoke-static {p1, v5, v4}, Lagq;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 426
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private static d(I)Z
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lagv;->f:[I

    invoke-static {v0, p0}, Lagv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lagv;->e:[I

    invoke-static {v0, p0}, Lagv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lagv;->g:[I

    invoke-static {v0, p0}, Lagv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lagv;->i:[I

    invoke-static {v0, p0}, Lagv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lagv;->h:[I

    invoke-static {v0, p0}, Lagv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lagv;->j:[I

    invoke-static {v0, p0}, Lagv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lyg;->abc_cab_background_top_material:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 430
    new-array v0, v1, [[I

    .line 431
    new-array v1, v1, [I

    .line 434
    sget v2, Lyc;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Lagq;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 437
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    sget-object v3, Lagq;->a:[I

    aput-object v3, v0, v4

    .line 443
    aget-object v3, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    aput v3, v1, v4

    .line 446
    sget-object v3, Lagq;->e:[I

    aput-object v3, v0, v5

    .line 447
    sget v3, Lyc;->colorControlActivated:I

    invoke-static {p1, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v5

    .line 451
    sget-object v3, Lagq;->h:[I

    aput-object v3, v0, v6

    .line 452
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v1, v6

    .line 472
    :goto_0
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 458
    :cond_0
    sget-object v2, Lagq;->a:[I

    aput-object v2, v0, v4

    .line 459
    sget v2, Lyc;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Lagq;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    .line 462
    sget-object v2, Lagq;->e:[I

    aput-object v2, v0, v5

    .line 463
    sget v2, Lyc;->colorControlActivated:I

    invoke-static {p1, v2}, Lagq;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 467
    sget-object v2, Lagq;->h:[I

    aput-object v2, v0, v6

    .line 468
    sget v2, Lyc;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Lagq;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 476
    new-array v0, v1, [[I

    .line 477
    new-array v1, v1, [I

    .line 478
    const/4 v2, 0x0

    .line 481
    sget-object v3, Lagq;->a:[I

    aput-object v3, v0, v2

    .line 482
    sget v3, Lyc;->colorControlNormal:I

    invoke-static {p1, v3}, Lagq;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 483
    const/4 v2, 0x1

    .line 485
    sget-object v3, Lagq;->g:[I

    aput-object v3, v0, v2

    .line 486
    sget v3, Lyc;->colorControlNormal:I

    invoke-static {p1, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 487
    const/4 v2, 0x2

    .line 490
    sget-object v3, Lagq;->h:[I

    aput-object v3, v0, v2

    .line 491
    sget v3, Lyc;->colorControlActivated:I

    invoke-static {p1, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 494
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private g(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 498
    sget v0, Lyc;->colorButtonNormal:I

    invoke-direct {p0, p1, v0}, Lagv;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private h(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 502
    sget v0, Lyc;->colorAccent:I

    invoke-direct {p0, p1, v0}, Lagv;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 535
    new-array v0, v1, [[I

    .line 536
    new-array v1, v1, [I

    .line 537
    const/4 v2, 0x0

    .line 540
    sget-object v3, Lagq;->a:[I

    aput-object v3, v0, v2

    .line 541
    sget v3, Lyc;->colorControlNormal:I

    invoke-static {p1, v3}, Lagq;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 542
    const/4 v2, 0x1

    .line 544
    sget-object v3, Lagq;->g:[I

    aput-object v3, v0, v2

    .line 545
    sget v3, Lyc;->colorControlNormal:I

    invoke-static {p1, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 546
    const/4 v2, 0x2

    .line 548
    sget-object v3, Lagq;->h:[I

    aput-object v3, v0, v2

    .line 549
    sget v3, Lyc;->colorControlActivated:I

    invoke-static {p1, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 552
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private j(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 556
    new-array v0, v1, [[I

    .line 557
    new-array v1, v1, [I

    .line 558
    const/4 v2, 0x0

    .line 561
    sget-object v3, Lagq;->a:[I

    aput-object v3, v0, v2

    .line 562
    sget v3, Lyc;->colorControlActivated:I

    invoke-static {p1, v3}, Lagq;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 563
    const/4 v2, 0x1

    .line 565
    sget-object v3, Lagq;->h:[I

    aput-object v3, v0, v2

    .line 566
    sget v3, Lyc;->colorControlActivated:I

    invoke-static {p1, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 569
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lagv;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lagv;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 173
    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-object v1

    .line 175
    :cond_0
    invoke-static {v0, p1}, Lis;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_2

    .line 178
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 180
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 183
    :cond_1
    invoke-virtual {p0, p1}, Lagv;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_3

    .line 186
    invoke-static {v2}, Ljv;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 187
    invoke-static {v2, v3}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 190
    invoke-virtual {p0, p1}, Lagv;->b(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_2

    .line 192
    invoke-static {v2, v0}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_1
    move-object v1, v2

    .line 216
    goto :goto_0

    .line 194
    :cond_3
    sget v3, Lyg;->abc_cab_background_top_material:I

    if-ne p1, v3, :cond_4

    .line 195
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget v3, Lyg;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, v3}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget v3, Lyg;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, v3}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 199
    :cond_4
    sget v3, Lyg;->abc_seekbar_track_material:I

    if-ne p1, v3, :cond_5

    move-object v1, v2

    .line 200
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 201
    const/high16 v3, 0x1020000

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lyc;->colorControlNormal:I

    invoke-static {v0, v4}, Lagq;->a(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lagv;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lagv;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 203
    const v3, 0x102000f

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lyc;->colorControlNormal:I

    invoke-static {v0, v4}, Lagq;->a(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lagv;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lagv;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    const v3, 0x102000d

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Lyc;->colorControlActivated:I

    invoke-static {v0, v3}, Lagq;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v3, Lagv;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v0, v3}, Lagv;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 208
    :cond_5
    invoke-virtual {p0, p1, v2}, Lagv;->a(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 209
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    move-object v2, v1

    .line 212
    goto :goto_1
.end method

.method public final a(ILandroid/graphics/drawable/Drawable;)Z
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 220
    iget-object v0, p0, Lagv;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 221
    if-nez v0, :cond_0

    move v0, v1

    .line 258
    :goto_0
    return v0

    .line 223
    :cond_0
    sget-object v6, Lagv;->b:Landroid/graphics/PorterDuff$Mode;

    .line 228
    sget-object v3, Lagv;->e:[I

    invoke-static {v3, p1}, Lagv;->a([II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    sget v3, Lyc;->colorControlNormal:I

    move v5, v3

    move-object v7, v6

    move v6, v2

    move v3, v4

    .line 244
    :goto_1
    if-eqz v6, :cond_5

    .line 245
    invoke-static {v0, v5}, Lagq;->a(Landroid/content/Context;I)I

    move-result v0

    .line 246
    invoke-static {v0, v7}, Lagv;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 248
    if-eq v3, v4, :cond_1

    .line 249
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    move v0, v2

    .line 256
    goto :goto_0

    .line 231
    :cond_2
    sget-object v3, Lagv;->g:[I

    invoke-static {v3, p1}, Lagv;->a([II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    sget v3, Lyc;->colorControlActivated:I

    move v5, v3

    move-object v7, v6

    move v6, v2

    move v3, v4

    .line 233
    goto :goto_1

    .line 234
    :cond_3
    sget-object v3, Lagv;->h:[I

    invoke-static {v3, p1}, Lagv;->a([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    const v3, 0x1010031

    .line 237
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v6, v2

    move-object v7, v5

    move v5, v3

    move v3, v4

    goto :goto_1

    .line 238
    :cond_4
    sget v3, Lyg;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v3, :cond_6

    .line 239
    const v5, 0x1010030

    .line 241
    const v3, 0x42233333    # 40.8f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object v7, v6

    move v6, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 258
    goto :goto_0

    :cond_6
    move v3, v4

    move v5, v1

    move-object v7, v6

    move v6, v1

    goto :goto_1
.end method

.method final b(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    sget v1, Lyg;->abc_switch_thumb_material:I

    if-ne p1, v1, :cond_0

    .line 284
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 287
    :cond_0
    return-object v0
.end method

.method public final c(I)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lagv;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 292
    if-nez v0, :cond_1

    move-object v0, v1

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    iget-object v2, p0, Lagv;->l:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lagv;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 297
    :cond_2
    if-nez v1, :cond_10

    .line 299
    sget v2, Lyg;->abc_edit_text_material:I

    if-ne p1, v2, :cond_4

    .line 300
    invoke-direct {p0, v0}, Lagv;->f(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 323
    :goto_1
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lagv;->l:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    .line 326
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lagv;->l:Landroid/util/SparseArray;

    .line 329
    :cond_3
    iget-object v1, p0, Lagv;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 301
    :cond_4
    sget v2, Lyg;->abc_switch_track_mtrl_alpha:I

    if-ne p1, v2, :cond_5

    .line 302
    invoke-direct {p0, v0}, Lagv;->d(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 303
    :cond_5
    sget v2, Lyg;->abc_switch_thumb_material:I

    if-ne p1, v2, :cond_6

    .line 304
    invoke-direct {p0, v0}, Lagv;->e(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 305
    :cond_6
    sget v2, Lyg;->abc_btn_default_mtrl_shape:I

    if-eq p1, v2, :cond_7

    sget v2, Lyg;->abc_btn_borderless_material:I

    if-ne p1, v2, :cond_8

    .line 307
    :cond_7
    invoke-direct {p0, v0}, Lagv;->g(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 308
    :cond_8
    sget v2, Lyg;->abc_btn_colored_material:I

    if-ne p1, v2, :cond_9

    .line 309
    invoke-direct {p0, v0}, Lagv;->h(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 310
    :cond_9
    sget v2, Lyg;->abc_spinner_mtrl_am_alpha:I

    if-eq p1, v2, :cond_a

    sget v2, Lyg;->abc_spinner_textfield_background_material:I

    if-ne p1, v2, :cond_b

    .line 312
    :cond_a
    invoke-direct {p0, v0}, Lagv;->i(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 313
    :cond_b
    sget-object v2, Lagv;->f:[I

    invoke-static {v2, p1}, Lagv;->a([II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 314
    sget v1, Lyc;->colorControlNormal:I

    invoke-static {v0, v1}, Lagq;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 315
    :cond_c
    sget-object v2, Lagv;->i:[I

    invoke-static {v2, p1}, Lagv;->a([II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 316
    invoke-direct {p0, v0}, Lagv;->b(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 317
    :cond_d
    sget-object v2, Lagv;->j:[I

    invoke-static {v2, p1}, Lagv;->a([II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 318
    invoke-direct {p0, v0}, Lagv;->c(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 319
    :cond_e
    sget v2, Lyg;->abc_seekbar_thumb_material:I

    if-ne p1, v2, :cond_f

    .line 320
    invoke-direct {p0, v0}, Lagv;->j(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    :cond_f
    move-object v0, v1

    goto :goto_1

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method

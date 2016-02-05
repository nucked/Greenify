.class public final Lzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkp;


# static fields
.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Lzp;

.field private m:Laak;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:Lmt;

.field private t:Lnw;

.field private u:Z

.field private v:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Lzp;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Lzt;->k:I

    .line 76
    const/16 v0, 0x10

    iput v0, p0, Lzt;->p:I

    .line 84
    iput v1, p0, Lzt;->q:I

    .line 89
    iput-boolean v1, p0, Lzt;->u:Z

    .line 133
    iput-object p1, p0, Lzt;->l:Lzp;

    .line 134
    iput p3, p0, Lzt;->a:I

    .line 135
    iput p2, p0, Lzt;->b:I

    .line 136
    iput p4, p0, Lzt;->c:I

    .line 137
    iput p5, p0, Lzt;->d:I

    .line 138
    iput-object p6, p0, Lzt;->e:Ljava/lang/CharSequence;

    .line 139
    iput p7, p0, Lzt;->q:I

    .line 140
    return-void
.end method

.method static synthetic a(Lzt;)Lzp;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lzt;->l:Lzp;

    return-object v0
.end method


# virtual methods
.method public a(Laah;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-interface {p1}, Laah;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzt;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lzt;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lkp;
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0}, Lzp;->e()Landroid/content/Context;

    move-result-object v0

    .line 619
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 620
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzt;->a(Landroid/view/View;)Lkp;

    .line 621
    return-object p0
.end method

.method public a(Landroid/view/View;)Lkp;
    .locals 2

    .prologue
    .line 607
    iput-object p1, p0, Lzt;->r:Landroid/view/View;

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lzt;->s:Lmt;

    .line 609
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lzt;->a:I

    if-lez v0, :cond_0

    .line 610
    iget v0, p0, Lzt;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 612
    :cond_0
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, p0}, Lzp;->b(Lzt;)V

    .line 613
    return-object p0
.end method

.method public a(Lmt;)Lkp;
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lzt;->s:Lmt;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lzt;->s:Lmt;

    invoke-virtual {v0}, Lmt;->f()V

    .line 658
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lzt;->r:Landroid/view/View;

    .line 659
    iput-object p1, p0, Lzt;->s:Lmt;

    .line 660
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 661
    iget-object v0, p0, Lzt;->s:Lmt;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lzt;->s:Lmt;

    new-instance v1, Lzu;

    invoke-direct {v1, p0}, Lzu;-><init>(Lzt;)V

    invoke-virtual {v0, v1}, Lmt;->a(Lmv;)V

    .line 669
    :cond_1
    return-object p0
.end method

.method public a(Lnw;)Lkp;
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lzt;->t:Lnw;

    .line 714
    return-object p0
.end method

.method public a()Lmt;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lzt;->s:Lmt;

    return-object v0
.end method

.method public a(Laak;)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lzt;->m:Laak;

    .line 346
    invoke-virtual {p0}, Lzt;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Laak;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 347
    return-void
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lzt;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 545
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lzt;->p:I

    .line 468
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lkp;
    .locals 0

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lzt;->setShowAsAction(I)V

    .line 675
    return-object p0
.end method

.method b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 493
    iget v2, p0, Lzt;->p:I

    .line 494
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Lzt;->p:I

    .line 495
    iget v0, p0, Lzt;->p:I

    if-eq v2, v0, :cond_0

    .line 496
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 498
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 494
    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 148
    iget-object v1, p0, Lzt;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzt;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    iget-object v1, p0, Lzt;->l:Lzp;

    iget-object v2, p0, Lzt;->l:Lzp;

    invoke-virtual {v2}, Lzp;->p()Lzp;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lzp;->a(Lzp;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lzt;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lzt;->n:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v1, p0, Lzt;->g:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 163
    :try_start_0
    iget-object v1, p0, Lzt;->l:Lzp;

    invoke-virtual {v1}, Lzp;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzt;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_3
    iget-object v1, p0, Lzt;->s:Lmt;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lzt;->s:Lmt;

    invoke-virtual {v1}, Lmt;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lzt;->d:I

    return v0
.end method

.method c(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 517
    iget v2, p0, Lzt;->p:I

    .line 518
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Lzt;->p:I

    .line 519
    iget v0, p0, Lzt;->p:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 518
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 694
    iget v1, p0, Lzt;->q:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 697
    :cond_1
    iget-object v1, p0, Lzt;->r:Landroid/view/View;

    if-nez v1, :cond_2

    .line 699
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    :cond_2
    iget-object v1, p0, Lzt;->t:Lnw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lzt;->t:Lnw;

    invoke-interface {v1, p0}, Lnw;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    :cond_3
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, p0}, Lzp;->d(Lzt;)Z

    move-result v0

    goto :goto_0
.end method

.method public d()C
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0}, Lzp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lzt;->i:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lzt;->h:C

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    iget v0, p0, Lzt;->p:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lzt;->p:I

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lzt;->p:I

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    invoke-virtual {p0}, Lzt;->d()C

    move-result v0

    .line 296
    if-nez v0, :cond_0

    .line 297
    const-string v0, ""

    .line 320
    :goto_0
    return-object v0

    .line 300
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lzt;->w:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    sparse-switch v0, :sswitch_data_0

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :sswitch_0
    sget-object v0, Lzt;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 308
    :sswitch_1
    sget-object v0, Lzt;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :sswitch_2
    sget-object v0, Lzt;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 728
    iput-boolean p1, p0, Lzt;->u:Z

    .line 729
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 730
    return-void
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0}, Lzt;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 684
    :cond_1
    iget-object v1, p0, Lzt;->t:Lnw;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzt;->t:Lnw;

    invoke-interface {v1, p0}, Lnw;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    :cond_2
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, p0}, Lzp;->c(Lzt;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0}, Lzp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzt;->d()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lzt;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lzt;->r:Landroid/view/View;

    .line 632
    :goto_0
    return-object v0

    .line 628
    :cond_0
    iget-object v0, p0, Lzt;->s:Lmt;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lzt;->s:Lmt;

    invoke-virtual {v0, p0}, Lmt;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzt;->r:Landroid/view/View;

    .line 630
    iget-object v0, p0, Lzt;->r:Landroid/view/View;

    goto :goto_0

    .line 632
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 237
    iget-char v0, p0, Lzt;->i:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lzt;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lzt;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lzt;->j:Landroid/graphics/drawable/Drawable;

    .line 427
    :goto_0
    return-object v0

    .line 420
    :cond_0
    iget v0, p0, Lzt;->k:I

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0}, Lzp;->e()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lzt;->k:I

    invoke-static {v0, v1}, Lagv;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 422
    const/4 v1, 0x0

    iput v1, p0, Lzt;->k:I

    .line 423
    iput-object v0, p0, Lzt;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lzt;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lzt;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lzt;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 255
    iget-char v0, p0, Lzt;->h:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lzt;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lzt;->m:Laak;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lzt;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lzt;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzt;->f:Ljava/lang/CharSequence;

    .line 389
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 393
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_0
    return-object v0

    .line 387
    :cond_1
    iget-object v0, p0, Lzt;->e:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, p0}, Lzp;->b(Lzt;)V

    .line 554
    return-void
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lzt;->m:Laak;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0}, Lzp;->q()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lzt;->u:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 452
    iget v1, p0, Lzt;->p:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    iget-object v2, p0, Lzt;->s:Lmt;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lzt;->s:Lmt;

    invoke-virtual {v2}, Lmt;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    iget v2, p0, Lzt;->p:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lzt;->s:Lmt;

    invoke-virtual {v2}, Lmt;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 503
    goto :goto_0

    .line 505
    :cond_2
    iget v2, p0, Lzt;->p:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 568
    iget v1, p0, Lzt;->q:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Lzt;->q:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 584
    iget v0, p0, Lzt;->q:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 718
    iget v1, p0, Lzt;->q:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Lzt;->r:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lzt;->s:Lmt;

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lzt;->s:Lmt;

    invoke-virtual {v1, p0}, Lmt;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lzt;->r:Landroid/view/View;

    .line 722
    :cond_0
    iget-object v1, p0, Lzt;->r:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 724
    :cond_1
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 638
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lzt;->a(I)Lkp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lzt;->a(Landroid/view/View;)Lkp;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 242
    iget-char v0, p0, Lzt;->i:C

    if-ne v0, p1, :cond_0

    .line 250
    :goto_0
    return-object p0

    .line 246
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lzt;->i:C

    .line 248
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 457
    iget v2, p0, Lzt;->p:I

    .line 458
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Lzt;->p:I

    .line 459
    iget v0, p0, Lzt;->p:I

    if-eq v2, v0, :cond_0

    .line 460
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 463
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 458
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, p0}, Lzp;->a(Landroid/view/MenuItem;)V

    .line 489
    :goto_0
    return-object p0

    .line 486
    :cond_0
    invoke-virtual {p0, p1}, Lzt;->b(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget v0, p0, Lzt;->p:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lzt;->p:I

    .line 190
    :goto_0
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 192
    return-object p0

    .line 187
    :cond_0
    iget v0, p0, Lzt;->p:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lzt;->p:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lzt;->j:Landroid/graphics/drawable/Drawable;

    .line 442
    iput p1, p0, Lzt;->k:I

    .line 445
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 447
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 432
    iput v1, p0, Lzt;->k:I

    .line 433
    iput-object p1, p0, Lzt;->j:Landroid/graphics/drawable/Drawable;

    .line 434
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 436
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lzt;->g:Landroid/content/Intent;

    .line 223
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 260
    iget-char v0, p0, Lzt;->h:C

    if-ne v0, p1, :cond_0

    .line 268
    :goto_0
    return-object p0

    .line 264
    :cond_0
    iput-char p1, p0, Lzt;->h:C

    .line 266
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 739
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lzt;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 535
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 273
    iput-char p1, p0, Lzt;->h:C

    .line 274
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lzt;->i:C

    .line 276
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 278
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    .prologue
    .line 589
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :pswitch_0
    iput p1, p0, Lzt;->q:I

    .line 602
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, p0}, Lzp;->b(Lzt;)V

    .line 603
    return-void

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lzt;->b(I)Lkp;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0}, Lzp;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzt;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 369
    iput-object p1, p0, Lzt;->e:Ljava/lang/CharSequence;

    .line 371
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 373
    iget-object v0, p0, Lzt;->m:Laak;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lzt;->m:Laak;

    invoke-virtual {v0, p1}, Laak;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 377
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 402
    iput-object p1, p0, Lzt;->f:Ljava/lang/CharSequence;

    .line 405
    if-nez p1, :cond_0

    .line 406
    iget-object v0, p0, Lzt;->e:Ljava/lang/CharSequence;

    .line 409
    :cond_0
    iget-object v0, p0, Lzt;->l:Lzp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->b(Z)V

    .line 411
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lzt;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzt;->l:Lzp;

    invoke-virtual {v0, p0}, Lzp;->a(Lzt;)V

    .line 529
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lzt;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzt;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lxb;
.super Lwu;
.source "SourceFile"

# interfaces
.implements Lnl;
.implements Lzq;


# instance fields
.field private A:Z

.field private B:Z

.field private C:[Lxn;

.field private D:Lxn;

.field private E:Z

.field private F:Z

.field private G:I

.field private final H:Ljava/lang/Runnable;

.field private I:Z

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/graphics/Rect;

.field private L:Lxq;

.field m:Lyu;

.field n:Landroid/support/v7/widget/ActionBarContextView;

.field o:Landroid/widget/PopupWindow;

.field p:Ljava/lang/Runnable;

.field q:Lqj;

.field private r:Ladd;

.field private s:Lxj;

.field private t:Lxo;

.field private u:Z

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/view/ViewGroup;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lws;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lwu;-><init>(Landroid/content/Context;Landroid/view/Window;Lws;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lxb;->q:Lqj;

    .line 122
    new-instance v0, Lxc;

    invoke-direct {v0, p0}, Lxc;-><init>(Lxb;)V

    iput-object v0, p0, Lxb;->H:Ljava/lang/Runnable;

    .line 145
    return-void
.end method

.method static synthetic a(Lxb;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lxb;->G:I

    return v0
.end method

.method private a(IZ)Lxn;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1482
    iget-object v0, p0, Lxb;->C:[Lxn;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1483
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lxn;

    .line 1484
    if-eqz v0, :cond_1

    .line 1485
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1487
    :cond_1
    iput-object v1, p0, Lxb;->C:[Lxn;

    move-object v0, v1

    .line 1490
    :cond_2
    aget-object v1, v0, p1

    .line 1491
    if-nez v1, :cond_3

    .line 1492
    new-instance v1, Lxn;

    invoke-direct {v1, p1}, Lxn;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1494
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/Menu;)Lxn;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1469
    iget-object v3, p0, Lxb;->C:[Lxn;

    .line 1470
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1471
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1472
    aget-object v1, v3, v2

    .line 1473
    if-eqz v1, :cond_1

    iget-object v4, v1, Lxn;->j:Lzp;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1477
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1470
    goto :goto_0

    .line 1471
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1477
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lxb;Landroid/view/Menu;)Lxn;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lxb;->a(Landroid/view/Menu;)Lxn;

    move-result-object v0

    return-object v0
.end method

.method private a(ILxn;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1442
    if-nez p3, :cond_1

    .line 1444
    if-nez p2, :cond_0

    .line 1445
    if-ltz p1, :cond_0

    iget-object v0, p0, Lxb;->C:[Lxn;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1446
    iget-object v0, p0, Lxb;->C:[Lxn;

    aget-object p2, v0, p1

    .line 1450
    :cond_0
    if-eqz p2, :cond_1

    .line 1452
    iget-object p3, p2, Lxn;->j:Lzp;

    .line 1457
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Lxn;->o:Z

    if-nez v0, :cond_3

    .line 1466
    :cond_2
    :goto_0
    return-void

    .line 1460
    :cond_3
    invoke-virtual {p0}, Lxb;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1464
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method static synthetic a(Lxb;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lxb;->e(I)V

    return-void
.end method

.method static synthetic a(Lxb;ILxn;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lxb;->a(ILxn;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Lxb;Lxn;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lxb;->a(Lxn;Z)V

    return-void
.end method

.method static synthetic a(Lxb;Lzp;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lxb;->b(Lzp;)V

    return-void
.end method

.method private a(Lxn;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 1009
    iget-boolean v0, p1, Lxn;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxb;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget v0, p1, Lxn;->a:I

    if-nez v0, :cond_2

    .line 1016
    iget-object v4, p0, Lxb;->a:Landroid/content/Context;

    .line 1017
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1018
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 1020
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 1023
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 1028
    :cond_2
    invoke-virtual {p0}, Lxb;->m()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_5

    iget v4, p1, Lxn;->a:I

    iget-object v5, p1, Lxn;->j:Lzp;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1031
    invoke-direct {p0, p1, v9}, Lxb;->a(Lxn;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1018
    goto :goto_1

    :cond_4
    move v4, v3

    .line 1020
    goto :goto_2

    .line 1035
    :cond_5
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1036
    if-eqz v8, :cond_0

    .line 1041
    invoke-direct {p0, p1, p2}, Lxb;->b(Lxn;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p1, Lxn;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lxn;->q:Z

    if-eqz v0, :cond_c

    .line 1047
    :cond_6
    iget-object v0, p1, Lxn;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 1049
    invoke-direct {p0, p1}, Lxb;->a(Lxn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lxn;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1057
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lxb;->c(Lxn;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lxn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p1, Lxn;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1062
    if-nez v0, :cond_e

    .line 1063
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1066
    :goto_4
    iget v0, p1, Lxn;->b:I

    .line 1067
    iget-object v4, p1, Lxn;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1069
    iget-object v0, p1, Lxn;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 1071
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Lxn;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1073
    :cond_8
    iget-object v0, p1, Lxn;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Lxn;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    iget-object v0, p1, Lxn;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1080
    iget-object v0, p1, Lxn;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    .line 1091
    :cond_a
    :goto_5
    iput-boolean v3, p1, Lxn;->n:Z

    .line 1093
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Lxn;->d:I

    iget v4, p1, Lxn;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1100
    iget v1, p1, Lxn;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1101
    iget v1, p1, Lxn;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1103
    iget-object v1, p1, Lxn;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    iput-boolean v9, p1, Lxn;->o:Z

    goto/16 :goto_0

    .line 1051
    :cond_b
    iget-boolean v0, p1, Lxn;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lxn;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1053
    iget-object v0, p1, Lxn;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 1082
    :cond_c
    iget-object v0, p1, Lxn;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1085
    iget-object v0, p1, Lxn;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto :goto_4
.end method

.method private a(Lxn;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1345
    if-eqz p2, :cond_1

    iget v0, p1, Lxn;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1347
    iget-object v0, p1, Lxn;->j:Lzp;

    invoke-direct {p0, v0}, Lxb;->b(Lzp;)V

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1352
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lxn;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lxn;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1353
    iget-object v1, p1, Lxn;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1355
    if-eqz p2, :cond_2

    .line 1356
    iget v0, p1, Lxn;->a:I

    invoke-direct {p0, v0, p1, v3}, Lxb;->a(ILxn;Landroid/view/Menu;)V

    .line 1360
    :cond_2
    iput-boolean v2, p1, Lxn;->m:Z

    .line 1361
    iput-boolean v2, p1, Lxn;->n:Z

    .line 1362
    iput-boolean v2, p1, Lxn;->o:Z

    .line 1365
    iput-object v3, p1, Lxn;->h:Landroid/view/View;

    .line 1369
    const/4 v0, 0x1

    iput-boolean v0, p1, Lxn;->q:Z

    .line 1371
    iget-object v0, p0, Lxb;->D:Lxn;

    if-ne v0, p1, :cond_0

    .line 1372
    iput-object v3, p0, Lxb;->D:Lxn;

    goto :goto_0
.end method

.method private a(Lzp;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1115
    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lpu;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lxb;->m()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lxb;->r:Ladd;

    invoke-interface {v1}, Ladd;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 1122
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lxb;->l()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1124
    iget-boolean v1, p0, Lxb;->F:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lxb;->G:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1126
    iget-object v1, p0, Lxb;->v:Landroid/view/ViewGroup;

    iget-object v2, p0, Lxb;->H:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1127
    iget-object v1, p0, Lxb;->H:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1130
    :cond_2
    invoke-direct {p0, v4, v3}, Lxb;->a(IZ)Lxn;

    move-result-object v1

    .line 1134
    iget-object v2, v1, Lxn;->j:Lzp;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lxn;->r:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lxn;->i:Landroid/view/View;

    iget-object v3, v1, Lxn;->j:Lzp;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1136
    iget-object v1, v1, Lxn;->j:Lzp;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1137
    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->g()Z

    .line 1156
    :cond_3
    :goto_0
    return-void

    .line 1141
    :cond_4
    iget-object v1, p0, Lxb;->r:Ladd;

    invoke-interface {v1}, Ladd;->h()Z

    .line 1142
    invoke-virtual {p0}, Lxb;->l()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1143
    invoke-direct {p0, v4, v3}, Lxb;->a(IZ)Lxn;

    move-result-object v1

    .line 1144
    iget-object v1, v1, Lxn;->j:Lzp;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1150
    :cond_5
    invoke-direct {p0, v4, v3}, Lxb;->a(IZ)Lxn;

    move-result-object v0

    .line 1152
    iput-boolean v3, v0, Lxn;->q:Z

    .line 1153
    invoke-direct {p0, v0, v4}, Lxb;->a(Lxn;Z)V

    .line 1155
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lxb;->a(Lxn;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 945
    if-nez p1, :cond_3

    move v0, v2

    .line 962
    :goto_0
    return v0

    .line 964
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 950
    :goto_1
    if-nez v1, :cond_1

    .line 955
    const/4 v0, 0x1

    goto :goto_0

    .line 956
    :cond_1
    iget-object v0, p0, Lxb;->v:Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lou;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v0, v2

    .line 962
    goto :goto_0

    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method static synthetic a(Lxb;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lxb;->F:Z

    return p1
.end method

.method private a(Lxn;)Z
    .locals 2

    .prologue
    .line 1108
    invoke-virtual {p0}, Lxb;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lxn;->a(Landroid/content/Context;)V

    .line 1109
    new-instance v0, Lxm;

    iget-object v1, p1, Lxn;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lxm;-><init>(Lxb;Landroid/content/Context;)V

    iput-object v0, p1, Lxn;->g:Landroid/view/ViewGroup;

    .line 1110
    const/16 v0, 0x51

    iput v0, p1, Lxn;->c:I

    .line 1111
    const/4 v0, 0x1

    return v0
.end method

.method private a(Lxn;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1499
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1519
    :cond_0
    :goto_0
    return v0

    .line 1507
    :cond_1
    iget-boolean v1, p1, Lxn;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Lxb;->b(Lxn;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lxn;->j:Lzp;

    if-eqz v1, :cond_3

    .line 1509
    iget-object v0, p1, Lxn;->j:Lzp;

    invoke-virtual {v0, p2, p3, p4}, Lzp;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1512
    :cond_3
    if-eqz v0, :cond_0

    .line 1514
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lxb;->r:Ladd;

    if-nez v1, :cond_0

    .line 1515
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lxb;->a(Lxn;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lxb;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lxb;->G:I

    return p1
.end method

.method static synthetic b(Lxb;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lxb;->u()V

    return-void
.end method

.method private b(Lzp;)V
    .locals 2

    .prologue
    .line 1327
    iget-boolean v0, p0, Lxb;->B:Z

    if-eqz v0, :cond_0

    .line 1338
    :goto_0
    return-void

    .line 1331
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxb;->B:Z

    .line 1332
    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->j()V

    .line 1333
    invoke-virtual {p0}, Lxb;->m()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1334
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lxb;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1335
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1337
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxb;->B:Z

    goto :goto_0
.end method

.method private b(Lxn;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1159
    iget-object v1, p0, Lxb;->a:Landroid/content/Context;

    .line 1162
    iget v0, p1, Lxn;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Lxn;->a:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_4

    .line 1164
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1165
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1166
    sget v0, Lyc;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1168
    const/4 v0, 0x0

    .line 1169
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 1170
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1171
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1172
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1173
    sget v4, Lyc;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1180
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1181
    if-nez v0, :cond_1

    .line 1182
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1183
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1185
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 1188
    if-eqz v2, :cond_4

    .line 1189
    new-instance v0, Lyx;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lyx;-><init>(Landroid/content/Context;I)V

    .line 1190
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1194
    :goto_1
    new-instance v1, Lzp;

    invoke-direct {v1, v0}, Lzp;-><init>(Landroid/content/Context;)V

    .line 1195
    invoke-virtual {v1, p0}, Lzp;->a(Lzq;)V

    .line 1196
    invoke-virtual {p1, v1}, Lxn;->a(Lzp;)V

    .line 1198
    return v5

    .line 1176
    :cond_3
    sget v4, Lyc;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Lxn;Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1223
    invoke-virtual {p0}, Lxb;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return v2

    .line 1228
    :cond_1
    iget-boolean v0, p1, Lxn;->m:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1229
    goto :goto_0

    .line 1232
    :cond_2
    iget-object v0, p0, Lxb;->D:Lxn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lxb;->D:Lxn;

    if-eq v0, p1, :cond_3

    .line 1234
    iget-object v0, p0, Lxb;->D:Lxn;

    invoke-direct {p0, v0, v2}, Lxb;->a(Lxn;Z)V

    .line 1237
    :cond_3
    invoke-virtual {p0}, Lxb;->m()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1239
    if-eqz v3, :cond_4

    .line 1240
    iget v0, p1, Lxn;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lxn;->i:Landroid/view/View;

    .line 1243
    :cond_4
    iget v0, p1, Lxn;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Lxn;->a:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_c

    :cond_5
    move v0, v1

    .line 1246
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Lxb;->r:Ladd;

    if-eqz v4, :cond_6

    .line 1249
    iget-object v4, p0, Lxb;->r:Ladd;

    invoke-interface {v4}, Ladd;->i()V

    .line 1252
    :cond_6
    iget-object v4, p1, Lxn;->i:Landroid/view/View;

    if-nez v4, :cond_12

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lxb;->i()Lvx;

    move-result-object v4

    instance-of v4, v4, Lxs;

    if-nez v4, :cond_12

    .line 1256
    :cond_7
    iget-object v4, p1, Lxn;->j:Lzp;

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Lxn;->r:Z

    if-eqz v4, :cond_e

    .line 1257
    :cond_8
    iget-object v4, p1, Lxn;->j:Lzp;

    if-nez v4, :cond_9

    .line 1258
    invoke-direct {p0, p1}, Lxb;->b(Lxn;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lxn;->j:Lzp;

    if-eqz v4, :cond_0

    .line 1263
    :cond_9
    if-eqz v0, :cond_b

    iget-object v4, p0, Lxb;->r:Ladd;

    if-eqz v4, :cond_b

    .line 1264
    iget-object v4, p0, Lxb;->s:Lxj;

    if-nez v4, :cond_a

    .line 1265
    new-instance v4, Lxj;

    invoke-direct {v4, p0, v7}, Lxj;-><init>(Lxb;Lxc;)V

    iput-object v4, p0, Lxb;->s:Lxj;

    .line 1267
    :cond_a
    iget-object v4, p0, Lxb;->r:Ladd;

    iget-object v5, p1, Lxn;->j:Lzp;

    iget-object v6, p0, Lxb;->s:Lxj;

    invoke-interface {v4, v5, v6}, Ladd;->a(Landroid/view/Menu;Laaf;)V

    .line 1272
    :cond_b
    iget-object v4, p1, Lxn;->j:Lzp;

    invoke-virtual {v4}, Lzp;->g()V

    .line 1273
    iget v4, p1, Lxn;->a:I

    iget-object v5, p1, Lxn;->j:Lzp;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1275
    invoke-virtual {p1, v7}, Lxn;->a(Lzp;)V

    .line 1277
    if-eqz v0, :cond_0

    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lxb;->r:Ladd;

    iget-object v1, p0, Lxb;->s:Lxj;

    invoke-interface {v0, v7, v1}, Ladd;->a(Landroid/view/Menu;Laaf;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1243
    goto :goto_1

    .line 1285
    :cond_d
    iput-boolean v2, p1, Lxn;->r:Z

    .line 1290
    :cond_e
    iget-object v4, p1, Lxn;->j:Lzp;

    invoke-virtual {v4}, Lzp;->g()V

    .line 1294
    iget-object v4, p1, Lxn;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 1295
    iget-object v4, p1, Lxn;->j:Lzp;

    iget-object v5, p1, Lxn;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lzp;->b(Landroid/os/Bundle;)V

    .line 1296
    iput-object v7, p1, Lxn;->s:Landroid/os/Bundle;

    .line 1300
    :cond_f
    iget-object v4, p1, Lxn;->i:Landroid/view/View;

    iget-object v5, p1, Lxn;->j:Lzp;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1301
    if-eqz v0, :cond_10

    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_10

    .line 1304
    iget-object v0, p0, Lxb;->r:Ladd;

    iget-object v1, p0, Lxb;->s:Lxj;

    invoke-interface {v0, v7, v1}, Ladd;->a(Landroid/view/Menu;Laaf;)V

    .line 1306
    :cond_10
    iget-object v0, p1, Lxn;->j:Lzp;

    invoke-virtual {v0}, Lzp;->h()V

    goto/16 :goto_0

    .line 1311
    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1313
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_14

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Lxn;->p:Z

    .line 1314
    iget-object v0, p1, Lxn;->j:Lzp;

    iget-boolean v3, p1, Lxn;->p:Z

    invoke-virtual {v0, v3}, Lzp;->setQwertyMode(Z)V

    .line 1315
    iget-object v0, p1, Lxn;->j:Lzp;

    invoke-virtual {v0}, Lzp;->h()V

    .line 1319
    :cond_12
    iput-boolean v1, p1, Lxn;->m:Z

    .line 1320
    iput-boolean v2, p1, Lxn;->n:Z

    .line 1321
    iput-object p1, p0, Lxb;->D:Lxn;

    move v2, v1

    .line 1323
    goto/16 :goto_0

    .line 1311
    :cond_13
    const/4 v0, -0x1

    goto :goto_2

    :cond_14
    move v0, v2

    .line 1313
    goto :goto_3
.end method

.method static synthetic c(Lxb;I)I
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lxb;->f(I)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1341
    invoke-direct {p0, p1, v1}, Lxb;->a(IZ)Lxn;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lxb;->a(Lxn;Z)V

    .line 1342
    return-void
.end method

.method static synthetic c(Lxb;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lxb;->s()V

    return-void
.end method

.method private c(Lxn;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1202
    iget-object v0, p1, Lxn;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p1, Lxn;->i:Landroid/view/View;

    iput-object v0, p1, Lxn;->h:Landroid/view/View;

    .line 1219
    :goto_0
    return v1

    .line 1207
    :cond_0
    iget-object v0, p1, Lxn;->j:Lzp;

    if-nez v0, :cond_1

    move v1, v2

    .line 1208
    goto :goto_0

    .line 1211
    :cond_1
    iget-object v0, p0, Lxb;->t:Lxo;

    if-nez v0, :cond_2

    .line 1212
    new-instance v0, Lxo;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lxo;-><init>(Lxb;Lxc;)V

    iput-object v0, p0, Lxb;->t:Lxo;

    .line 1215
    :cond_2
    iget-object v0, p0, Lxb;->t:Lxo;

    invoke-virtual {p1, v0}, Lxn;->a(Laaf;)Laag;

    move-result-object v0

    .line 1217
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Lxn;->h:Landroid/view/View;

    .line 1219
    iget-object v0, p1, Lxn;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1523
    iget v0, p0, Lxb;->G:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lxb;->G:I

    .line 1525
    iget-boolean v0, p0, Lxb;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lxb;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lxb;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Lxb;->H:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lou;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1527
    iput-boolean v2, p0, Lxb;->F:Z

    .line 1529
    :cond_0
    return-void
.end method

.method static synthetic d(Lxb;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lxb;->c(I)V

    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1377
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lxb;->a(IZ)Lxn;

    move-result-object v0

    .line 1379
    iget-boolean v1, v0, Lxn;->o:Z

    if-nez v1, :cond_0

    .line 1380
    invoke-direct {p0, v0, p2}, Lxb;->b(Lxn;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1532
    invoke-direct {p0, p1, v4}, Lxb;->a(IZ)Lxn;

    move-result-object v0

    .line 1534
    iget-object v1, v0, Lxn;->j:Lzp;

    if-eqz v1, :cond_1

    .line 1535
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1536
    iget-object v2, v0, Lxn;->j:Lzp;

    invoke-virtual {v2, v1}, Lzp;->a(Landroid/os/Bundle;)V

    .line 1537
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1538
    iput-object v1, v0, Lxn;->s:Landroid/os/Bundle;

    .line 1541
    :cond_0
    iget-object v1, v0, Lxn;->j:Lzp;

    invoke-virtual {v1}, Lzp;->g()V

    .line 1542
    iget-object v1, v0, Lxn;->j:Lzp;

    invoke-virtual {v1}, Lzp;->clear()V

    .line 1544
    :cond_1
    iput-boolean v4, v0, Lxn;->r:Z

    .line 1545
    iput-boolean v4, v0, Lxn;->q:Z

    .line 1548
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_3

    .line 1550
    invoke-direct {p0, v3, v3}, Lxb;->a(IZ)Lxn;

    move-result-object v0

    .line 1551
    if-eqz v0, :cond_3

    .line 1552
    iput-boolean v3, v0, Lxn;->m:Z

    .line 1553
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lxb;->b(Lxn;Landroid/view/KeyEvent;)Z

    .line 1556
    :cond_3
    return-void
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1388
    iget-object v0, p0, Lxb;->m:Lyu;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1437
    :goto_0
    return v0

    .line 1393
    :cond_0
    invoke-direct {p0, p1, v2}, Lxb;->a(IZ)Lxn;

    move-result-object v3

    .line 1394
    if-nez p1, :cond_3

    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lpu;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1397
    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1398
    invoke-virtual {p0}, Lxb;->l()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p2}, Lxb;->b(Lxn;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1399
    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->g()Z

    move-result v2

    .line 1428
    :goto_1
    if-eqz v2, :cond_1

    .line 1429
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1431
    if-eqz v0, :cond_6

    .line 1432
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    :goto_2
    move v0, v2

    .line 1437
    goto :goto_0

    .line 1402
    :cond_2
    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->h()Z

    move-result v2

    goto :goto_1

    .line 1405
    :cond_3
    iget-boolean v0, v3, Lxn;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Lxn;->n:Z

    if-eqz v0, :cond_5

    .line 1408
    :cond_4
    iget-boolean v0, v3, Lxn;->o:Z

    .line 1410
    invoke-direct {p0, v3, v2}, Lxb;->a(Lxn;Z)V

    move v2, v0

    goto :goto_1

    .line 1411
    :cond_5
    iget-boolean v0, v3, Lxn;->m:Z

    if-eqz v0, :cond_7

    .line 1413
    iget-boolean v0, v3, Lxn;->r:Z

    if-eqz v0, :cond_8

    .line 1416
    iput-boolean v1, v3, Lxn;->m:Z

    .line 1417
    invoke-direct {p0, v3, p2}, Lxb;->b(Lxn;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1420
    :goto_3
    if-eqz v0, :cond_7

    .line 1422
    invoke-direct {p0, v3, p2}, Lxb;->a(Lxn;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1434
    :cond_6
    const-string v0, "AppCompatDelegate"

    const-string v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private f(I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1565
    .line 1567
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 1568
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1569
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1573
    iget-object v1, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1574
    iget-object v1, p0, Lxb;->J:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1575
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lxb;->J:Landroid/graphics/Rect;

    .line 1576
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lxb;->K:Landroid/graphics/Rect;

    .line 1578
    :cond_0
    iget-object v1, p0, Lxb;->J:Landroid/graphics/Rect;

    .line 1579
    iget-object v4, p0, Lxb;->K:Landroid/graphics/Rect;

    .line 1580
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1582
    iget-object v5, p0, Lxb;->w:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Lahm;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1583
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 1584
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 1586
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1588
    iget-object v1, p0, Lxb;->y:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1589
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lxb;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lxb;->y:Landroid/view/View;

    .line 1590
    iget-object v1, p0, Lxb;->y:Landroid/view/View;

    iget-object v4, p0, Lxb;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lye;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1592
    iget-object v1, p0, Lxb;->w:Landroid/view/ViewGroup;

    iget-object v4, p0, Lxb;->y:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1606
    :goto_1
    iget-object v4, p0, Lxb;->y:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 1612
    :goto_2
    iget-boolean v4, p0, Lxb;->j:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1622
    :goto_3
    if-eqz v3, :cond_2

    .line 1623
    iget-object v3, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 1627
    :goto_4
    iget-object v1, p0, Lxb;->y:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1628
    iget-object v1, p0, Lxb;->y:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1631
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 1583
    goto :goto_0

    .line 1596
    :cond_5
    iget-object v1, p0, Lxb;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1597
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 1598
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1599
    iget-object v4, p0, Lxb;->y:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1606
    goto :goto_2

    .line 1617
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 1619
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 1628
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method private g(I)I
    .locals 2

    .prologue
    .line 1642
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1643
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const/16 p1, 0x6c

    .line 1652
    :cond_0
    :goto_0
    return p1

    .line 1646
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1647
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-boolean v0, p0, Lxb;->u:Z

    if-nez v0, :cond_2

    .line 279
    invoke-direct {p0}, Lxb;->q()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lxb;->w:Landroid/view/ViewGroup;

    .line 282
    invoke-virtual {p0}, Lxb;->n()Ljava/lang/CharSequence;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lxb;->b(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    invoke-direct {p0}, Lxb;->r()V

    .line 289
    iget-object v0, p0, Lxb;->w:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lxb;->a(Landroid/view/ViewGroup;)V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxb;->u:Z

    .line 298
    invoke-direct {p0, v2, v2}, Lxb;->a(IZ)Lxn;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lxb;->l()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Lxn;->j:Lzp;

    if-nez v0, :cond_2

    .line 300
    :cond_1
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lxb;->d(I)V

    .line 303
    :cond_2
    return-void
.end method

.method private q()Landroid/view/ViewGroup;
    .locals 8

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 306
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    sget-object v1, Lym;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 308
    sget v1, Lym;->Theme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    sget v1, Lym;->Theme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    invoke-virtual {p0, v4}, Lxb;->b(I)Z

    .line 320
    :cond_1
    :goto_0
    sget v1, Lym;->Theme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {p0, v6}, Lxb;->b(I)Z

    .line 323
    :cond_2
    sget v1, Lym;->Theme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lxb;->b(I)Z

    .line 326
    :cond_3
    sget v1, Lym;->Theme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lxb;->k:Z

    .line 327
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 333
    iget-boolean v1, p0, Lxb;->l:Z

    if-nez v1, :cond_a

    .line 334
    iget-boolean v1, p0, Lxb;->k:Z

    if-eqz v1, :cond_5

    .line 336
    sget v1, Lyj;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 340
    iput-boolean v5, p0, Lxb;->i:Z

    iput-boolean v5, p0, Lxb;->h:Z

    move-object v2, v0

    .line 421
    :goto_1
    if-nez v2, :cond_d

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lxb;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lxb;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lxb;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lxb;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lxb;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_4
    sget v1, Lym;->Theme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lxb;->b(I)Z

    goto/16 :goto_0

    .line 341
    :cond_5
    iget-boolean v0, p0, Lxb;->h:Z

    if-eqz v0, :cond_11

    .line 347
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 348
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Lyc;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 351
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 352
    new-instance v0, Lyx;

    iget-object v2, p0, Lxb;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Lyx;-><init>(Landroid/content/Context;I)V

    .line 358
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lyj;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 361
    sget v1, Lyh;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ladd;

    iput-object v1, p0, Lxb;->r:Ladd;

    .line 363
    iget-object v1, p0, Lxb;->r:Ladd;

    invoke-virtual {p0}, Lxb;->m()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Ladd;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 368
    iget-boolean v1, p0, Lxb;->i:Z

    if-eqz v1, :cond_6

    .line 369
    iget-object v1, p0, Lxb;->r:Ladd;

    invoke-interface {v1, v6}, Ladd;->a(I)V

    .line 371
    :cond_6
    iget-boolean v1, p0, Lxb;->z:Z

    if-eqz v1, :cond_7

    .line 372
    iget-object v1, p0, Lxb;->r:Ladd;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ladd;->a(I)V

    .line 374
    :cond_7
    iget-boolean v1, p0, Lxb;->A:Z

    if-eqz v1, :cond_8

    .line 375
    iget-object v1, p0, Lxb;->r:Ladd;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ladd;->a(I)V

    :cond_8
    move-object v2, v0

    .line 377
    goto/16 :goto_1

    .line 354
    :cond_9
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    goto :goto_2

    .line 379
    :cond_a
    iget-boolean v1, p0, Lxb;->j:Z

    if-eqz v1, :cond_b

    .line 380
    sget v1, Lyj;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 386
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 389
    new-instance v0, Lxd;

    invoke-direct {v0, p0}, Lxd;-><init>(Lxb;)V

    invoke-static {v1, v0}, Lou;->a(Landroid/view/View;Lom;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 383
    :cond_b
    sget v1, Lyj;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 411
    check-cast v0, Ladr;

    new-instance v2, Lxe;

    invoke-direct {v2, p0}, Lxe;-><init>(Lxb;)V

    invoke-interface {v0, v2}, Ladr;->setOnFitSystemWindowsListener(Lads;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 432
    :cond_d
    iget-object v0, p0, Lxb;->r:Ladd;

    if-nez v0, :cond_e

    .line 433
    sget v0, Lyh;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxb;->x:Landroid/widget/TextView;

    .line 437
    :cond_e
    invoke-static {v2}, Lahm;->b(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lxb;->b:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 440
    sget v1, Lyh;->action_bar_activity_content:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    .line 445
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 446
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 447
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 448
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 452
    :cond_f
    iget-object v4, p0, Lxb;->b:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 456
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 457
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 461
    instance-of v4, v0, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 462
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_10
    new-instance v0, Lxf;

    invoke-direct {v0, p0}, Lxf;-><init>(Lxb;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Ladc;)V

    .line 475
    return-object v2

    :cond_11
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private r()V
    .locals 5

    .prologue
    .line 481
    iget-object v0, p0, Lxb;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 487
    iget-object v1, p0, Lxb;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lxb;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lxb;->v:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lxb;->v:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/ContentFrameLayout;->a(IIII)V

    .line 491
    iget-object v1, p0, Lxb;->a:Landroid/content/Context;

    sget-object v2, Lym;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 492
    sget v2, Lym;->Theme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 493
    sget v2, Lym;->Theme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 495
    sget v2, Lym;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    sget v2, Lym;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 498
    :cond_0
    sget v2, Lym;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    sget v2, Lym;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 501
    :cond_1
    sget v2, Lym;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    sget v2, Lym;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 504
    :cond_2
    sget v2, Lym;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    sget v2, Lym;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 507
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 509
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 510
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lxb;->q:Lqj;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lxb;->q:Lqj;

    invoke-virtual {v0}, Lqj;->b()V

    .line 801
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1635
    iget-boolean v0, p0, Lxb;->u:Z

    if-eqz v0, :cond_0

    .line 1636
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1639
    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1660
    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0}, Ladd;->j()V

    .line 1664
    :cond_0
    iget-object v0, p0, Lxb;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1665
    iget-object v0, p0, Lxb;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Lxb;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1666
    iget-object v0, p0, Lxb;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    :try_start_0
    iget-object v0, p0, Lxb;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lxb;->o:Landroid/widget/PopupWindow;

    .line 1676
    :cond_2
    invoke-direct {p0}, Lxb;->s()V

    .line 1678
    invoke-direct {p0, v2, v2}, Lxb;->a(IZ)Lxn;

    move-result-object v0

    .line 1679
    if-eqz v0, :cond_3

    iget-object v1, v0, Lxn;->j:Lzp;

    if-eqz v1, :cond_3

    .line 1680
    iget-object v0, v0, Lxn;->j:Lzp;

    invoke-virtual {v0}, Lzp;->close()V

    .line 1682
    :cond_3
    return-void

    .line 1669
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 986
    invoke-virtual {p0, p1, p2, p3, p4}, Lxb;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_0

    .line 992
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lxb;->c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lyv;)Lyu;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 669
    invoke-direct {p0}, Lxb;->s()V

    .line 670
    iget-object v0, p0, Lxb;->m:Lyu;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lxb;->m:Lyu;

    invoke-virtual {v0}, Lyu;->c()V

    .line 674
    :cond_0
    new-instance v4, Lxk;

    invoke-direct {v4, p0, p1}, Lxk;-><init>(Lxb;Lyv;)V

    .line 676
    iget-object v0, p0, Lxb;->e:Lws;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lxb;->l()Z

    move-result v0

    if-nez v0, :cond_9

    .line 678
    :try_start_0
    iget-object v0, p0, Lxb;->e:Lws;

    invoke-interface {v0, v4}, Lws;->a(Lyv;)Lyu;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 684
    :goto_0
    if-eqz v0, :cond_3

    .line 685
    iput-object v0, p0, Lxb;->m:Lyu;

    .line 791
    :cond_1
    :goto_1
    iget-object v0, p0, Lxb;->m:Lyu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lxb;->e:Lws;

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lxb;->e:Lws;

    iget-object v1, p0, Lxb;->m:Lyu;

    invoke-interface {v0, v1}, Lws;->a(Lyu;)V

    .line 794
    :cond_2
    iget-object v0, p0, Lxb;->m:Lyu;

    return-object v0

    .line 679
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 687
    :cond_3
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_4

    .line 688
    iget-boolean v0, p0, Lxb;->k:Z

    if-eqz v0, :cond_6

    .line 690
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 691
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 692
    sget v6, Lyc;->actionBarTheme:I

    invoke-virtual {v0, v6, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 695
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_5

    .line 696
    iget-object v6, p0, Lxb;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 697
    invoke-virtual {v6, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 698
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 700
    new-instance v0, Lyx;

    iget-object v7, p0, Lxb;->a:Landroid/content/Context;

    invoke-direct {v0, v7, v2}, Lyx;-><init>(Landroid/content/Context;I)V

    .line 701
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 706
    :goto_2
    new-instance v6, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    .line 707
    new-instance v6, Landroid/widget/PopupWindow;

    sget v7, Lyc;->actionModePopupWindowStyle:I

    invoke-direct {v6, v0, v3, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lxb;->o:Landroid/widget/PopupWindow;

    .line 709
    iget-object v6, p0, Lxb;->o:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lui;->a(Landroid/widget/PopupWindow;I)V

    .line 711
    iget-object v6, p0, Lxb;->o:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 712
    iget-object v6, p0, Lxb;->o:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 714
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Lyc;->actionBarSize:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 716
    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 718
    iget-object v5, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 719
    iget-object v0, p0, Lxb;->o:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 720
    new-instance v0, Lxg;

    invoke-direct {v0, p0}, Lxg;-><init>(Lxb;)V

    iput-object v0, p0, Lxb;->p:Ljava/lang/Runnable;

    .line 754
    :cond_4
    :goto_3
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 755
    invoke-direct {p0}, Lxb;->s()V

    .line 756
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->c()V

    .line 757
    new-instance v5, Lyy;

    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, p0, Lxb;->o:Landroid/widget/PopupWindow;

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    invoke-direct {v5, v6, v7, v4, v0}, Lyy;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Lyv;Z)V

    .line 759
    invoke-virtual {v5}, Lyu;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lyv;->a(Lyu;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 760
    invoke-virtual {v5}, Lyu;->d()V

    .line 761
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionBarContextView;->a(Lyu;)V

    .line 762
    iput-object v5, p0, Lxb;->m:Lyu;

    .line 763
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;F)V

    .line 764
    iget-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lqj;->a(F)Lqj;

    move-result-object v0

    iput-object v0, p0, Lxb;->q:Lqj;

    .line 765
    iget-object v0, p0, Lxb;->q:Lqj;

    new-instance v1, Lxi;

    invoke-direct {v1, p0}, Lxi;-><init>(Lxb;)V

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    .line 783
    iget-object v0, p0, Lxb;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lxb;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lxb;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 703
    :cond_5
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    goto/16 :goto_2

    .line 744
    :cond_6
    iget-object v0, p0, Lxb;->w:Landroid/view/ViewGroup;

    sget v5, Lyh;->action_mode_bar_stub:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    .line 746
    if-eqz v0, :cond_4

    .line 748
    invoke-virtual {p0}, Lxb;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 749
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 757
    goto :goto_4

    .line 787
    :cond_8
    iput-object v3, p0, Lxb;->m:Lyu;

    goto/16 :goto_1

    :cond_9
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 253
    invoke-direct {p0}, Lxb;->p()V

    .line 254
    iget-object v0, p0, Lxb;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 255
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 256
    iget-object v1, p0, Lxb;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 257
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 258
    return-void
.end method

.method a(ILandroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 587
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 588
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, v2}, Lvx;->e(Z)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    if-nez p1, :cond_0

    .line 595
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lxb;->a(IZ)Lxn;

    move-result-object v0

    .line 596
    iget-boolean v1, v0, Lxn;->o:Z

    if-eqz v1, :cond_0

    .line 597
    invoke-direct {p0, v0, v2}, Lxb;->a(Lxn;Z)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lxb;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lxb;->u:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1}, Lvx;->a(Landroid/content/res/Configuration;)V

    .line 224
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Lxb;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lxb;->v:Landroid/view/ViewGroup;

    .line 151
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lfx;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lxb;->i()Lvx;

    move-result-object v0

    .line 155
    if-nez v0, :cond_1

    .line 156
    iput-boolean v1, p0, Lxb;->I:Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {v0, v1}, Lvx;->c(Z)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lxb;->p()V

    .line 245
    iget-object v0, p0, Lxb;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 247
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 249
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0}, Lxb;->p()V

    .line 263
    iget-object v0, p0, Lxb;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 264
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 265
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 267
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public a(Lzp;)V
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lxb;->a(Lzp;Z)V

    .line 629
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 823
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v2

    .line 824
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lvx;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 854
    :cond_0
    :goto_0
    return v0

    .line 830
    :cond_1
    iget-object v2, p0, Lxb;->D:Lxn;

    if-eqz v2, :cond_2

    .line 831
    iget-object v2, p0, Lxb;->D:Lxn;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Lxb;->a(Lxn;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 833
    if-eqz v2, :cond_2

    .line 834
    iget-object v1, p0, Lxb;->D:Lxn;

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lxb;->D:Lxn;

    iput-boolean v0, v1, Lxn;->n:Z

    goto :goto_0

    .line 845
    :cond_2
    iget-object v2, p0, Lxb;->D:Lxn;

    if-nez v2, :cond_3

    .line 846
    invoke-direct {p0, v1, v0}, Lxb;->a(IZ)Lxn;

    move-result-object v2

    .line 847
    invoke-direct {p0, v2, p2}, Lxb;->b(Lxn;Landroid/view/KeyEvent;)Z

    .line 848
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Lxb;->a(Lxn;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 849
    iput-boolean v1, v2, Lxn;->m:Z

    .line 850
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 854
    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 859
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 861
    iget-object v1, p0, Lxb;->c:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    :goto_0
    return v0

    .line 866
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 867
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 868
    if-nez v2, :cond_1

    .line 870
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, p1}, Lxb;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 868
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 870
    :cond_2
    invoke-virtual {p0, v1, p1}, Lxb;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lzp;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lxb;->m()Landroid/view/Window$Callback;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxb;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    invoke-virtual {p1}, Lzp;->p()Lzp;

    move-result-object v1

    invoke-direct {p0, v1}, Lxb;->a(Landroid/view/Menu;)Lxn;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_0

    .line 620
    iget v1, v1, Lxn;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_0

    .line 1004
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lyv;)Lyu;
    .locals 3

    .prologue
    .line 633
    if-nez p1, :cond_0

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    iget-object v0, p0, Lxb;->m:Lyu;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lxb;->m:Lyu;

    invoke-virtual {v0}, Lyu;->c()V

    .line 641
    :cond_1
    new-instance v0, Lxk;

    invoke-direct {v0, p0, p1}, Lxk;-><init>(Lxb;Lyv;)V

    .line 643
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v1

    .line 644
    if-eqz v1, :cond_2

    .line 645
    invoke-virtual {v1, v0}, Lvx;->a(Lyv;)Lyu;

    move-result-object v1

    iput-object v1, p0, Lxb;->m:Lyu;

    .line 646
    iget-object v1, p0, Lxb;->m:Lyu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lxb;->e:Lws;

    if-eqz v1, :cond_2

    .line 647
    iget-object v1, p0, Lxb;->e:Lws;

    iget-object v2, p0, Lxb;->m:Lyu;

    invoke-interface {v1, v2}, Lws;->a(Lyu;)V

    .line 651
    :cond_2
    iget-object v1, p0, Lxb;->m:Lyu;

    if-nez v1, :cond_3

    .line 653
    invoke-virtual {p0, v0}, Lxb;->a(Lyv;)Lyu;

    move-result-object v0

    iput-object v0, p0, Lxb;->m:Lyu;

    .line 656
    :cond_3
    iget-object v0, p0, Lxb;->m:Lyu;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lxb;->p()V

    .line 168
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 271
    invoke-direct {p0}, Lxb;->p()V

    .line 272
    iget-object v0, p0, Lxb;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 273
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 275
    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lxb;->r:Ladd;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lxb;->r:Ladd;

    invoke-interface {v0, p1}, Ladd;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    invoke-virtual {p0}, Lxb;->i()Lvx;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p0}, Lxb;->i()Lvx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvx;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 580
    :cond_2
    iget-object v0, p0, Lxb;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lxb;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 514
    invoke-direct {p0, p1}, Lxb;->g(I)I

    move-result v2

    .line 516
    iget-boolean v3, p0, Lxb;->l:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 551
    :goto_0
    return v0

    .line 519
    :cond_0
    iget-boolean v3, p0, Lxb;->h:Z

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_1

    .line 521
    iput-boolean v0, p0, Lxb;->h:Z

    .line 524
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 551
    iget-object v0, p0, Lxb;->b:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 526
    :sswitch_0
    invoke-direct {p0}, Lxb;->t()V

    .line 527
    iput-boolean v1, p0, Lxb;->h:Z

    move v0, v1

    .line 528
    goto :goto_0

    .line 530
    :sswitch_1
    invoke-direct {p0}, Lxb;->t()V

    .line 531
    iput-boolean v1, p0, Lxb;->i:Z

    move v0, v1

    .line 532
    goto :goto_0

    .line 534
    :sswitch_2
    invoke-direct {p0}, Lxb;->t()V

    .line 535
    iput-boolean v1, p0, Lxb;->j:Z

    move v0, v1

    .line 536
    goto :goto_0

    .line 538
    :sswitch_3
    invoke-direct {p0}, Lxb;->t()V

    .line 539
    iput-boolean v1, p0, Lxb;->z:Z

    move v0, v1

    .line 540
    goto :goto_0

    .line 542
    :sswitch_4
    invoke-direct {p0}, Lxb;->t()V

    .line 543
    iput-boolean v1, p0, Lxb;->A:Z

    move v0, v1

    .line 544
    goto :goto_0

    .line 546
    :sswitch_5
    invoke-direct {p0}, Lxb;->t()V

    .line 547
    iput-boolean v1, p0, Lxb;->l:Z

    move v0, v1

    .line 548
    goto :goto_0

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 874
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 897
    :cond_1
    :goto_0
    return v0

    .line 876
    :sswitch_0
    invoke-direct {p0, v1, p2}, Lxb;->e(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 879
    :sswitch_1
    iget-boolean v2, p0, Lxb;->E:Z

    .line 880
    iput-boolean v1, p0, Lxb;->E:Z

    .line 882
    invoke-direct {p0, v1, v1}, Lxb;->a(IZ)Lxn;

    move-result-object v3

    .line 883
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lxn;->o:Z

    if-eqz v4, :cond_2

    .line 884
    if-nez v2, :cond_1

    .line 888
    invoke-direct {p0, v3, v0}, Lxb;->a(Lxn;Z)V

    goto :goto_0

    .line 892
    :cond_2
    invoke-virtual {p0}, Lxb;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 874
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method b(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 604
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 605
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v1

    .line 606
    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {v1, v0}, Lvx;->e(Z)V

    .line 611
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    move v6, v7

    .line 930
    :goto_0
    iget-object v0, p0, Lxb;->L:Lxq;

    if-nez v0, :cond_0

    .line 931
    new-instance v0, Lxq;

    invoke-direct {v0}, Lxq;-><init>()V

    iput-object v0, p0, Lxb;->L:Lxq;

    .line 935
    :cond_0
    if-eqz v6, :cond_2

    iget-boolean v0, p0, Lxb;->u:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Lxb;->a(Landroid/view/ViewParent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v7

    .line 938
    :goto_1
    iget-object v0, p0, Lxb;->L:Lxq;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lxq;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move v6, v1

    .line 928
    goto :goto_0

    :cond_2
    move v5, v1

    .line 935
    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvx;->d(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 901
    sparse-switch p1, :sswitch_data_0

    .line 917
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 920
    invoke-virtual {p0, p1, p2}, Lxb;->a(ILandroid/view/KeyEvent;)Z

    :cond_0
    move v0, v1

    .line 922
    :goto_1
    return v0

    .line 903
    :sswitch_0
    invoke-direct {p0, v1, p2}, Lxb;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 911
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Lxb;->E:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 901
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvx;->d(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lvx;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 664
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxb;->d(I)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lxb;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 971
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 972
    invoke-static {v0, p0}, Lnb;->a(Landroid/view/LayoutInflater;Lnl;)V

    .line 977
    :goto_0
    return-void

    .line 974
    :cond_0
    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 172
    invoke-direct {p0}, Lxb;->p()V

    .line 174
    iget-boolean v0, p0, Lxb;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxb;->f:Lvx;

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 179
    new-instance v1, Lxw;

    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lxb;->i:Z

    invoke-direct {v1, v0, v2}, Lxw;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lxb;->f:Lvx;

    .line 184
    :cond_2
    :goto_1
    iget-object v0, p0, Lxb;->f:Lvx;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lxb;->f:Lvx;

    iget-boolean v1, p0, Lxb;->I:Z

    invoke-virtual {v0, v1}, Lvx;->c(Z)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 182
    new-instance v1, Lxw;

    iget-object v0, p0, Lxb;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lxw;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lxb;->f:Lvx;

    goto :goto_1
.end method

.method o()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 805
    iget-object v1, p0, Lxb;->m:Lyu;

    if-eqz v1, :cond_1

    .line 806
    iget-object v1, p0, Lxb;->m:Lyu;

    invoke-virtual {v1}, Lyu;->c()V

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 811
    :cond_1
    invoke-virtual {p0}, Lxb;->a()Lvx;

    move-result-object v1

    .line 812
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lvx;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

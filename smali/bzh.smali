.class public Lbzh;
.super Lfq;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static aj:I

.field private static i:I


# instance fields
.field private final ak:Ljava/lang/Runnable;

.field private final al:Landroid/content/BroadcastReceiver;

.field private am:Lcha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcha",
            "<",
            "Lccb;",
            ">;"
        }
    .end annotation
.end field

.field private an:Lccn;

.field private ao:Lbvt;

.field private ap:Z

.field private aq:Z

.field private ar:Lcbs;

.field private as:Lcdu;

.field private at:Lccc;

.field private au:Landroid/content/BroadcastReceiver;

.field private av:Landroid/support/design/widget/Snackbar;

.field private aw:Landroid/support/design/widget/Snackbar;

.field private ax:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private ay:Landroid/support/design/widget/FloatingActionButton;

.field private az:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lfq;-><init>()V

    .line 294
    new-instance v0, Lcaj;

    invoke-direct {v0, p0}, Lcaj;-><init>(Lbzh;)V

    iput-object v0, p0, Lbzh;->ak:Ljava/lang/Runnable;

    .line 498
    new-instance v0, Lcan;

    invoke-direct {v0, p0}, Lcan;-><init>(Lbzh;)V

    iput-object v0, p0, Lbzh;->al:Landroid/content/BroadcastReceiver;

    .line 1145
    const/4 v0, -0x1

    iput v0, p0, Lbzh;->az:I

    return-void
.end method

.method private O()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcak;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcak;-><init>(Lbzh;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 311
    invoke-virtual {v0, v1}, Lcak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 312
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lcal;

    invoke-direct {v0, p0}, Lcal;-><init>(Lbzh;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 364
    invoke-virtual {v0, v1}, Lcal;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    return-void
.end method

.method private R()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lbzh;->o()Landroid/view/View;

    move-result-object v0

    .line 505
    if-nez v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 506
    :cond_0
    const v1, 0x7f08012e

    const/4 v2, 0x0

    new-array v2, v2, [Lcjp;

    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f08012c

    invoke-static {p0}, Lcaf;->a(Lbzh;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    goto :goto_0
.end method

.method private S()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 523
    iget-boolean v0, p0, Lbzh;->ap:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbzh;->L()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 524
    :goto_0
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    check-cast v0, Lwr;

    invoke-virtual {v0}, Lwr;->h()Lvx;

    move-result-object v3

    .line 525
    if-nez v3, :cond_2

    .line 531
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 523
    goto :goto_0

    .line 527
    :cond_2
    :try_start_0
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    sget v0, Lbzh;->i:I

    :goto_2
    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Lvx;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_3
    if-eqz v1, :cond_4

    const v0, 0x7f080148

    :goto_4
    invoke-virtual {v3, v0}, Lvx;->a(I)V

    .line 530
    const/4 v0, 0x4

    invoke-virtual {v3, v2, v0}, Lvx;->a(II)V

    goto :goto_1

    .line 527
    :cond_3
    :try_start_1
    sget v0, Lbzh;->aj:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 529
    :cond_4
    const v0, 0x7f08005b

    goto :goto_4

    .line 528
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private T()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 621
    iget-object v0, p0, Lbzh;->ax:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 623
    :try_start_0
    invoke-direct {p0}, Lbzh;->U()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    iget-object v0, p0, Lbzh;->ax:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 627
    return-void

    .line 625
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbzh;->ax:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    throw v0
.end method

.method private U()V
    .locals 18

    .prologue
    .line 630
    invoke-virtual/range {p0 .. p0}, Lbzh;->h()Lel;

    move-result-object v8

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->an:Lccn;

    invoke-virtual {v2}, Lccn;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->am:Lcha;

    invoke-virtual {v2}, Lcha;->clear()V

    .line 633
    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->am:Lcha;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcha;->setNotifyOnChange(Z)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->am:Lcha;

    invoke-virtual {v2}, Lcha;->clear()V

    .line 639
    new-instance v9, Lche;

    const/4 v2, 0x1

    const v3, 0x7f0800e5

    invoke-static {v8}, Lbzl;->a(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-direct {v9, v2, v3, v4}, Lche;-><init>(IILandroid/view/View$OnClickListener;)V

    .line 641
    invoke-static {v8}, Lccq;->d(Landroid/content/Context;)Z

    move-result v10

    .line 642
    if-eqz v10, :cond_7

    invoke-static {v8}, Lccq;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lche;

    const/4 v3, 0x2

    const v4, 0x7f08014f

    invoke-static {v8}, Lbzm;->a(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lche;-><init>(IILandroid/view/View$OnClickListener;)V

    move-object v5, v2

    .line 646
    :goto_1
    new-instance v11, Lche;

    const/4 v2, 0x3

    const v3, 0x7f0800e0

    const/4 v4, 0x0

    invoke-direct {v11, v2, v3, v4}, Lche;-><init>(IILandroid/view/View$OnClickListener;)V

    .line 649
    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 650
    invoke-static {v8}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 651
    :try_start_0
    const-class v2, Landroid/content/pm/PackageManager;

    const-string v3, "grantPermission"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "android.permission.READ_LOGS"

    aput-object v6, v3, v4

    invoke-virtual {v2, v12, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->an:Lccn;

    invoke-virtual {v2}, Lccn;->b()Ljava/util/Set;

    move-result-object v2

    invoke-static {v8, v2}, Lcbs;->a(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v13

    .line 658
    const/4 v2, 0x0

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lbzh;->an:Lccn;

    invoke-virtual {v3}, Lccn;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v6, v2

    :cond_3
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 660
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 663
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v12, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 667
    if-eqz v7, :cond_3

    iget-boolean v4, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_3

    .line 670
    invoke-static {v8, v7}, Lccq;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 671
    new-instance v4, Lchd;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v4, v7, v15, v2, v11}, Lchd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lche;)V

    move-object v7, v4

    .line 678
    :goto_4
    iget-object v2, v7, Lchd;->i:Lche;

    if-eq v2, v11, :cond_5

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->ar:Lcbs;

    invoke-virtual {v2, v3}, Lcbs;->b(Ljava/lang/String;)Lcca;

    move-result-object v2

    .line 681
    if-eqz v2, :cond_5

    iget-object v4, v2, Lcca;->c:Lccb;

    if-eqz v4, :cond_5

    .line 682
    iput-object v4, v7, Lchd;->j:Ljava/lang/Object;

    .line 684
    if-nez v10, :cond_4

    .line 685
    iget-wide v0, v2, Lcca;->a:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v8, v0, v1, v4}, Lcbz;->a(Landroid/content/Context;JLccb;)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v7, v2}, Lchd;->b(Ljava/lang/String;)Lchd;

    .line 689
    :cond_4
    iget-object v2, v4, Lccb;->a:Lcby;

    sget-object v4, Lcby;->a:Lcby;

    if-ne v2, v4, :cond_5

    .line 690
    const/4 v6, 0x1

    .line 691
    invoke-virtual/range {p0 .. p0}, Lbzh;->i()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02008e

    const/4 v15, 0x0

    invoke-static {v2, v4, v15}, Ljs;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lbzp;->a(Lbzh;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Lchd;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Lchd;

    :cond_5
    move v4, v6

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->as:Lcdu;

    if-eqz v2, :cond_6

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->as:Lcdu;

    invoke-virtual {v2, v3}, Lcdu;->c(Ljava/lang/String;)Lcdr;

    move-result-object v2

    .line 698
    if-eqz v2, :cond_6

    .line 699
    const v2, 0x7f08010a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lchd;->b(Ljava/lang/String;)Lchd;

    .line 708
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->at:Lccc;

    invoke-virtual {v2, v3}, Lccc;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 709
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\u2702 "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x24

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcjf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lchd;->b(Ljava/lang/String;)Lchd;

    goto :goto_5

    .line 642
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbzh;->ap:Z

    if-eqz v2, :cond_8

    new-instance v2, Lche;

    const/4 v3, 0x2

    const v4, 0x7f0800e2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lche;-><init>(IILandroid/view/View$OnClickListener;)V

    move-object v5, v2

    goto/16 :goto_1

    :cond_8
    new-instance v2, Lche;

    const/4 v3, 0x2

    const v4, 0x7f0800e1

    invoke-static {v8}, Lbzn;->a(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lche;-><init>(IILandroid/view/View$OnClickListener;)V

    move-object v5, v2

    goto/16 :goto_1

    .line 652
    :catch_0
    move-exception v2

    .line 653
    invoke-static {v8}, Lbzo;->a(Landroid/app/Activity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 672
    :cond_9
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcbw;

    if-eqz v4, :cond_b

    iget-boolean v7, v4, Lcbw;->e:Z

    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lbzh;->an:Lccn;

    .line 673
    invoke-virtual {v7, v3}, Lccn;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 674
    :cond_a
    new-instance v7, Lchd;

    const/4 v15, 0x0

    invoke-direct {v7, v3, v15, v2, v9}, Lchd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lche;)V

    .line 675
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lbzh;->a(Landroid/content/pm/PackageManager;Lcbw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lchd;->a(Ljava/lang/String;)Lchd;

    goto/16 :goto_4

    .line 676
    :cond_b
    new-instance v4, Lchd;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v7, v2, v5}, Lchd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lche;)V

    move-object v7, v4

    goto/16 :goto_4

    .line 711
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->an:Lccn;

    invoke-virtual {v2, v3}, Lccn;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 712
    const v2, 0x7f080046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lchd;->b(Ljava/lang/String;)Lchd;

    .line 714
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->am:Lcha;

    invoke-virtual {v2, v7}, Lcha;->add(Ljava/lang/Object;)V

    move v6, v4

    .line 715
    goto/16 :goto_3

    .line 716
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->am:Lcha;

    invoke-virtual {v2}, Lcha;->a()V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lbzh;->am:Lcha;

    invoke-virtual {v2}, Lcha;->notifyDataSetChanged()V

    .line 718
    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 720
    if-eqz v6, :cond_0

    .line 721
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v3, Lcbi;->o:Lcbi;

    const-string v4, "AutoHibernationIssue"

    const-string v5, "Failure"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto/16 :goto_0

    .line 664
    :catch_1
    move-exception v2

    goto/16 :goto_3
.end method

.method private V()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1053
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->a:Lcbi;

    const-string v2, "Add"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 1054
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->f()Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Lff;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lff;->a(I)Lff;

    move-result-object v0

    const-string v1, "analyzer"

    .line 1055
    invoke-virtual {v0, v1}, Lff;->a(Ljava/lang/String;)Lff;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lbxt;

    invoke-direct {v2}, Lbxt;-><init>()V

    invoke-virtual {v0, v1, v2}, Lff;->a(ILei;)Lff;

    move-result-object v0

    invoke-virtual {v0}, Lff;->a()I

    .line 1056
    return-void
.end method

.method private W()Lchd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lchd",
            "<",
            "Lccb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getCheckedItemPosition()I

    move-result v0

    .line 1060
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lbzh;->am:Lcha;

    invoke-virtual {v1}, Lcha;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1061
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lbzh;->am:Lcha;

    invoke-virtual {v1, v0}, Lcha;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    goto :goto_0
.end method

.method private X()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lchd",
            "<",
            "Lccb;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1065
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1066
    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1074
    :goto_0
    return-object v0

    .line 1067
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1068
    iget-object v0, p0, Lbzh;->am:Lcha;

    invoke-virtual {v0}, Lcha;->getCount()I

    move-result v3

    .line 1069
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1070
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 1071
    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lt v4, v3, :cond_2

    .line 1069
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1072
    :cond_2
    iget-object v5, p0, Lbzh;->am:Lcha;

    invoke-virtual {v5, v4}, Lcha;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1074
    goto :goto_0
.end method

.method private synthetic Y()V
    .locals 1

    .prologue
    .line 272
    const v0, 0x7f0f00a4

    invoke-virtual {p0, v0}, Lbzh;->c(I)Z

    return-void
.end method

.method static synthetic a(Lbzh;I)I
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lbzh;->az:I

    return p1
.end method

.method static synthetic a(Lbzh;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbzh;->ay:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic a(Lbzh;Lcbs;)Lcbs;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lbzh;->ar:Lcbs;

    return-object p1
.end method

.method static synthetic a(Lbzh;Lchd;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1, p2}, Lbzh;->a(Lchd;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private synthetic a(Lchd;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lbzh;->an:Lccn;

    iget-object v1, p1, Lchd;->a:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object p2
.end method

.method private a(Landroid/content/pm/PackageManager;Lcbw;)Ljava/lang/String;
    .locals 9

    .prologue
    const v2, 0x7f080122

    const v8, 0x7f08004c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    iget-boolean v1, p2, Lcbw;->f:Z

    if-eqz v1, :cond_0

    .line 727
    const v1, 0x7f080121

    invoke-virtual {p0, v1}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 728
    :cond_0
    iget-object v1, p2, Lcbw;->b:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 730
    iget v1, p2, Lcbw;->d:I

    if-eqz v1, :cond_1

    .line 731
    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p2, Lcbw;->d:I

    invoke-virtual {p0, v2}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v8, v1}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 732
    :cond_1
    iget-object v1, p2, Lcbw;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 734
    const v1, 0x7f08004c

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcbw;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    :catch_0
    move-exception v1

    .line 736
    new-array v1, v7, [Ljava/lang/Object;

    const v2, 0x7f08005e

    invoke-virtual {p0, v2}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v8, v1}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 738
    :cond_2
    invoke-virtual {p0, v2}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 739
    :cond_3
    invoke-virtual {p0, v2}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lbzh;->b(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lbzh;->f(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccz;->a(Landroid/content/Context;Z)I

    move-result v0

    if-gtz v0, :cond_0

    .line 571
    const/4 v0, 0x0

    const v1, 0x7f080075

    invoke-static {p1, v0, v1}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->d()Lbww;

    move-result-object v0

    const v1, 0x7f080069

    invoke-static {p1}, Lbzx;->a(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lwq;->c()Lwp;

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lbzh;->a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lbzh;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lbzh;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lbzh;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lbzh;Landroid/app/Activity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lbzh;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic a(Lbzh;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbzh;->g(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lbzh;Lchd;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbzh;->a(Lchd;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic a(Lbzh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbzh;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbzh;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lbzh;->a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic a(Lbzh;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbzh;->a(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic a(Lbzh;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lbzh;->a(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Lbzh;Ljava/util/Collection;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbzh;->a(Ljava/util/Collection;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic a(Lbzh;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lbzh;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lbzh;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbzh;->a(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private a(Lchd;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchd",
            "<",
            "Lccb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 942
    if-eqz p1, :cond_0

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->c:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->b:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v1, p1, Lchd;->a:Ljava/lang/String;

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    invoke-direct {p0, v1, v0}, Lbzh;->a(Ljava/lang/String;Lccb;)Z

    move-result v1

    .line 944
    if-nez v1, :cond_2

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->b:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 946
    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->c:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lbzh;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 948
    :goto_1
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    const v2, 0x7f080070

    invoke-virtual {p0, v2}, Lbzh;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f08006f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lbwv;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lbww;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Lbww;->d()Lbww;

    move-result-object v0

    const v1, 0x7f080066

    invoke-static {p0, p1}, Lbzs;->a(Lbzh;Lchd;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v0

    invoke-virtual {v0}, Lwq;->c()Lwp;

    goto :goto_0

    .line 946
    :cond_3
    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->b:Landroid/content/ComponentName;

    .line 947
    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcjf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private synthetic a(Lchd;Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lbzh;->b(Lchd;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 519
    const-string v1, "push_notification"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v3

    invoke-static {v3, p1}, Lbvh;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private synthetic a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0, p1, p2, p3}, Lbzh;->a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z

    .line 585
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 6

    .prologue
    .line 1089
    iget-object v0, p0, Lbzh;->an:Lccn;

    invoke-virtual {v0, p1, p3}, Lccn;->a(Ljava/lang/String;Z)V

    .line 1090
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->d:Lcbi;

    const-string v2, "Always"

    const-wide/16 v4, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 1091
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1078
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbzh;->a(Ljava/util/Collection;Z)V

    .line 1079
    return-void
.end method

.method private synthetic a(Ljava/util/Collection;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1094
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbzh;->a(Ljava/util/Collection;Z)V

    .line 1095
    return-void
.end method

.method private a(Ljava/util/Collection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1082
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1084
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lbzh;->an:Lccn;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lccn;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1086
    new-instance v1, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1087
    const v2, 0x7f080084

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 1088
    invoke-static {p0, v0}, Lbzv;->a(Lbzh;Ljava/lang/String;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1092
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const v2, 0x7f080090

    const v3, 0x7f08006e

    invoke-static {v0, v2, v3}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    .line 1093
    invoke-virtual {v0}, Lbww;->d()Lbww;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbww;->b(Landroid/view/View;)Lwq;

    move-result-object v0

    const v1, 0x7f080066

    invoke-static {p0, p1}, Lbzw;->a(Lbzh;Ljava/util/Collection;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v0

    .line 1095
    invoke-virtual {v0}, Lwq;->c()Lwp;

    goto :goto_0

    .line 1099
    :cond_1
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1100
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbzh;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 1103
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1104
    new-instance v1, Lcao;

    invoke-direct {v1, p0, v0, p1}, Lcao;-><init>(Lbzh;Landroid/app/ProgressDialog;Ljava/util/Collection;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1129
    invoke-virtual {v1, v0}, Lcao;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 770
    .line 771
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v7

    move v0, v7

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 772
    iget-object v1, p0, Lbzh;->an:Lccn;

    invoke-virtual {v1, v3}, Lccn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->c:Lcbi;

    const-string v2, "Degreenified"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 775
    invoke-static {v3}, Lcbg;->b(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0, v3}, Lccq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v8

    .line 778
    :goto_1
    iget-object v0, p0, Lbzh;->as:Lcdu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbzh;->as:Lcdu;

    invoke-virtual {v0, v3}, Lcdu;->a(Ljava/lang/String;)Z

    .line 779
    :cond_1
    iget-object v0, p0, Lbzh;->at:Lccc;

    invoke-virtual {v0, v3}, Lccc;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lbzh;->at:Lccc;

    invoke-virtual {v4, v0, v7}, Lccc;->b(Landroid/content/ComponentName;Z)Z

    goto :goto_2

    .line 780
    :cond_2
    iget-object v0, p0, Lbzh;->ar:Lcbs;

    invoke-virtual {v0, v3}, Lcbs;->c(Ljava/lang/String;)V

    move v6, v1

    move v0, v8

    .line 781
    goto :goto_0

    .line 782
    :cond_3
    if-nez v0, :cond_5

    .line 792
    :cond_4
    :goto_3
    return-void

    .line 784
    :cond_5
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lbzh;->an:Lccn;

    invoke-virtual {v0}, Lccn;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/CleanerService;->d(Landroid/content/Context;)V

    .line 786
    :cond_6
    if-eqz v6, :cond_4

    .line 789
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const v1, 0x7f080072

    const v2, 0x7f080071

    invoke-static {v0, v1, v2}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    .line 790
    invoke-virtual {v0, v1, v2}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v0

    invoke-virtual {v0}, Lwq;->c()Lwp;

    goto :goto_3

    :cond_7
    move v1, v6

    goto :goto_1
.end method

.method private synthetic a(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1018
    const/4 v0, 0x1

    .line 1019
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p3, v1, :cond_3

    .line 1020
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1021
    iget-object v1, p0, Lbzh;->at:Lccc;

    invoke-virtual {v1, v0, v7}, Lccc;->b(Landroid/content/ComponentName;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1028
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const v1, 0x7f080089

    const v2, 0x7f080085

    invoke-static {v0, v1, v2}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;

    .line 1029
    :cond_1
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 1030
    invoke-direct {p0}, Lbzh;->T()V

    .line 1031
    return-void

    .line 1022
    :cond_2
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v3

    sget-object v4, Lcbi;->a:Lcbi;

    const-string v5, "Reattach"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v1

    .line 1021
    goto :goto_0

    .line 1024
    :cond_3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1025
    iget-object v1, p0, Lbzh;->at:Lccc;

    invoke-virtual {v1, v0, v7}, Lccc;->b(Landroid/content/ComponentName;Z)Z

    move-result v1

    .line 1026
    if-eqz v1, :cond_0

    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v3, Lcbi;->a:Lcbi;

    const-string v4, "Reattach"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method static synthetic a(Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    invoke-static/range {p0 .. p5}, Lbzh;->b(Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 594
    iget-object v1, p0, Lbzh;->an:Lccn;

    invoke-virtual {v1, p1}, Lccn;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    const v2, 0x7f0800f2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v0

    invoke-virtual {p0, v2, v3}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 617
    :goto_0
    return v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-static {v1, p2}, Lccq;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 599
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    const v2, 0x7f08011b

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v0

    invoke-virtual {p0, v2, v3}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 603
    :cond_1
    :try_start_0
    iget-object v1, p0, Lbzh;->an:Lccn;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lccn;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    invoke-static {p1}, Lcbg;->a(Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->c:Lcbi;

    const-string v2, "Greenified"

    const-wide/16 v4, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 612
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lbzh;->as:Lcdu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbzh;->as:Lcdu;

    invoke-virtual {v0}, Lcdu;->a()V

    .line 616
    :cond_2
    invoke-direct {p0}, Lbzh;->T()V

    move v0, v6

    .line 617
    goto :goto_0

    .line 604
    :catch_0
    move-exception v1

    .line 605
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    const v2, 0x7f0800f8

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v0

    invoke-virtual {p0, v2, v3}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 606
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->e:Lcbi;

    const-string v3, "Failure"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lccb;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 953
    iget-object v3, p2, Lccb;->c:Landroid/content/Intent;

    .line 954
    iget-object v0, p0, Lbzh;->as:Lcdu;

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 956
    :cond_0
    :goto_0
    return v5

    .line 955
    :cond_1
    iget-object v0, p2, Lccb;->a:Lcby;

    invoke-virtual {v0}, Lcby;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbzh;->as:Lcdu;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    iget v4, p2, Lccb;->e:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcdu;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;IZ)Z

    move-result v5

    goto :goto_0

    .line 956
    :cond_2
    iget-object v0, p2, Lccb;->a:Lcby;

    invoke-virtual {v0}, Lcby;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzh;->as:Lcdu;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    iget-object v2, p2, Lccb;->b:Landroid/content/ComponentName;

    iget v4, p2, Lccb;->e:I

    invoke-virtual/range {v0 .. v5}, Lcdu;->a(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/Intent;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lbzh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lbzh;->X()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lbzh;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic b(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 572
    invoke-static {p0}, Lccz;->a(Landroid/content/Context;)V

    .line 573
    return-void
.end method

.method static synthetic b(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lbzh;->e(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->b(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic b(Lbzh;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbzh;->d(I)V

    return-void
.end method

.method static synthetic b(Lbzh;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbzh;->f(Landroid/view/View;)V

    return-void
.end method

.method private b(Lchd;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchd",
            "<",
            "Lccb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 970
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    .line 971
    if-nez v1, :cond_0

    .line 995
    :goto_0
    return-void

    .line 972
    :cond_0
    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v3, v0, Lccb;->c:Landroid/content/Intent;

    .line 973
    if-eqz v3, :cond_2

    invoke-virtual {v3, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 974
    :goto_1
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v4, Lcbi;->a:Lcbi;

    const-string v8, "Cutoff"

    invoke-virtual {v2, v4, v8, v0, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 976
    iget-object v0, p1, Lchd;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lbzh;->a(Ljava/util/Collection;)V

    .line 978
    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->a:Lcby;

    .line 979
    iget-object v2, p0, Lbzh;->as:Lcdu;

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 980
    invoke-virtual {v0}, Lcby;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lbzh;->as:Lcdu;

    iget-object v2, p1, Lchd;->a:Ljava/lang/String;

    iget-object v4, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v4, Lccb;

    iget v4, v4, Lccb;->e:I

    invoke-virtual/range {v0 .. v5}, Lcdu;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;IZ)Z

    move-result v2

    .line 983
    :goto_2
    if-nez v2, :cond_5

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->b:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    .line 984
    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->a:Lcby;

    sget-object v2, Lcby;->d:Lcby;

    if-eq v0, v2, :cond_1

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->a:Lcby;

    sget-object v2, Lcby;->f:Lcby;

    if-eq v0, v2, :cond_1

    .line 985
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v3, Lcbi;->p:Lcbi;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comp.Cutoff."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->a:Lcby;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->b:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 986
    :cond_1
    iget-object v2, p0, Lbzh;->at:Lccc;

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->b:Landroid/content/ComponentName;

    invoke-virtual {v2, v0, v7}, Lccc;->a(Landroid/content/ComponentName;Z)Z

    move-result v0

    .line 988
    :goto_3
    if-nez v0, :cond_4

    .line 989
    const v0, 0x7f080089

    const v2, 0x7f080085

    invoke-static {v1, v0, v2}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    invoke-virtual {v0, v6}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;

    goto/16 :goto_0

    :cond_2
    move-object v0, v6

    .line 973
    goto/16 :goto_1

    .line 981
    :cond_3
    invoke-virtual {v0}, Lcby;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbzh;->as:Lcdu;

    iget-object v2, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v2, Lccb;

    iget-object v2, v2, Lccb;->b:Landroid/content/ComponentName;

    iget-object v4, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v4, Lccb;

    iget v4, v4, Lccb;->e:I

    invoke-virtual/range {v0 .. v5}, Lcdu;->a(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/Intent;IZ)Z

    move-result v2

    goto/16 :goto_2

    .line 993
    :cond_4
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 994
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v2, v7

    goto/16 :goto_2
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 368
    const-string v0, "com.oasisfeng.greenify.action.GREENIFY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    .line 404
    :cond_0
    :goto_0
    return v2

    .line 369
    :cond_1
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 370
    if-nez v0, :cond_4

    .line 371
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 374
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    const-string v0, "activity_hash"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 376
    const-string v0, "activity_hash"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 377
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 379
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    invoke-direct {p0, v0}, Lbzh;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    move v1, v0

    .line 383
    goto :goto_1

    .line 382
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    goto :goto_2

    .line 384
    :cond_3
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;)Z

    .line 386
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 390
    :cond_4
    instance-of v3, v0, Landroid/net/Uri;

    if-nez v3, :cond_5

    move v2, v1

    goto :goto_0

    .line 391
    :cond_5
    check-cast v0, Landroid/net/Uri;

    .line 392
    const-string v3, "package"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_0

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 400
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v5

    sget-object v6, Lcbi;->b:Lcbi;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "ApiPicked"

    :goto_3
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v3, v7}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 402
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const v5, 0x7f080088

    invoke-virtual {p0, v5}, Lbzh;->a(I)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x7f080074

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v8

    invoke-virtual {v8}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-virtual {p0, v6, v7}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lbwv;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lbww;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lbww;->d()Lbww;

    move-result-object v0

    invoke-static {p0, v3}, Lcac;->a(Lbzh;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;

    goto/16 :goto_0

    .line 400
    :cond_6
    const-string v0, "Picked"

    goto :goto_3

    .line 399
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private static synthetic b(Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 186
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 187
    invoke-virtual {p0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 188
    return v1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const v8, 0x7f080065

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    .line 549
    if-nez v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 550
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 553
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 558
    invoke-static {v1}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v4

    invoke-virtual {v4, v3}, Lbxd;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 560
    iget-object v5, p0, Lbzh;->an:Lccn;

    invoke-virtual {v5, p1}, Lccn;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 561
    const v2, 0x7f0800f2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    .line 555
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->e:Lcbi;

    const-string v3, "NotFound"

    invoke-virtual {v1, v2, v3, p1, v7}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_0

    .line 566
    :cond_2
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 567
    const v2, 0x7f080078

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {p0, v2, v5}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f080077

    invoke-virtual {p0, v5}, Lbzh;->a(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lbwv;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lbww;

    move-result-object v2

    .line 568
    invoke-virtual {v2, v8, v7}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v2

    const v5, 0x7f080067

    invoke-static {p0, v1, p1, v3, v4}, Lbzj;->a(Lbzh;Landroid/app/Activity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 569
    invoke-virtual {v2, v5, v1}, Lwq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v1

    .line 575
    invoke-virtual {v1, v0}, Lwq;->a(Z)Lwq;

    move-result-object v1

    invoke-virtual {v1}, Lwq;->c()Lwp;

    .line 576
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->e:Lcbi;

    const-string v3, "SystemApp"

    invoke-virtual {v1, v2, v3, p1, v7}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto/16 :goto_0

    .line 580
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 581
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 582
    const v2, 0x7f080090

    const v5, 0x7f08008e

    invoke-static {v1, v2, v5}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v1

    const v2, 0x7f080066

    invoke-static {p0, p1, v3, v4}, Lbzk;->a(Lbzh;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 583
    invoke-virtual {v1, v2, v3}, Lbww;->b(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v1

    .line 585
    invoke-virtual {v1, v8, v7}, Lwq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v1

    invoke-virtual {v1}, Lwq;->c()Lwp;

    .line 586
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->e:Lcbi;

    const-string v3, "Launcher"

    invoke-virtual {v1, v2, v3, p1, v7}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto/16 :goto_0

    .line 590
    :cond_4
    invoke-direct {p0, p1, v3, v4}, Lbzh;->a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lbzh;)Lcha;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbzh;->am:Lcha;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x1c

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcjf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 963
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    .line 964
    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v3}, Lcjf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 966
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic c(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 653
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm grant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.READ_LOGS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method static synthetic c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lbzh;->d(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 765
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    const-class v2, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbzh;->a(Landroid/content/Intent;)V

    .line 766
    return-void
.end method

.method static synthetic c(Lbzh;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbzh;->e(Landroid/view/View;)V

    return-void
.end method

.method private c(Lchd;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchd",
            "<",
            "Lccb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 998
    if-nez p1, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v0, p0, Lbzh;->at:Lccc;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lbzh;->d(Lchd;)V

    .line 1001
    :cond_2
    iget-object v0, p0, Lbzh;->as:Lcdu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbzh;->as:Lcdu;

    iget-object v1, p1, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcdu;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1002
    iget-object v0, p0, Lbzh;->as:Lcdu;

    iget-object v1, p1, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcdu;->c(Ljava/lang/String;)Lcdr;

    move-result-object v4

    .line 1003
    if-eqz v4, :cond_0

    .line 1004
    iget-object v0, p0, Lbzh;->as:Lcdu;

    iget-object v1, p1, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcdu;->a(Ljava/lang/String;)Z

    move-result v6

    .line 1005
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->a:Lcbi;

    const-string v2, "Reattach"

    iget-object v3, p1, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lcdr;->a()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 1006
    if-nez v6, :cond_3

    .line 1007
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const v1, 0x7f080089

    const v2, 0x7f080085

    invoke-static {v0, v1, v2}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;

    .line 1009
    :cond_3
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 1010
    invoke-direct {p0}, Lbzh;->T()V

    goto :goto_0
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lbzh;->b(Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic d(I)V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setItemChecked(IZ)V

    .line 284
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    iget-object v1, p0, Lbzh;->ak:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lbzh;->az:I

    .line 286
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->invalidateOptionsMenu()V

    .line 287
    return-void
.end method

.method private synthetic d(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 475
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm grant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    .line 476
    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    invoke-static {p1, v0}, Ldr;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {p0}, Lbzy;->a(Lbzh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/GreenifyApplication;->a(Ljava/lang/Runnable;)V

    .line 478
    :cond_0
    return-void
.end method

.method private static synthetic d(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 645
    const v0, 0x7f0800e4

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 691
    invoke-virtual {p0}, Lbzh;->N()V

    return-void
.end method

.method static synthetic d(Lbzh;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lbzh;->T()V

    return-void
.end method

.method static synthetic d(Lbzh;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbzh;->d(Landroid/view/View;)V

    return-void
.end method

.method private d(Lchd;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchd",
            "<",
            "Lccb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1014
    if-eqz p1, :cond_0

    iget-object v1, p0, Lbzh;->at:Lccc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbzh;->at:Lccc;

    iget-object v2, p1, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccc;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lbzh;->at:Lccc;

    iget-object v3, p1, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lccc;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1016
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    invoke-static {p0, v2}, Lbzu;->a(Lbzh;Ljava/util/List;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 1032
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_3

    .line 1033
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [Ljava/lang/CharSequence;

    move v1, v0

    .line 1034
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1035
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1c

    invoke-static {v0, v5}, Lcjf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1034
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1036
    :cond_2
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    const v1, 0x104000d

    invoke-virtual {p0, v1}, Lbzh;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1037
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0, v6, v6}, Lbwv;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->d()Lbww;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lbww;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v0

    invoke-virtual {v0}, Lwq;->c()Lwp;

    goto :goto_0

    .line 1038
    :cond_3
    invoke-interface {v3, v6, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method

.method private static synthetic e(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 643
    const v0, 0x7f080150

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 508
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbzh;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->q:Lcbi;

    const-string v2, "UsageStats"

    const-string v3, "NoUsageAccessSettingsActivity"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_0
.end method

.method static synthetic e(Lbzh;)V
    .locals 0

    invoke-direct {p0}, Lbzh;->Y()V

    return-void
.end method

.method static synthetic e(Lbzh;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lbzh;->c(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic f(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 640
    const v0, 0x7f0800e6

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lbzh;->aw:Landroid/support/design/widget/Snackbar;

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->c()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lbzh;->aw:Landroid/support/design/widget/Snackbar;

    .line 464
    :cond_0
    return-void
.end method

.method static synthetic f(Lbzh;)V
    .locals 0

    invoke-direct {p0}, Lbzh;->R()V

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 269
    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Lbzh;->c(I)Z

    return-void
.end method


# virtual methods
.method public M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lfq;->a()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method N()V
    .locals 3

    .prologue
    .line 763
    invoke-virtual {p0}, Lbzh;->o()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzh;->o()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08011e

    const/4 v2, 0x0

    new-array v2, v2, [Lcjp;

    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f0800f6

    invoke-static {p0}, Lbzq;->a(Lbzh;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 764
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 767
    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 168
    const v0, 0x7f04001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 795
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 798
    :pswitch_0
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const v1, 0x7f080102

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 800
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0, p3}, Lel;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 144
    invoke-super {p0, p1}, Lfq;->a(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0, v4}, Lbzh;->d(Z)V

    .line 147
    invoke-virtual {p0}, Lbzh;->i()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lbzh;->i:I

    .line 149
    invoke-virtual {p0}, Lbzh;->i()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lbzh;->aj:I

    .line 150
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    iput-object v0, p0, Lbzh;->ao:Lbvt;

    .line 151
    new-instance v0, Lccn;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-direct {v0, v1}, Lccn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbzh;->an:Lccn;

    .line 152
    iget-object v0, p0, Lbzh;->an:Lccn;

    invoke-virtual {v0, p0}, Lccn;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Lcdu;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    iget-object v2, p0, Lbzh;->an:Lccn;

    invoke-virtual {v2}, Lccn;->b()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcdu;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v0, p0, Lbzh;->as:Lcdu;

    .line 155
    :cond_0
    new-instance v0, Lccc;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbzh;->at:Lccc;

    .line 157
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Ljf;->a(Landroid/content/Context;)Ljf;

    move-result-object v0

    new-instance v1, Lcag;

    invoke-direct {v1, p0}, Lcag;-><init>(Lbzh;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.oasisfeng.greenify.action.GREENIFY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljf;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 162
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.vending"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lbxd;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbzh;->ao:Lbvt;

    const-string v1, "raise-your-voice"

    invoke-interface {v0, v1}, Lbvt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const v1, 0x7f080038

    const v2, 0x7f080036

    invoke-static {v0, v1, v2}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/view/Menu;)V
    .locals 10

    .prologue
    const v9, 0x7f0f00aa

    const v8, 0x7f0f00a9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 812
    iget-object v0, p0, Lbzh;->am:Lcha;

    invoke-virtual {v0}, Lcha;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    .line 813
    :goto_0
    invoke-direct {p0}, Lbzh;->W()Lchd;

    move-result-object v4

    .line 815
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v5

    .line 816
    const v0, 0x7f0f00a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v4, :cond_5

    move v0, v2

    :goto_1
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 817
    const v0, 0x7f0f00a2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v4, :cond_6

    move v0, v2

    :goto_2
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 818
    const v0, 0x7f0f00a1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v5, :cond_7

    if-eqz v4, :cond_7

    iget-object v0, v4, Lchd;->j:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->b:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->a:Lcby;

    sget-object v7, Lcby;->b:Lcby;

    if-eq v0, v7, :cond_7

    iget-object v0, v4, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->a:Lcby;

    sget-object v7, Lcby;->e:Lcby;

    if-eq v0, v7, :cond_7

    iget-object v0, p0, Lbzh;->at:Lccc;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->b:Landroid/content/ComponentName;

    .line 820
    invoke-static {v0}, Lccc;->a(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lbzh;->as:Lcdu;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    iget-object v0, v0, Lccb;->a:Lcby;

    sget-object v7, Lcby;->d:Lcby;

    if-eq v0, v7, :cond_7

    iget-object v7, v4, Lchd;->a:Ljava/lang/String;

    iget-object v0, v4, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lccb;

    .line 821
    invoke-direct {p0, v7, v0}, Lbzh;->a(Ljava/lang/String;Lccb;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    move v0, v2

    .line 818
    :goto_3
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 823
    const v0, 0x7f0f00a7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v4, :cond_8

    iget-object v0, p0, Lbzh;->as:Lcdu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbzh;->as:Lcdu;

    iget-object v7, v4, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcdu;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lbzh;->at:Lccc;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbzh;->at:Lccc;

    iget-object v7, v4, Lchd;->a:Ljava/lang/String;

    .line 824
    invoke-virtual {v0, v7}, Lccc;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    .line 823
    :goto_4
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 825
    const v0, 0x7f0f00a8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v4, :cond_9

    iget-object v0, p0, Lbzh;->an:Lccn;

    iget-object v4, v4, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lccn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_5
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 826
    const v0, 0x7f0f00a4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 827
    if-eqz v1, :cond_b

    if-nez v5, :cond_b

    .line 828
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lbzh;->ap:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 829
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lbzh;->ap:Z

    if-nez v1, :cond_a

    :goto_6
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 834
    :goto_7
    const v0, 0x7f0f00ac

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lbzh;->aq:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 835
    return-void

    :cond_4
    move v1, v3

    .line 812
    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 816
    goto/16 :goto_1

    :cond_6
    move v0, v3

    .line 817
    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 821
    goto :goto_3

    :cond_8
    move v0, v3

    .line 824
    goto :goto_4

    :cond_9
    move v0, v3

    .line 825
    goto :goto_5

    :cond_a
    move v2, v3

    .line 829
    goto :goto_6

    .line 831
    :cond_b
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 832
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 806
    invoke-super {p0, p1, p2}, Lfq;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 807
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 808
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lbzh;->a(Landroid/view/Menu;)V

    .line 809
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Lfq;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 267
    const v0, 0x7f0f0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lbzh;->ay:Landroid/support/design/widget/FloatingActionButton;

    .line 268
    iget-object v0, p0, Lbzh;->ay:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 269
    iget-object v0, p0, Lbzh;->ay:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {p0}, Lbzz;->a(Lbzh;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v0, 0x7f0f0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lbzh;->ax:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 272
    iget-object v0, p0, Lbzh;->ax:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {p0}, Lcaa;->a(Lbzh;)Lvj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Lvj;)V

    .line 273
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 838
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lbzh;->c(I)Z

    move-result v0

    return v0
.end method

.method public c(I)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 843
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v2

    .line 844
    if-nez v2, :cond_1

    move v1, v0

    .line 938
    :cond_0
    :goto_0
    return v1

    .line 845
    :cond_1
    packed-switch p1, :pswitch_data_0

    move v1, v0

    .line 938
    goto :goto_0

    .line 847
    :pswitch_0
    invoke-direct {p0}, Lbzh;->W()Lchd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v3

    sget-object v4, Lcbi;->a:Lcbi;

    const-string v5, "Run"

    iget-object v6, v0, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 849
    invoke-virtual {v2}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v0, v0, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lbzh;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 851
    :cond_2
    const v0, 0x7f0800f3

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 854
    :pswitch_1
    invoke-direct {p0}, Lbzh;->W()Lchd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v3

    sget-object v4, Lcbi;->a:Lcbi;

    const-string v5, "Remove"

    iget-object v6, v0, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 856
    iget-object v3, v0, Lchd;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lbzh;->a(Ljava/util/List;)V

    .line 857
    iget-object v3, p0, Lbzh;->am:Lcha;

    invoke-virtual {v3, v0}, Lcha;->remove(Ljava/lang/Object;)V

    .line 858
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 859
    invoke-virtual {v2}, Lel;->invalidateOptionsMenu()V

    goto :goto_0

    .line 862
    :pswitch_2
    invoke-static {v2}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lbzb;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 863
    invoke-static {v2}, Lbzb;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 864
    const v0, 0x7f080076

    const v3, 0x7f080126

    invoke-static {v2, v0, v3}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lbww;->d()Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;

    .line 866
    invoke-static {v2}, Lchx;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 867
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v3, Lcbi;->q:Lcbi;

    const-string v4, "AutoHibernation"

    if-nez v0, :cond_3

    const-string v0, "NoAppDetailsSettingsActivity"

    :goto_1
    invoke-virtual {v2, v3, v4, v0, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto/16 :goto_0

    .line 868
    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 869
    :cond_4
    invoke-virtual {p0}, Lbzh;->o()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08013d

    new-array v4, v1, [Lcjp;

    const v5, 0x7f08012c

    invoke-static {}, Lbzr;->a()Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 870
    invoke-static {v5, v6}, Lcjh;->a(ILandroid/view/View$OnClickListener;)Lcjp;

    move-result-object v5

    aput-object v5, v4, v0

    .line 869
    invoke-static {v2, v3, v4}, Lcjh;->a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    goto/16 :goto_0

    .line 873
    :cond_5
    invoke-direct {p0}, Lbzh;->W()Lchd;

    move-result-object v3

    .line 874
    if-nez v3, :cond_6

    .line 875
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbzh;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 877
    :cond_6
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v4

    sget-object v5, Lcbi;->a:Lcbi;

    const-string v6, "Hibernate"

    iget-object v7, v3, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 878
    iget-object v4, v3, Lchd;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v3, v3, Lchd;->i:Lche;

    iget v3, v3, Lche;->a:I

    if-ne v3, v1, :cond_7

    move v0, v1

    :cond_7
    invoke-direct {p0, v4, v0}, Lbzh;->a(Ljava/util/Collection;Z)V

    .line 879
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 880
    invoke-virtual {v2}, Lel;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 884
    :pswitch_3
    invoke-direct {p0}, Lbzh;->W()Lchd;

    move-result-object v0

    invoke-direct {p0, v0}, Lbzh;->a(Lchd;)V

    goto/16 :goto_0

    .line 887
    :pswitch_4
    invoke-direct {p0}, Lbzh;->W()Lchd;

    move-result-object v0

    .line 888
    invoke-direct {p0, v0}, Lbzh;->c(Lchd;)V

    goto/16 :goto_0

    .line 891
    :pswitch_5
    invoke-direct {p0}, Lbzh;->W()Lchd;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lbzh;->an:Lccn;

    iget-object v4, v2, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lccn;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 892
    iget-object v3, p0, Lbzh;->an:Lccn;

    iget-object v2, v2, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lccn;->a(Ljava/lang/String;Z)V

    .line 893
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 894
    invoke-direct {p0}, Lbzh;->T()V

    goto/16 :goto_0

    .line 897
    :pswitch_6
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v2, Lcbi;->a:Lcbi;

    const-string v3, "Refresh"

    invoke-virtual {v0, v2, v3, v8, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 898
    invoke-direct {p0}, Lbzh;->T()V

    goto/16 :goto_0

    .line 901
    :pswitch_7
    invoke-direct {p0}, Lbzh;->V()V

    goto/16 :goto_0

    .line 904
    :pswitch_8
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v3

    sget-object v4, Lcbi;->a:Lcbi;

    const-string v5, "Disable"

    invoke-virtual {v3, v4, v5, v8, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 905
    invoke-static {v2}, Lcom/oasisfeng/greenify/CleanerService;->f(Landroid/content/Context;)V

    .line 906
    iput-boolean v0, p0, Lbzh;->ap:Z

    .line 907
    invoke-direct {p0}, Lbzh;->S()V

    .line 908
    invoke-direct {p0}, Lbzh;->T()V

    .line 909
    const v3, 0x7f080100

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 912
    :pswitch_9
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v3

    sget-object v4, Lcbi;->a:Lcbi;

    const-string v5, "Enable"

    invoke-virtual {v3, v4, v5, v8, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 913
    invoke-static {v2}, Lcom/oasisfeng/greenify/CleanerService;->e(Landroid/content/Context;)V

    .line 914
    invoke-static {v2}, Lcaz;->a(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lbzh;->ap:Z

    .line 915
    invoke-direct {p0}, Lbzh;->S()V

    .line 916
    invoke-direct {p0}, Lbzh;->T()V

    .line 917
    const v3, 0x7f080101

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 920
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lbzh;->a(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 924
    :pswitch_b
    invoke-virtual {v2}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Lel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 925
    const v3, 0x7f0800fa

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 928
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbzh;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 931
    :pswitch_d
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v3, Lcbi;->a:Lcbi;

    const-string v4, "About"

    invoke-virtual {v0, v3, v4, v8, v8}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 932
    const/high16 v0, 0x7f060000

    const-class v3, Lcom/oasisfeng/greenify/AboutDialog;

    invoke-static {v2, v0, v3}, Lcom/oasisfeng/greenify/AboutDialog;->a(Landroid/content/Context;ILjava/lang/Class;)V

    goto/16 :goto_0

    .line 935
    :pswitch_e
    invoke-direct {p0}, Lbzh;->O()V

    goto/16 :goto_0

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00a1
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0, p1}, Lfq;->d(Landroid/os/Bundle;)V

    .line 174
    new-instance v0, Lcha;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-static {p0}, Lbzi;->a(Lbzh;)Lchh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcha;-><init>(Landroid/content/Context;Lchh;)V

    iput-object v0, p0, Lbzh;->am:Lcha;

    invoke-virtual {p0, v0}, Lbzh;->a(Landroid/widget/ListAdapter;)V

    .line 179
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 185
    invoke-static {v0}, Lbzt;->a(Landroid/widget/ListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 191
    :cond_0
    new-instance v1, Lcah;

    invoke-direct {v1, p0, v0}, Lcah;-><init>(Lbzh;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 261
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 281
    iget v0, p0, Lbzh;->az:I

    if-ne p3, v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-static {p0, p3}, Lcab;->a(Lbzh;I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 289
    :goto_0
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    iget-object v1, p0, Lbzh;->ak:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 290
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    iget-object v1, p0, Lbzh;->ak:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->invalidateOptionsMenu()V

    .line 292
    return-void

    .line 288
    :cond_0
    iput p3, p0, Lbzh;->az:I

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 320
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lbzh;->an:Lccn;

    invoke-virtual {v2}, Lccn;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcbd;->a(IJ)V

    .line 321
    return-void
.end method

.method public p()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 408
    invoke-super {p0}, Lfq;->p()V

    .line 409
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lbzh;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lel;->setIntent(Landroid/content/Intent;)V

    .line 413
    :cond_0
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    new-instance v1, Lcam;

    invoke-direct {v1, p0}, Lcam;-><init>(Lbzh;)V

    iput-object v1, p0, Lbzh;->au:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.oasisfeng.greenify.action.APP_WAKEUP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lel;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 419
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    iget-object v2, p0, Lbzh;->al:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lel;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oasisfeng.greenify.HIBERNATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lbzh;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    :cond_1
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    iget-object v2, p0, Lbzh;->al:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lel;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    new-instance v0, Lcbs;

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbzh;->ar:Lcbs;

    .line 432
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcaz;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lbzh;->ap:Z

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v2

    invoke-virtual {v2}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v3

    invoke-virtual {v3}, Lel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 437
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 438
    const-string v2, "android.intent.action.ASSIST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    :cond_3
    iput-boolean v4, p0, Lbzh;->aq:Z

    goto :goto_0

    .line 441
    :cond_4
    invoke-direct {p0}, Lbzh;->S()V

    .line 442
    invoke-direct {p0}, Lbzh;->T()V

    .line 444
    iget-object v0, p0, Lbzh;->ao:Lbvt;

    const-string v1, "welcomed"

    invoke-interface {v0, v1}, Lbvt;->b(Ljava/lang/String;)Z

    move-result v0

    .line 445
    iget-object v1, p0, Lbzh;->an:Lccn;

    invoke-virtual {v1}, Lccn;->e()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lbzh;->o()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcaz;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    sget-object v0, Lcap;->a:[I

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-static {v1}, Lcom/oasisfeng/greenify/CleanerService;->g(Landroid/content/Context;)Lbys;

    move-result-object v1

    invoke-virtual {v1}, Lbys;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 472
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lbzh;->L()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcbs;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 473
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 474
    invoke-static {p0}, Lcae;->a(Lbzh;)Lbxh;

    move-result-object v0

    invoke-static {p0, v0}, Lbxf;->a(Lei;Lbxh;)V

    .line 482
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Landroid/content/Context;)V

    .line 483
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lccz;->c(Landroid/content/Context;)V

    .line 485
    invoke-static {}, Lbvs;->a()Lbvt;

    move-result-object v0

    const-string v1, "overall"

    invoke-interface {v0, v1}, Lbvt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 486
    invoke-direct {p0}, Lbzh;->Q()V

    .line 487
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcbb;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lbzh;->P()V

    .line 490
    :cond_7
    iget-object v0, p0, Lbzh;->an:Lccn;

    invoke-virtual {v0}, Lccn;->d()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcbg;->a(D)V

    .line 492
    sget-object v0, Lcbo;->b:Lcbo;

    invoke-static {v0}, Lcbn;->a(Lcbo;)Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lbzh;->ao:Lbvt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1time_notf_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbvt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 494
    invoke-direct {p0, v0}, Lbzh;->a(Ljava/lang/String;)V

    .line 495
    :cond_8
    sget-object v0, Lcbo;->c:Lcbo;

    invoke-static {v0}, Lcbn;->a(Lcbo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbzh;->a(Ljava/lang/String;)V

    .line 496
    return-void

    .line 448
    :pswitch_0
    iget-object v0, p0, Lbzh;->av:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbzh;->av:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->c()V

    .line 449
    :cond_9
    invoke-virtual {p0}, Lbzh;->o()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08011e

    new-array v2, v5, [Lcjp;

    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/design/widget/Snackbar;->a(I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lbzh;->av:Landroid/support/design/widget/Snackbar;

    .line 450
    iget-object v0, p0, Lbzh;->av:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 451
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;)Z

    goto/16 :goto_1

    .line 454
    :pswitch_1
    iget-object v0, p0, Lbzh;->aw:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbzh;->aw:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->c()V

    .line 455
    :cond_a
    invoke-virtual {p0}, Lbzh;->o()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08011d

    new-array v2, v4, [Lcjp;

    const v3, 0x7f08013a

    sget-object v4, Lcbo;->f:Lcbo;

    .line 456
    invoke-static {v4}, Lcbn;->a(Lcbo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcjh;->a(ILandroid/net/Uri;)Lcjp;

    move-result-object v3

    aput-object v3, v2, v5

    .line 455
    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lbzh;->aw:Landroid/support/design/widget/Snackbar;

    .line 457
    iget-object v0, p0, Lbzh;->aw:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 458
    iget-object v0, p0, Lbzh;->aw:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcad;->a(Lbzh;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;)Z

    goto/16 :goto_1

    .line 479
    :cond_b
    invoke-direct {p0}, Lbzh;->R()V

    goto/16 :goto_2

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public q()V
    .locals 3

    .prologue
    .line 534
    invoke-virtual {p0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 536
    :cond_0
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->invalidateOptionsMenu()V

    .line 537
    iget-object v0, p0, Lbzh;->au:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    iget-object v1, p0, Lbzh;->au:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lel;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lbzh;->au:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 542
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lbzh;->h()Lel;

    move-result-object v0

    iget-object v1, p0, Lbzh;->al:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lel;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    :goto_1
    invoke-super {p0}, Lfq;->q()V

    .line 545
    return-void

    .line 543
    :catch_0
    move-exception v0

    goto :goto_1

    .line 540
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lbzh;->an:Lccn;

    invoke-virtual {v0}, Lccn;->a()V

    .line 316
    invoke-super {p0}, Lfq;->r()V

    .line 317
    return-void
.end method

.class public Lbxt;
.super Lfq;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private aA:J

.field final aj:Ljava/util/regex/Pattern;

.field final ak:Ljava/util/regex/Pattern;

.field private final al:[Ljava/lang/String;

.field private am:Landroid/support/design/widget/FloatingActionButton;

.field private an:Lcha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcha",
            "<",
            "Lbyj;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Lccn;

.field private ap:Lcdq;

.field private aq:Lbwy;

.field private final ar:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final as:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private at:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;>;"
        }
    .end annotation
.end field

.field private au:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;>;"
        }
    .end annotation
.end field

.field private av:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;>;"
        }
    .end annotation
.end field

.field private aw:Landroid/graphics/drawable/Drawable;

.field private final ax:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ay:Z

.field private az:Lbvt;

.field final i:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lfq;-><init>()V

    .line 129
    const-string v0, "^\\s+([^\\+\\s\\*]+)(?: .+ms running.+\\s([0-9]+) wake.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lbxt;->i:Ljava/util/regex/Pattern;

    .line 131
    const-string v0, "running.+\\s([0-9]+)\\s+wake"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lbxt;->aj:Ljava/util/regex/Pattern;

    .line 135
    const-string v0, "\\s([0-9]+)\\s+alarms[^a-z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lbxt;->ak:Ljava/util/regex/Pattern;

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.gsf"

    aput-object v2, v0, v1

    iput-object v0, p0, Lbxt;->al:[Ljava/lang/String;

    .line 773
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbxt;->ar:Ljava/util/Set;

    .line 774
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbxt;->as:Ljava/util/Set;

    .line 779
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbxt;->ax:Ljava/util/HashSet;

    return-void
.end method

.method private O()V
    .locals 5

    .prologue
    .line 257
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "System apps are shown in "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 259
    const-string v2, "orange"

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 260
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x9a00

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 262
    invoke-virtual {p0}, Lbxt;->o()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcjp;

    invoke-static {v1, v0, v2}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 263
    return-void
.end method

.method private P()V
    .locals 5

    .prologue
    .line 266
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    check-cast v0, Lwr;

    invoke-virtual {v0}, Lwr;->h()Lvx;

    move-result-object v1

    .line 267
    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getCheckedItemCount()I

    move-result v0

    .line 269
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lvx;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f080041

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lbxt;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private Q()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lchd",
            "<",
            "Lbyj;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 359
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    invoke-virtual {p0}, Lbxt;->L()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcha;

    .line 361
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcha;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 364
    goto :goto_0

    .line 363
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private R()V
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    .line 369
    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 371
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 372
    invoke-direct {p0}, Lbxt;->P()V

    .line 373
    iget-object v0, p0, Lbxt;->am:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->b()V

    goto :goto_0
.end method

.method private S()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 476
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    .line 477
    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-boolean v1, p0, Lbxt;->ay:Z

    if-nez v1, :cond_2

    move v1, v2

    .line 479
    :goto_1
    invoke-virtual {v0, v2}, Lel;->setProgressBarIndeterminateVisibility(Z)V

    .line 480
    iget-object v4, p0, Lbxt;->an:Lcha;

    invoke-virtual {v4, v3}, Lcha;->setNotifyOnChange(Z)V

    .line 481
    iget-object v4, p0, Lbxt;->an:Lcha;

    invoke-virtual {v4}, Lcha;->clear()V

    .line 483
    iget-object v4, p0, Lbxt;->an:Lcha;

    new-instance v5, Lchd;

    const v6, 0x7f0800c4

    invoke-virtual {p0, v6}, Lbxt;->b(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lche;

    sget-object v8, Lbyk;->d:Lbyk;

    .line 484
    invoke-virtual {v8}, Lbyk;->ordinal()I

    move-result v8

    sget-object v9, Lbyk;->d:Lbyk;

    iget v9, v9, Lbyk;->e:I

    invoke-direct {v7, v8, v9, v10}, Lche;-><init>(IILandroid/view/View$OnClickListener;)V

    invoke-direct {v5, v10, v10, v6, v7}, Lchd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lche;)V

    .line 483
    invoke-virtual {v4, v5}, Lcha;->add(Ljava/lang/Object;)V

    .line 485
    iget-object v4, p0, Lbxt;->an:Lcha;

    invoke-virtual {v4}, Lcha;->notifyDataSetChanged()V

    .line 488
    iget-object v4, p0, Lbxt;->ar:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 489
    iget-object v4, p0, Lbxt;->as:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 490
    invoke-virtual {v0}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 491
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    .line 492
    if-eqz v4, :cond_1

    iget-object v5, p0, Lbxt;->as:Ljava/util/Set;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    iget-object v4, p0, Lbxt;->ax:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 496
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 497
    iget-object v5, p0, Lbxt;->ax:Ljava/util/HashSet;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move v1, v3

    .line 478
    goto/16 :goto_1

    .line 500
    :cond_3
    new-instance v0, Lbyg;

    invoke-direct {v0, p0, v3, v1, v1}, Lbyg;-><init>(Lbxt;ZZZ)V

    new-array v4, v3, [Ljava/lang/Void;

    .line 519
    invoke-virtual {v0, v4}, Lbyg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lbxt;->at:Landroid/os/AsyncTask;

    .line 522
    new-instance v0, Lbyh;

    invoke-direct {v0, p0, v3, v1}, Lbyh;-><init>(Lbxt;ZZ)V

    new-array v4, v3, [Ljava/lang/Void;

    .line 581
    invoke-virtual {v0, v4}, Lbyh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lbxt;->au:Landroid/os/AsyncTask;

    .line 584
    new-instance v0, Lbxv;

    invoke-direct {v0, p0, v2, v1}, Lbxv;-><init>(Lbxt;ZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 618
    invoke-virtual {v0, v1}, Lbxv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lbxt;->av:Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private T()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 693
    new-instance v3, Lbxy;

    iget-boolean v0, p0, Lbxt;->ay:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, p0, v1, v0}, Lbxy;-><init>(Lbxt;ZZ)V

    new-array v0, v2, [Ljava/lang/Void;

    .line 698
    invoke-virtual {v3, v0}, Lbxy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 699
    return-void

    :cond_0
    move v0, v2

    .line 693
    goto :goto_0
.end method

.method static synthetic a(Lbxt;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lbxt;->Q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbxt;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lbxt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 644
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    .line 645
    const-string v1, "safe_dump"

    .line 646
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lbxt;->az:Lbvt;

    const-string v2, "safe_dump"

    invoke-interface {v1, v2}, Lbvt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 647
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 649
    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 650
    new-instance v1, Lbxx;

    invoke-direct {v1, p0, v0}, Lbxx;-><init>(Lbxt;Landroid/app/Activity;)V

    .line 654
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 655
    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 659
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {p1, v0, v4}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Failed to dump alarm service"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    aget-object v1, v3, v7

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 674
    aget-object v1, v3, v8

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v0

    .line 661
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 662
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 663
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 666
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 667
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    aget-object v1, v3, v7

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 674
    aget-object v1, v3, v8

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 689
    :cond_2
    :goto_1
    return-object v0

    .line 677
    :cond_3
    invoke-static {v0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 678
    :try_start_2
    const-class v2, Landroid/content/pm/PackageManager;

    const-string v3, "grantPermission"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 679
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.DUMP"

    aput-object v5, v3, v4

    .line 678
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 686
    :cond_4
    :goto_2
    invoke-static {v0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 680
    :catch_0
    move-exception v1

    .line 681
    new-array v1, v7, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm grant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    goto :goto_2

    .line 687
    :cond_5
    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpsys "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to dump via root shell"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Intent;IILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 703
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 705
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 706
    iget-object v0, p0, Lbxt;->as:Ljava/util/Set;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    invoke-virtual {p0, p3}, Lbxt;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 709
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 710
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v5, 0x7f080097

    invoke-virtual {p0, v5}, Lbxt;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 713
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 714
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyj;

    .line 716
    if-eqz v0, :cond_2

    iget-object v5, v0, Lbyj;->c:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 718
    :cond_2
    :goto_2
    new-instance v5, Lbyj;

    sget-object v6, Lbyk;->c:Lbyk;

    invoke-direct {v5, v6}, Lbyj;-><init>(Lbyk;)V

    invoke-virtual {v5, v1}, Lbyj;->a(Ljava/lang/String;)Lbyj;

    move-result-object v1

    invoke-virtual {v1, p2}, Lbyj;->b(I)Lbyj;

    move-result-object v1

    .line 719
    if-eqz v0, :cond_3

    iget-object v5, v0, Lbyj;->h:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 720
    iget-object v0, v0, Lbyj;->h:Ljava/util/Set;

    iput-object v0, v1, Lbyj;->h:Ljava/util/Set;

    .line 721
    :cond_3
    iget-object v0, v1, Lbyj;->h:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-interface {p4, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 711
    :catch_0
    move-exception v1

    const-string v5, "Analyzer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to check enabled setting for receiver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_1

    .line 716
    :cond_4
    iget-object v5, v0, Lbyj;->c:Ljava/lang/String;

    .line 717
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v1, v0, Lbyj;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lbyj;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 724
    :cond_6
    return-void
.end method

.method static synthetic a(Lbxt;Landroid/content/Intent;IILjava/util/Map;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lbxt;->a(Landroid/content/Intent;IILjava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lbxt;Ljava/util/Map;ZZ)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lbxt;->a(Ljava/util/Map;ZZ)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lchd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lchd",
            "<",
            "Lbyj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    iget-object v0, p1, Lchd;->j:Ljava/lang/Object;

    check-cast v0, Lbyj;

    iget-object v0, v0, Lbyj;->b:Lbyk;

    invoke-virtual {v0}, Lbyk;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lchd;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 378
    return-void
.end method

.method private a(Ljava/util/Map;ZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual/range {p0 .. p0}, Lbxt;->h()Lel;

    move-result-object v8

    .line 414
    if-nez v8, :cond_0

    .line 473
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 416
    const-string v2, "activity"

    invoke-virtual {v8, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 417
    new-instance v10, Lbvv;

    invoke-direct {v10}, Lbvv;-><init>()V

    .line 418
    new-instance v11, Lbye;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v8}, Lbye;-><init>(Lbxt;Landroid/app/Activity;)V

    .line 421
    new-instance v12, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 422
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 423
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 424
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lbxt;->ar:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 425
    :cond_2
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 426
    const/4 v5, 0x0

    aget-object v6, v4, v5

    .line 427
    array-length v5, v4

    const/4 v7, 0x2

    if-lt v5, v7, :cond_c

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v5, v4

    .line 428
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lbxt;->ao:Lccn;

    invoke-virtual {v4, v6}, Lccn;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 430
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v9, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 432
    if-eqz v14, :cond_1

    invoke-static {v8, v14}, Lccq;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbyj;

    .line 434
    if-eqz p3, :cond_5

    .line 435
    iget v4, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    const-string v4, "com.android."

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    :cond_3
    iget-object v4, v3, Lbyj;->h:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lbxt;->ap:Lcdq;

    iget-object v7, v3, Lbyj;->h:Ljava/util/Set;

    invoke-virtual {v4, v6, v7}, Lcdq;->a(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lbxt;->ap:Lcdq;

    iget-object v7, v3, Lbyj;->b:Lbyk;

    invoke-virtual {v7}, Lbyk;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcdq;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 439
    :cond_5
    iget-object v15, v3, Lbyj;->b:Lbyk;

    .line 440
    invoke-virtual {v15}, Lbyk;->ordinal()I

    move-result v4

    invoke-virtual {v10, v4}, Lbvv;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lche;

    .line 441
    if-nez v4, :cond_6

    .line 442
    new-instance v7, Lche;

    invoke-virtual {v15}, Lbyk;->ordinal()I

    move-result v16

    iget v0, v15, Lbyk;->e:I

    move/from16 v17, v0

    iget v4, v15, Lbyk;->f:I

    if-nez v4, :cond_d

    const/4 v4, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v7, v0, v1, v4}, Lche;-><init>(IILandroid/view/View$OnClickListener;)V

    .line 445
    invoke-virtual {v15}, Lbyk;->ordinal()I

    move-result v4

    invoke-virtual {v10, v4, v7}, Lbvv;->b(ILjava/lang/Object;)V

    move-object v4, v7

    .line 447
    :cond_6
    new-instance v7, Lchd;

    iget-object v0, v3, Lbyj;->a:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v7, v6, v5, v0, v4}, Lchd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lche;)V

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    iget v4, v3, Lbyj;->d:I

    if-eqz v4, :cond_7

    .line 451
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [I

    const/16 v16, 0x0

    iget v0, v3, Lbyj;->d:I

    move/from16 v17, v0

    aput v17, v4, v16

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v4

    const/16 v16, 0x0

    aget-object v4, v4, v16

    .line 452
    iget v0, v4, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v16, v0

    if-lez v16, :cond_7

    .line 453
    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    mul-int/lit16 v4, v4, 0x400

    int-to-long v0, v4

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v8, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    :cond_7
    :goto_4
    iget-object v4, v3, Lbyj;->c:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lbyj;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lchd;->a(Ljava/lang/String;)Lchd;

    .line 459
    :cond_9
    iget v4, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    const v4, -0x9a00

    iput v4, v7, Lchd;->d:I

    .line 460
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lbxt;->ax:Ljava/util/HashSet;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lbxt;->aw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v11}, Lchd;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Lchd;

    .line 462
    :cond_b
    iget v4, v3, Lbyj;->e:I

    invoke-virtual {v7, v4}, Lchd;->a(I)Lchd;

    .line 463
    iput-object v3, v7, Lchd;->j:Ljava/lang/Object;

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lbxt;->an:Lcha;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcha;->setNotifyOnChange(Z)V

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lbxt;->an:Lcha;

    invoke-virtual {v4, v7}, Lcha;->add(Ljava/lang/Object;)V

    .line 467
    iget-object v3, v3, Lbyj;->b:Lbyk;

    sget-object v4, Lbyk;->d:Lbyk;

    if-eq v3, v4, :cond_1

    invoke-virtual {v15}, Lbyk;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    move-object v5, v6

    .line 427
    goto/16 :goto_2

    .line 442
    :cond_d
    new-instance v4, Lbyf;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v15}, Lbyf;-><init>(Lbxt;Landroid/app/Activity;Lbyk;)V

    goto/16 :goto_3

    .line 455
    :catch_0
    move-exception v4

    const-string v16, "Analyzer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to get process memory info of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 469
    :cond_e
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v12}, Lcbg;->a(Ljava/util/Map;)V

    .line 470
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lbxt;->an:Lcha;

    invoke-virtual {v2}, Lcha;->a()V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lbxt;->an:Lcha;

    invoke-virtual {v2}, Lcha;->notifyDataSetChanged()V

    .line 472
    invoke-direct/range {p0 .. p0}, Lbxt;->R()V

    goto/16 :goto_0

    .line 431
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 454
    :catch_2
    move-exception v4

    goto/16 :goto_4
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 115
    invoke-static {p0}, Lbxt;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lbxt;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lbxt;->S()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchd",
            "<",
            "Lbyj;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 333
    iget-object v0, p0, Lbxt;->ap:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()Ljava/util/Map;

    move-result-object v3

    .line 334
    invoke-virtual {p0}, Lbxt;->L()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcha;

    .line 335
    invoke-virtual {v0, v7}, Lcha;->setNotifyOnChange(Z)V

    .line 336
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchd;

    .line 337
    :try_start_0
    iget-object v2, v1, Lchd;->i:Lche;

    iget v2, v2, Lche;->a:I

    sget-object v5, Lbyk;->d:Lbyk;

    invoke-virtual {v5}, Lbyk;->ordinal()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 338
    iget-object v2, v1, Lchd;->j:Ljava/lang/Object;

    check-cast v2, Lbyj;

    iget-object v2, v2, Lbyj;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v5, p0, Lbxt;->ap:Lcdq;

    iget-object v6, v1, Lchd;->a:Ljava/lang/String;

    iget-object v2, v1, Lchd;->j:Ljava/lang/Object;

    check-cast v2, Lbyj;

    iget-object v2, v2, Lbyj;->h:Ljava/util/Set;

    invoke-virtual {v5, v6, v2}, Lcdq;->b(Ljava/lang/String;Ljava/util/Collection;)V

    .line 340
    :goto_1
    iget-object v5, v1, Lchd;->a:Ljava/lang/String;

    iget-object v2, v1, Lchd;->j:Ljava/lang/Object;

    check-cast v2, Lbyj;

    iget-object v2, v2, Lbyj;->b:Lbyk;

    invoke-virtual {v2}, Lbyk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcbg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "DischargeAction"

    invoke-static {v2, v1}, Lbxt;->a(Ljava/lang/String;Lchd;)V

    .line 342
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v2

    invoke-virtual {v2}, Lel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v1}, Lcha;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    goto :goto_0

    .line 339
    :cond_1
    iget-object v5, p0, Lbxt;->ap:Lcdq;

    iget-object v6, v1, Lchd;->a:Ljava/lang/String;

    iget-object v2, v1, Lchd;->j:Ljava/lang/Object;

    check-cast v2, Lbyj;

    iget-object v2, v2, Lbyj;->b:Lbyk;

    invoke-virtual {v2}, Lbyk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lcdq;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {v0}, Lcha;->notifyDataSetChanged()V

    .line 346
    invoke-direct {p0}, Lbxt;->R()V

    .line 347
    invoke-virtual {p0}, Lbxt;->o()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800f5

    invoke-virtual {p0, v1}, Lbxt;->b(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Lcjp;

    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f0800f1

    new-instance v2, Lbyd;

    invoke-direct {v2, p0, v3}, Lbyd;-><init>(Lbxt;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 354
    return-void
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 727
    invoke-static {p0}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    const-string v1, "app-picker-guide"

    invoke-interface {v0, v1}, Lbvt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const v0, 0x7f080064

    const v1, 0x7f080063

    invoke-static {p0, v0, v1}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    const v1, 0x7f080062

    new-instance v2, Lbxz;

    invoke-direct {v2, p0}, Lbxz;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lwq;->c()Lwp;

    .line 732
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-static {p0}, Lbxt;->d(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic c(Lbxt;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lbxt;->R()V

    return-void
.end method

.method static synthetic d(Lbxt;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbxt;->am:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 736
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 737
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oasisfeng.greenify.action.PICK_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 738
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02007c

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 739
    invoke-static {p0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0800be

    .line 740
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0800bc

    .line 741
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0800bd

    .line 742
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 743
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 738
    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 746
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 747
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 746
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->a:Lcbi;

    const-string v2, "Pick"

    invoke-virtual {v0, v1, v2, v6, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 752
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 753
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    const v0, 0x7f0800f7

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic e(Lbxt;)Lcdq;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbxt;->ap:Lcdq;

    return-object v0
.end method

.method static synthetic f(Lbxt;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbxt;->as:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic g(Lbxt;)Lbwy;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbxt;->aq:Lbwy;

    return-object v0
.end method

.method static synthetic h(Lbxt;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbxt;->ar:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lfq;->a()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method N()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lbyc;

    invoke-direct {v1, p0}, Lbyc;-><init>(Lbxt;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 142
    const v0, 0x7f040019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 146
    invoke-super {p0, p1}, Lfq;->a(Landroid/os/Bundle;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbxt;->d(Z)V

    .line 148
    iget-object v0, p0, Lbxt;->al:[Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v1

    invoke-static {v1}, Lcdj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 153
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    .line 155
    :cond_0
    new-instance v1, Lccn;

    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v2

    invoke-direct {v1, v2}, Lccn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbxt;->ao:Lccn;

    .line 156
    new-instance v1, Lcdq;

    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcdq;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lbxt;->ap:Lcdq;

    .line 157
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    check-cast v0, Lwr;

    invoke-virtual {v0}, Lwr;->h()Lvx;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_1

    .line 159
    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Lvx;->a(I)V

    .line 160
    invoke-virtual {v0, v3, v3}, Lvx;->a(II)V

    .line 163
    :cond_1
    new-instance v0, Lcha;

    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v1

    new-instance v2, Lbxu;

    invoke-direct {v2, p0}, Lbxu;-><init>(Lbxt;)V

    invoke-direct {v0, v1, v2}, Lcha;-><init>(Landroid/content/Context;Lchh;)V

    iput-object v0, p0, Lbxt;->an:Lcha;

    invoke-virtual {p0, v0}, Lbxt;->a(Landroid/widget/ListAdapter;)V

    .line 172
    invoke-virtual {p0}, Lbxt;->i()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lbxt;->aw:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    iput-object v0, p0, Lbxt;->az:Lbvt;

    .line 174
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 761
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 762
    :goto_0
    const v3, 0x7f0f00a0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 763
    const v3, 0x7f0f009f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 764
    const v0, 0x7f0f009e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lbxt;->ay:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 765
    return-void

    :cond_0
    move v0, v2

    .line 761
    goto :goto_0

    :cond_1
    move v1, v2

    .line 763
    goto :goto_1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 756
    const/high16 v0, 0x7f100000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 757
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lbxt;->a(Landroid/view/Menu;)V

    .line 758
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lfq;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 187
    const v0, 0x7f0f0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lbxt;->am:Landroid/support/design/widget/FloatingActionButton;

    .line 188
    iget-object v0, p0, Lbxt;->am:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lbya;

    invoke-direct {v1, p0}, Lbya;-><init>(Lbxt;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lbxt;->am:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->b()V

    .line 191
    const v0, 0x7f0f0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 192
    new-instance v1, Lbyb;

    invoke-direct {v1, p0}, Lbyb;-><init>(Lbxt;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Lvj;)V

    .line 199
    new-instance v1, Lbwy;

    invoke-direct {v1, v0}, Lbwy;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Lbxt;->aq:Lbwy;

    .line 201
    invoke-virtual {p0}, Lbxt;->N()V

    .line 202
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchd",
            "<",
            "Lbyj;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.oasisfeng.greenify.action.GREENIFY"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    .line 318
    iget-object v1, v0, Lchd;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, v0, Lchd;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lbxt;->ap:Lcdq;

    iget-object v4, v0, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcdq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v4, v0, Lchd;->a:Ljava/lang/String;

    iget-object v1, v0, Lchd;->j:Ljava/lang/Object;

    check-cast v1, Lbyj;

    iget-object v1, v1, Lbyj;->b:Lbyk;

    invoke-virtual {v1}, Lbyk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcbg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    iget-object v4, v0, Lchd;->a:Ljava/lang/String;

    iget-object v1, v0, Lchd;->j:Ljava/lang/Object;

    check-cast v1, Lbyj;

    iget-object v1, v1, Lbyj;->b:Lbyk;

    invoke-virtual {v1}, Lbyk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcbg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "GreenifyAction"

    invoke-static {v1, v0}, Lbxt;->a(Ljava/lang/String;Lchd;)V

    .line 325
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_2
    const-string v0, "activity_hash"

    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lel;->setIntent(Landroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->f()Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->c()V

    .line 330
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 294
    sparse-switch v2, :sswitch_data_0

    move v1, v0

    .line 312
    :goto_0
    return v1

    .line 296
    :sswitch_0
    invoke-direct {p0}, Lbxt;->Q()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lbxt;->b(Ljava/util/List;)V

    goto :goto_0

    .line 299
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lbxt;->ay:Z

    .line 300
    invoke-direct {p0}, Lbxt;->S()V

    .line 301
    invoke-direct {p0}, Lbxt;->R()V

    goto :goto_0

    .line 304
    :sswitch_2
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->f()Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->c()V

    .line 305
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v2, Lcbi;->a:Lcbi;

    const-string v3, "Pick"

    invoke-virtual {v0, v2, v3, v4, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 306
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lbxt;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 309
    :sswitch_3
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->f()Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->c()V

    goto :goto_0

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f0f009e -> :sswitch_1
        0x7f0f009f -> :sswitch_2
        0x7f0f00a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1}, Lfq;->d(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lbxt;->am:Landroid/support/design/widget/FloatingActionButton;

    .line 206
    invoke-super {p0}, Lfq;->e()V

    .line 207
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
    .line 232
    invoke-virtual {p0}, Lbxt;->L()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcha;

    .line 233
    invoke-virtual {v0}, Lcha;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_0

    .line 234
    invoke-virtual {v0, p3}, Lcha;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchd;

    .line 235
    iget-object v2, v1, Lchd;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 236
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setItemChecked(IZ)V

    .line 237
    invoke-virtual {v0, v1}, Lcha;->remove(Ljava/lang/Object;)V

    .line 238
    invoke-direct {p0}, Lbxt;->T()V

    .line 254
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {v0, p3}, Lcha;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    .line 243
    iget v0, v0, Lchd;->d:I

    const v1, -0x9a00

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbxt;->az:Lbvt;

    const-string v1, "hint_sys_app_color"

    invoke-interface {v0, v1}, Lbvt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lbxt;->O()V

    .line 246
    :cond_1
    iget-object v0, p0, Lbxt;->am:Landroid/support/design/widget/FloatingActionButton;

    .line 247
    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->a()V

    .line 252
    :cond_2
    :goto_1
    invoke-direct {p0}, Lbxt;->P()V

    .line 253
    invoke-virtual {p0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->invalidateOptionsMenu()V

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->b()V

    goto :goto_1
.end method

.method public p()V
    .locals 6

    .prologue
    .line 273
    invoke-super {p0}, Lfq;->p()V

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 275
    iget-wide v2, p0, Lbxt;->aA:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 276
    invoke-direct {p0}, Lbxt;->S()V

    .line 277
    invoke-direct {p0}, Lbxt;->P()V

    .line 278
    iput-wide v0, p0, Lbxt;->aA:J

    .line 280
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lbxt;->at:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxt;->at:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 284
    :cond_0
    iget-object v0, p0, Lbxt;->au:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbxt;->au:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 285
    :cond_1
    iget-object v0, p0, Lbxt;->av:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbxt;->av:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 287
    :cond_2
    invoke-direct {p0}, Lbxt;->R()V

    .line 289
    invoke-super {p0}, Lfq;->q()V

    .line 290
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lbxt;->ao:Lccn;

    invoke-virtual {v0}, Lccn;->a()V

    .line 228
    invoke-super {p0}, Lfq;->r()V

    .line 229
    return-void
.end method

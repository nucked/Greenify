.class public Landroid/support/v7/widget/SearchView;
.super Ladt;
.source "SourceFile"

# interfaces
.implements Lyw;


# static fields
.field static final a:Lagj;

.field private static final b:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Z

.field private E:Ljava/lang/CharSequence;

.field private F:Z

.field private G:I

.field private H:Landroid/app/SearchableInfo;

.field private I:Landroid/os/Bundle;

.field private J:Ljava/lang/Runnable;

.field private final K:Ljava/lang/Runnable;

.field private L:Ljava/lang/Runnable;

.field private final M:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/graphics/drawable/Drawable;

.field private final l:I

.field private final m:I

.field private final n:Landroid/content/Intent;

.field private final o:Landroid/content/Intent;

.field private final p:Ljava/lang/CharSequence;

.field private q:Lagl;

.field private r:Lagk;

.field private s:Landroid/view/View$OnFocusChangeListener;

.field private t:Lagm;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Z

.field private w:Z

.field private x:Ltm;

.field private y:Z

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SearchView;->b:Z

    .line 164
    new-instance v0, Lagj;

    invoke-direct {v0}, Lagj;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->a:Lagj;

    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1444
    if-eqz p2, :cond_0

    .line 1445
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1447
    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->E:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1448
    if-eqz p4, :cond_1

    .line 1449
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    :cond_1
    if-eqz p3, :cond_2

    .line 1452
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1455
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1457
    :cond_3
    if-eqz p5, :cond_4

    .line 1458
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    :cond_4
    sget-boolean v1, Landroid/support/v7/widget/SearchView;->b:Z

    if-eqz v1, :cond_5

    .line 1462
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1464
    :cond_5
    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1418
    const-string v1, "android.intent.action.SEARCH"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1419
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1420
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1421
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Z)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 820
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->w:Z

    .line 822
    if-eqz p1, :cond_1

    move v0, v1

    .line 824
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 826
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 828
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->v:Z

    if-eqz v0, :cond_4

    .line 836
    :cond_0
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->h()V

    .line 839
    if-nez v3, :cond_5

    :goto_4
    invoke-direct {p0, v4}, Landroid/support/v7/widget/SearchView;->c(Z)V

    .line 840
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    .line 841
    return-void

    :cond_1
    move v0, v2

    .line 822
    goto :goto_0

    :cond_2
    move v3, v1

    .line 824
    goto :goto_1

    :cond_3
    move v0, v1

    .line 828
    goto :goto_2

    :cond_4
    move v2, v1

    .line 834
    goto :goto_3

    :cond_5
    move v4, v1

    .line 839
    goto :goto_4
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1609
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1054
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-object p1

    .line 1058
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1059
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1061
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1062
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1063
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p1, v0

    .line 1064
    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 866
    const/16 v0, 0x8

    .line 867
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->y:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->D:Z

    if-nez v1, :cond_1

    .line 869
    :cond_0
    const/4 v0, 0x0

    .line 871
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 872
    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1120
    .line 1121
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1122
    const/4 v0, 0x0

    .line 1123
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1125
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1126
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private e()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 845
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    const/4 v1, 0x0

    .line 847
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 848
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/content/Intent;

    .line 852
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 853
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 855
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 858
    :cond_1
    return v0

    .line 849
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/content/Intent;

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->y:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->D:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 875
    const/16 v0, 0x8

    .line 876
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 879
    :cond_0
    const/4 v0, 0x0

    .line 881
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 882
    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 815
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyf;->abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 885
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 888
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->v:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->F:Z

    if-nez v3, :cond_3

    .line 889
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 891
    if-eqz v1, :cond_1

    .line 892
    if-eqz v2, :cond_5

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 894
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 885
    goto :goto_0

    :cond_3
    move v0, v1

    .line 888
    goto :goto_1

    .line 889
    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    .line 892
    :cond_5
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private i()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 898
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 1068
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1069
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1070
    return-void
.end method

.method private l()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1077
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1078
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1079
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1082
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_0

    .line 1085
    const v2, -0x10001

    and-int/2addr v0, v2

    .line 1086
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1087
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 1094
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 1097
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1098
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltm;->a(Landroid/database/Cursor;)V

    .line 1103
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1104
    new-instance v0, Lago;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->M:Ljava/util/WeakHashMap;

    invoke-direct {v0, v2, p0, v3, v4}, Lago;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    .line 1106
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1107
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    check-cast v0, Lago;

    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->A:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    invoke-virtual {v0, v1}, Lago;->a(I)V

    .line 1111
    :cond_3
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1154
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1155
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1156
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Lagl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Lagl;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lagl;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1158
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1159
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Landroid/support/v7/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1161
    :cond_1
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1162
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->n()V

    .line 1165
    :cond_2
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1169
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1174
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->v:Z

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Lagk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Lagk;

    invoke-interface {v0}, Lagk;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1180
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1189
    :cond_1
    :goto_0
    return-void

    .line 1184
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1186
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1193
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1194
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1195
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1198
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1604
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Lagj;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lagj;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1605
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Lagj;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lagj;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 1606
    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 3

    .prologue
    .line 922
    if-eqz p1, :cond_1

    .line 923
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 926
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 929
    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1415
    return-void

    .line 1414
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1258
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z

    if-eqz v0, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1260
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z

    .line 1261
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->G:I

    .line 1262
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->G:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1263
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 940
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 941
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 584
    if-eqz p1, :cond_0

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 586
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->E:Ljava/lang/CharSequence;

    .line 590
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->m()V

    .line 593
    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1246
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 1247
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1248
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1249
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->G:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1250
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->F:Z

    .line 1251
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->w:Z

    return v0
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->B:Z

    .line 510
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 511
    invoke-super {p0}, Ladt;->clearFocus()V

    .line 512
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 513
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->B:Z

    .line 514
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 1225
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1228
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()V

    .line 1229
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->q()V

    .line 1232
    :cond_0
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Landroid/support/v7/widget/SearchView;->C:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Ljava/lang/CharSequence;

    .line 633
    :goto_0
    return-object v0

    .line 628
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 631
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getSuggestionCommitIconResId()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Landroid/support/v7/widget/SearchView;->m:I

    return v0
.end method

.method public getSuggestionRowLayout()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Landroid/support/v7/widget/SearchView;->l:I

    return v0
.end method

.method public getSuggestionsAdapter()Ltm;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 917
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 918
    invoke-super {p0}, Ladt;->onDetachedFromWindow()V

    .line 919
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-super {p0, p1, p2}, Ladt;->onMeasure(II)V

    .line 812
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 788
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 790
    sparse-switch v1, :sswitch_data_0

    .line 810
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 811
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Ladt;->onMeasure(II)V

    goto :goto_0

    .line 793
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->C:I

    if-lez v1, :cond_2

    .line 794
    iget v1, p0, Landroid/support/v7/widget/SearchView;->C:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 796
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 801
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->C:I

    if-lez v1, :cond_1

    .line 802
    iget v1, p0, Landroid/support/v7/widget/SearchView;->C:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 807
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->C:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->C:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    .line 790
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1236
    invoke-super {p0, p1}, Ladt;->onWindowFocusChanged(Z)V

    .line 1238
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()V

    .line 1239
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 491
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->B:Z

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 496
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 497
    if-eqz v1, :cond_2

    .line 498
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_2
    move v0, v1

    .line 500
    goto :goto_0

    .line 502
    :cond_3
    invoke-super {p0, p1, p2}, Ladt;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/os/Bundle;

    .line 448
    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    .prologue
    .line 672
    if-eqz p1, :cond_0

    .line 673
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->o()V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->p()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->v:Z

    if-ne v0, p1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 648
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->v:Z

    .line 649
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 650
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 458
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 477
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 765
    iput p1, p0, Landroid/support/v7/widget/SearchView;->C:I

    .line 767
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 768
    return-void
.end method

.method public setOnCloseListener(Lagk;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->r:Lagk;

    .line 533
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View$OnFocusChangeListener;

    .line 542
    return-void
.end method

.method public setOnQueryTextListener(Lagl;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->q:Lagl;

    .line 524
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View$OnClickListener;

    .line 563
    return-void
.end method

.method public setOnSuggestionListener(Lagm;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->t:Lagm;

    .line 551
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->z:Ljava/lang/CharSequence;

    .line 606
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()V

    .line 607
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .prologue
    .line 726
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->A:Z

    .line 727
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    instance-of v0, v0, Lago;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    check-cast v0, Lago;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lago;->a(I)V

    .line 731
    :cond_0
    return-void

    .line 728
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2

    .prologue
    .line 423
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    .line 424
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    .line 425
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->b:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->l()V

    .line 428
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()V

    .line 431
    :cond_1
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->b:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->D:Z

    .line 433
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->D:Z

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 438
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 439
    return-void

    .line 431
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 698
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->y:Z

    .line 699
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 700
    return-void
.end method

.method public setSuggestionsAdapter(Ltm;)V
    .locals 2

    .prologue
    .line 748
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    .line 750
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->x:Ltm;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 751
    return-void
.end method

.class public Lcha;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lchd",
        "<TT;>;>;",
        "Lahq;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Lcjg;

.field private final e:Lchh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lchh;)V
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f04001c

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 141
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcha;->a:Ljava/util/concurrent/Executor;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcha;->b:Landroid/view/LayoutInflater;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcha;->c:Landroid/content/pm/PackageManager;

    .line 73
    new-instance v0, Lcjg;

    invoke-direct {v0, p1}, Lcjg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcha;->d:Lcjg;

    .line 74
    iput-object p2, p0, Lcha;->e:Lchh;

    .line 75
    return-void
.end method

.method static synthetic a(Lchd;Lchd;)I
    .locals 1

    invoke-static {p0, p1}, Lcha;->b(Lchd;Lchd;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcha;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcha;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private static synthetic b(Lchd;Lchd;)I
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lchd;->i:Lche;

    iget v0, v0, Lche;->a:I

    iget-object v1, p1, Lchd;->i:Lche;

    iget v1, v1, Lche;->a:I

    sub-int/2addr v0, v1

    .line 81
    iget v1, p0, Lchd;->h:I

    iget v2, p1, Lchd;->h:I

    sub-int/2addr v1, v2

    .line 82
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lchd;->c:Ljava/lang/String;

    iget-object v1, p1, Lchd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcha;)Lchh;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcha;->e:Lchh;

    return-object v0
.end method

.method static synthetic c(Lcha;)Lcjg;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcha;->d:Lcjg;

    return-object v0
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcha;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    iget-object v0, v0, Lchd;->i:Lche;

    iget v0, v0, Lche;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 144
    .line 145
    if-nez p2, :cond_0

    .line 146
    new-instance v1, Lchg;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lchg;-><init>(Lchc;)V

    .line 147
    iget-object v0, p0, Lcha;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f04001d

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 148
    const v0, 0x7f0f0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lchg;->a:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0f0078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lchg;->b:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Lcha;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    iget-object v0, v0, Lchd;->i:Lche;

    .line 154
    iget-object v3, v1, Lchg;->a:Landroid/widget/TextView;

    iget v4, v0, Lche;->b:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v3, v1, Lchg;->b:Landroid/widget/ImageView;

    iget-object v4, v0, Lche;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, v1, Lchg;->b:Landroid/widget/ImageView;

    iget-object v0, v0, Lche;->c:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 158
    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    invoke-virtual {p2, v0, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 160
    return-object p2

    .line 151
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchg;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 156
    goto :goto_1

    .line 158
    :cond_2
    const v2, 0x7f020078

    goto :goto_2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lchb;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcha;->sort(Ljava/util/Comparator;)V

    .line 84
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcha;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    .line 89
    if-nez p2, :cond_3

    .line 90
    iget-object v1, p0, Lcha;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f04001c

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v2, Lchf;

    invoke-direct {v2, v5}, Lchf;-><init>(Lchc;)V

    .line 92
    const v1, 0x7f0f0075

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lchf;->a:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0f0076

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lchf;->b:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0f0073

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lchf;->c:Landroid/widget/ImageView;

    .line 95
    const v1, 0x7f0f0074

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lchf;->d:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x106000b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    move-object v1, v2

    .line 105
    :cond_0
    :goto_0
    iget-object v2, v1, Lchf;->a:Landroid/widget/TextView;

    iget-object v5, v0, Lchd;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, v1, Lchf;->a:Landroid/widget/TextView;

    iget v5, v0, Lchd;->d:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v2, v1, Lchf;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lchd;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v5, v1, Lchf;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lchd;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v2, v1, Lchf;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 110
    iget-object v2, v1, Lchf;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, v0, Lchd;->f:Landroid/graphics/drawable/Drawable;

    if-eq v2, v5, :cond_2

    .line 111
    iget-object v2, v1, Lchf;->d:Landroid/widget/ImageView;

    iget-object v5, v0, Lchd;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v2, v1, Lchf;->d:Landroid/widget/ImageView;

    iget-object v5, v0, Lchd;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v2, v1, Lchf;->d:Landroid/widget/ImageView;

    iget-object v4, v0, Lchd;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_2
    iget-object v2, v0, Lchd;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 116
    iget-object v2, v1, Lchf;->c:Landroid/widget/ImageView;

    .line 117
    iget-object v4, v1, Lchf;->a:Landroid/widget/TextView;

    .line 118
    new-instance v5, Lchc;

    invoke-direct {v5, p0, v0, v4, v2}, Lchc;-><init>(Lcha;Lchd;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iget-object v2, p0, Lcha;->a:Ljava/util/concurrent/Executor;

    new-array v4, v6, [Ljava/lang/String;

    iget-object v0, v0, Lchd;->a:Ljava/lang/String;

    aput-object v0, v4, v3

    .line 136
    invoke-virtual {v5, v2, v4}, Lchc;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, v1, Lchf;->e:Landroid/os/AsyncTask;

    .line 138
    :goto_2
    return-object p2

    .line 100
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchf;

    .line 101
    iget-object v2, v1, Lchf;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lchf;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_4
    iget-object v2, v1, Lchf;->e:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lchf;->e:Landroid/os/AsyncTask;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_5
    move v2, v4

    .line 108
    goto :goto_1

    .line 137
    :cond_6
    iget-object v0, v1, Lchf;->c:Landroid/widget/ImageView;

    const v1, 0x1080045

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

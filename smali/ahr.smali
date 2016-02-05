.class public final Lahr;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lahq;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Landroid/database/DataSetObserver;

.field private g:Lahu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lahq;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lahr;->b:Ljava/util/List;

    .line 38
    new-instance v0, Lahs;

    invoke-direct {v0, p0}, Lahs;-><init>(Lahr;)V

    iput-object v0, p0, Lahr;->f:Landroid/database/DataSetObserver;

    .line 49
    iput-object p1, p0, Lahr;->c:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lahr;->a:Lahq;

    .line 51
    iget-object v0, p0, Lahr;->f:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lahq;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 52
    return-void
.end method

.method private a(Lahy;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p1, Lahy;->d:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lahr;->a:Lahq;

    invoke-interface {v1, p2, v0, p1}, Lahq;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header view must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 139
    new-instance v1, Laht;

    invoke-direct {v1, p0, p2}, Laht;-><init>(Lahr;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-object v0
.end method

.method static synthetic a(Lahr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lahr;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Lahy;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p1, Lahy;->d:Landroid/view/View;

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lahr;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    return-void
.end method

.method static synthetic b(Lahr;)Lahu;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lahr;->g:Lahu;

    return-object v0
.end method

.method private b(I)Z
    .locals 4

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0, p1}, Lahq;->a(I)J

    move-result-wide v0

    iget-object v2, p0, Lahr;->a:Lahq;

    .line 156
    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Lahq;->a(I)J

    move-result-wide v2

    .line 155
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 154
    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Lahy;
    .locals 4

    .prologue
    .line 161
    if-nez p2, :cond_1

    new-instance p2, Lahy;

    iget-object v0, p0, Lahr;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lahy;-><init>(Landroid/content/Context;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lahr;->a:Lahq;

    iget-object v1, p2, Lahy;->a:Landroid/view/View;

    invoke-interface {v0, p1, v1, p2}, Lahq;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1}, Lahr;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-direct {p0, p2}, Lahr;->a(Lahy;)V

    .line 169
    :goto_1
    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_3

    instance-of v2, p2, Lahp;

    if-nez v2, :cond_3

    .line 171
    new-instance p2, Lahp;

    iget-object v2, p0, Lahr;->c:Landroid/content/Context;

    invoke-direct {p2, v2}, Lahp;-><init>(Landroid/content/Context;)V

    .line 175
    :cond_0
    :goto_2
    iget-object v2, p0, Lahr;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lahr;->e:I

    invoke-virtual {p2, v1, v0, v2, v3}, Lahy;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 176
    return-object p2

    .line 161
    :cond_1
    check-cast p2, Lahy;

    goto :goto_0

    .line 167
    :cond_2
    invoke-direct {p0, p2, p1}, Lahr;->a(Lahy;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 172
    :cond_3
    instance-of v2, v1, Landroid/widget/Checkable;

    if-nez v2, :cond_0

    instance-of v2, p2, Lahp;

    if-eqz v2, :cond_0

    .line 173
    new-instance p2, Lahy;

    iget-object v2, p0, Lahr;->c:Landroid/content/Context;

    invoke-direct {p2, v2}, Lahy;-><init>(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lahr;->e:I

    .line 60
    return-void
.end method

.method public a(Lahu;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lahr;->g:Lahu;

    .line 181
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lahr;->d:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0}, Lahq;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0}, Lahq;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0, p1}, Lahq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0, p1}, Lahq;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0, p1}, Lahq;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lahr;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Lahy;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0}, Lahq;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0}, Lahq;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0}, Lahq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0, p1}, Lahq;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0, p1}, Lahq;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lahr;->a:Lahq;

    invoke-interface {v0, p1}, Lahq;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 80
    return-void
.end method

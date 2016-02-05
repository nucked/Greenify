.class Lagg;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lage;


# direct methods
.method private constructor <init>(Lage;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lagg;->a:Lage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lage;Lagf;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lagg;-><init>(Lage;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lagg;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Ladt;

    move-result-object v0

    invoke-virtual {v0}, Ladt;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lagg;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Ladt;

    move-result-object v0

    invoke-virtual {v0, p1}, Ladt;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lagi;

    invoke-virtual {v0}, Lagi;->b()Lwa;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 557
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 562
    if-nez p2, :cond_0

    .line 563
    iget-object v1, p0, Lagg;->a:Lage;

    invoke-virtual {p0, p1}, Lagg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwa;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lage;->a(Lage;Lwa;Z)Lagi;

    move-result-object p2

    .line 567
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 565
    check-cast v0, Lagi;

    invoke-virtual {p0, p1}, Lagg;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwa;

    invoke-virtual {v0, v1}, Lagi;->a(Lwa;)V

    goto :goto_0
.end method

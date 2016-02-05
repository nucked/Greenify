.class Lagh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lage;


# direct methods
.method private constructor <init>(Lage;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lagh;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lage;Lagf;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lagh;-><init>(Lage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 573
    move-object v0, p1

    check-cast v0, Lagi;

    .line 574
    invoke-virtual {v0}, Lagi;->b()Lwa;

    move-result-object v0

    invoke-virtual {v0}, Lwa;->d()V

    .line 575
    iget-object v0, p0, Lagh;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Ladt;

    move-result-object v0

    invoke-virtual {v0}, Ladt;->getChildCount()I

    move-result v3

    move v2, v1

    .line 576
    :goto_0
    if-ge v2, v3, :cond_1

    .line 577
    iget-object v0, p0, Lagh;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Ladt;

    move-result-object v0

    invoke-virtual {v0, v2}, Ladt;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 578
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 576
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 578
    goto :goto_1

    .line 580
    :cond_1
    return-void
.end method

.class Lwi;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lwh;


# direct methods
.method constructor <init>(Lwh;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lwi;->b:Lwh;

    iput-object p6, p0, Lwi;->a:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 886
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lwi;->b:Lwh;

    iget-object v1, v1, Lwh;->C:[Z

    if-eqz v1, :cond_0

    .line 888
    iget-object v1, p0, Lwi;->b:Lwh;

    iget-object v1, v1, Lwh;->C:[Z

    aget-boolean v1, v1, p1

    .line 889
    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lwi;->a:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 893
    :cond_0
    return-object v0
.end method

.class Lact;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lacp;

.field final synthetic b:Lacs;


# direct methods
.method constructor <init>(Lacs;Lacp;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lact;->b:Lacs;

    iput-object p2, p0, Lact;->a:Lacp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 695
    iget-object v0, p0, Lact;->b:Lacs;

    iget-object v0, v0, Lacs;->a:Lacp;

    invoke-virtual {v0, p3}, Lacp;->setSelection(I)V

    .line 696
    iget-object v0, p0, Lact;->b:Lacs;

    iget-object v0, v0, Lacs;->a:Lacp;

    invoke-virtual {v0}, Lacp;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lact;->b:Lacs;

    iget-object v0, v0, Lacs;->a:Lacp;

    iget-object v1, p0, Lact;->b:Lacs;

    invoke-static {v1}, Lacs;->a(Lacs;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lacp;->performItemClick(Landroid/view/View;IJ)Z

    .line 700
    :cond_0
    iget-object v0, p0, Lact;->b:Lacs;

    invoke-virtual {v0}, Lacs;->i()V

    .line 701
    return-void
.end method

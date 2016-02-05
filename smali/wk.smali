.class Lwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lwb;

.field final synthetic b:Lwh;


# direct methods
.method constructor <init>(Lwh;Lwb;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lwk;->b:Lwh;

    iput-object p2, p0, Lwk;->a:Lwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 956
    iget-object v0, p0, Lwk;->b:Lwh;

    iget-object v0, v0, Lwh;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lwk;->a:Lwb;

    invoke-static {v1}, Lwb;->g(Lwb;)Lxp;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 957
    iget-object v0, p0, Lwk;->b:Lwh;

    iget-boolean v0, v0, Lwh;->E:Z

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lwk;->a:Lwb;

    invoke-static {v0}, Lwb;->g(Lwb;)Lxp;

    move-result-object v0

    invoke-virtual {v0}, Lxp;->dismiss()V

    .line 960
    :cond_0
    return-void
.end method

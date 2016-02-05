.class Lbyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbyk;

.field final synthetic c:Lbxt;


# direct methods
.method constructor <init>(Lbxt;Landroid/app/Activity;Lbyk;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lbyf;->c:Lbxt;

    iput-object p2, p0, Lbyf;->a:Landroid/app/Activity;

    iput-object p3, p0, Lbyf;->b:Lbyk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lbyf;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbyf;->b:Lbyk;

    iget v1, v1, Lbyk;->f:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 444
    return-void
.end method

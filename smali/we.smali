.class Lwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lwb;


# direct methods
.method constructor <init>(Lwb;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lwe;->c:Lwb;

    iput-object p2, p0, Lwe;->a:Landroid/view/View;

    iput-object p3, p0, Lwe;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lwe;->c:Lwb;

    invoke-static {v0}, Lwb;->i(Lwb;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    iget-object v1, p0, Lwe;->a:Landroid/view/View;

    iget-object v2, p0, Lwe;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lwb;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 557
    return-void
.end method

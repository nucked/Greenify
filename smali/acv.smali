.class Lacv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic b:Lacs;


# direct methods
.method constructor <init>(Lacs;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lacv;->b:Lacs;

    iput-object p2, p0, Lacv;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lacv;->b:Lacs;

    iget-object v0, v0, Lacs;->a:Lacp;

    invoke-virtual {v0}, Lacp;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_0

    .line 800
    iget-object v1, p0, Lacv;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 802
    :cond_0
    return-void
.end method

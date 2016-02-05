.class Ldy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lea;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Ldv;


# direct methods
.method constructor <init>(Ldv;Landroid/view/View;Lea;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Ldy;->e:Ldv;

    iput-object p2, p0, Ldy;->a:Landroid/view/View;

    iput-object p3, p0, Ldy;->b:Lea;

    iput p4, p0, Ldy;->c:I

    iput-object p5, p0, Ldy;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 1362
    iget-object v0, p0, Ldy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1363
    iget-object v0, p0, Ldy;->e:Ldv;

    iget-object v1, p0, Ldy;->b:Lea;

    iget v2, p0, Ldy;->c:I

    iget-object v3, p0, Ldy;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Ldv;->a(Ldv;Lea;ILjava/lang/Object;)V

    .line 1364
    const/4 v0, 0x1

    return v0
.end method

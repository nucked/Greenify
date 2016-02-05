.class Lacu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lacs;


# direct methods
.method constructor <init>(Lacs;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lacu;->a:Lacs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lacu;->a:Lacs;

    iget-object v1, p0, Lacu;->a:Lacs;

    iget-object v1, v1, Lacs;->a:Lacp;

    invoke-static {v0, v1}, Lacs;->a(Lacs;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lacu;->a:Lacs;

    invoke-virtual {v0}, Lacs;->i()V

    .line 792
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lacu;->a:Lacs;

    invoke-virtual {v0}, Lacs;->b()V

    .line 790
    iget-object v0, p0, Lacu;->a:Lacs;

    invoke-static {v0}, Lacs;->b(Lacs;)V

    goto :goto_0
.end method

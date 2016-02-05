.class final Lps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Lom;


# direct methods
.method constructor <init>(Lom;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lps;->a:Lom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lre;

    invoke-direct {v0, p2}, Lre;-><init>(Landroid/view/WindowInsets;)V

    .line 62
    iget-object v1, p0, Lps;->a:Lom;

    invoke-interface {v1, p1, v0}, Lom;->a(Landroid/view/View;Lrd;)Lrd;

    move-result-object v0

    check-cast v0, Lre;

    .line 64
    invoke-virtual {v0}, Lre;->g()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

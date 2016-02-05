.class public final Laj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom;


# instance fields
.field final synthetic a:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 2522
    iput-object p1, p0, Laj;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lrd;)Lrd;
    .locals 1

    .prologue
    .line 2525
    iget-object v0, p0, Laj;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0, p2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;Lrd;)V

    .line 2526
    invoke-virtual {p2}, Lrd;->f()Lrd;

    move-result-object v0

    return-object v0
.end method

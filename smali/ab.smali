.class public Lab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcr;


# instance fields
.field final synthetic a:Landroid/support/design/widget/CoordinatorLayout;

.field final synthetic b:Landroid/support/design/widget/AppBarLayout;

.field final synthetic c:Landroid/support/design/widget/AppBarLayout$Behavior;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lab;->c:Landroid/support/design/widget/AppBarLayout$Behavior;

    iput-object p2, p0, Lab;->a:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Lab;->b:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcp;)V
    .locals 4

    .prologue
    .line 822
    iget-object v0, p0, Lab;->c:Landroid/support/design/widget/AppBarLayout$Behavior;

    iget-object v1, p0, Lab;->a:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lab;->b:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Lcp;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 824
    return-void
.end method

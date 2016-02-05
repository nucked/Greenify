.class public Lau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcr;


# instance fields
.field final synthetic a:Landroid/support/design/widget/FloatingActionButton;

.field final synthetic b:Landroid/support/design/widget/FloatingActionButton$Behavior;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/FloatingActionButton$Behavior;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lau;->b:Landroid/support/design/widget/FloatingActionButton$Behavior;

    iput-object p2, p0, Lau;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcp;)V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lau;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Lcp;->d()F

    move-result v1

    invoke-static {v0, v1}, Lou;->b(Landroid/view/View;F)V

    .line 494
    return-void
.end method

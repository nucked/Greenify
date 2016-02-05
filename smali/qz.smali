.class final Lqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lrc;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lrc;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lqz;->a:Lrc;

    iput-object p2, p0, Lqz;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lqz;->a:Lrc;

    iget-object v1, p0, Lqz;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lrc;->a(Landroid/view/View;)V

    .line 31
    return-void
.end method

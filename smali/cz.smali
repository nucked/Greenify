.class Lcz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcv;

.field final synthetic b:Lcy;


# direct methods
.method constructor <init>(Lcy;Lcv;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcz;->b:Lcy;

    iput-object p2, p0, Lcz;->a:Lcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcz;->a:Lcv;

    invoke-interface {v0}, Lcv;->a()V

    .line 53
    return-void
.end method

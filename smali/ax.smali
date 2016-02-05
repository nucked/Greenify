.class Lax;
.super Laa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbg;

.field final synthetic b:Lav;


# direct methods
.method constructor <init>(Lav;Lbg;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lax;->b:Lav;

    iput-object p2, p0, Lax;->a:Lbg;

    invoke-direct {p0}, Laa;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lax;->a:Lbg;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lax;->a:Lbg;

    invoke-interface {v0}, Lbg;->a()V

    .line 206
    :cond_0
    return-void
.end method

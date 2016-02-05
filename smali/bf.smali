.class Lbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lbe;


# direct methods
.method constructor <init>(Lbe;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lbf;->a:Lbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lbf;->a:Lbe;

    invoke-virtual {v0}, Lbe;->c()V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

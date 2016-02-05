.class public Las;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lom;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p1}, Lou;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p1, p2}, Lou;->a(Landroid/view/View;Lom;)V

    .line 30
    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    :cond_0
    return-void
.end method

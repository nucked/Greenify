.class public Lagy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Labk;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lagy;->a:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lagy;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;)Lahd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lagy;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;)Lahd;

    move-result-object v0

    invoke-interface {v0, p1}, Lahd;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

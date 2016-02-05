.class public Lcau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/HibernationRestrictedService;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcau;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 117
    const-string v0, "Hyber.NR"

    const-string v1, "Dim mask is shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcau;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Lcci;

    move-result-object v0

    const/16 v1, 0x2af8

    invoke-virtual {v0, v1}, Lcci;->a(I)Z

    .line 119
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    const-string v0, "Hyber.NR"

    const-string v1, "Dim mask is cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.class public Lcar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/GreenifyApplication;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/GreenifyApplication;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcar;->a:Lcom/oasisfeng/greenify/GreenifyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcar;->a:Lcom/oasisfeng/greenify/GreenifyApplication;

    invoke-virtual {v0, p0}, Lcom/oasisfeng/greenify/GreenifyApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcje;->a(Landroid/app/Application;)V

    .line 50
    invoke-static {}, Lcbp;->a()Lcbp;

    .line 51
    invoke-static {}, Lcbd;->a()Lcbd;

    .line 52
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

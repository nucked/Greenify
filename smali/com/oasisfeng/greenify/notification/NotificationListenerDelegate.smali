.class public Lcom/oasisfeng/greenify/notification/NotificationListenerDelegate;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private a:Lceh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 14
    new-instance v0, Lceh;

    invoke-direct {v0, p0}, Lceh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/notification/NotificationListenerDelegate;->a:Lceh;

    .line 15
    iget-object v0, p0, Lcom/oasisfeng/greenify/notification/NotificationListenerDelegate;->a:Lceh;

    invoke-virtual {v0}, Lceh;->a()V

    .line 16
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oasisfeng/greenify/notification/NotificationListenerDelegate;->a:Lceh;

    invoke-virtual {v0}, Lceh;->b()V

    .line 20
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 21
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oasisfeng/greenify/notification/NotificationListenerDelegate;->a:Lceh;

    invoke-virtual {v0, p1}, Lceh;->a(Landroid/service/notification/StatusBarNotification;)V

    .line 25
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oasisfeng/greenify/notification/NotificationListenerDelegate;->a:Lceh;

    invoke-virtual {v0, p1}, Lceh;->b(Landroid/service/notification/StatusBarNotification;)V

    .line 29
    return-void
.end method

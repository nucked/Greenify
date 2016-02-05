.class public Lcit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public static a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    instance-of v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    if-eqz v0, :cond_0

    .line 142
    check-cast p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    invoke-static {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->d(Lcom/oasisfeng/nevo/StatusBarNotificationCompat;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

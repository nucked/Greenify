.class public Lcis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# direct methods
.method public static a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    instance-of v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    if-eqz v0, :cond_0

    .line 132
    check-cast p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    invoke-static {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->c(Lcom/oasisfeng/nevo/StatusBarNotificationCompat;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

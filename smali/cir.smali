.class public Lcir;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    sput v0, Lcir;->a:I

    .line 116
    :try_start_0
    const-class v0, Landroid/service/notification/StatusBarNotification;

    const-string v2, "getUid"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    sput-object v0, Lcir;->b:Ljava/lang/reflect/Method;

    .line 119
    if-nez v0, :cond_0

    .line 120
    :try_start_1
    const-class v0, Landroid/service/notification/StatusBarNotification;

    const-string v2, "uid"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 121
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :cond_0
    :goto_1
    sput-object v1, Lcir;->c:Ljava/lang/reflect/Field;

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x7c

    .line 74
    instance-of v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 75
    check-cast v0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    invoke-static {v0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->a(Lcom/oasisfeng/nevo/StatusBarNotificationCompat;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcis;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcir;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcir;->c(Landroid/service/notification/StatusBarNotification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    instance-of v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 85
    check-cast v0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    invoke-static {v0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->b(Lcom/oasisfeng/nevo/StatusBarNotificationCompat;)Ljava/lang/String;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcit;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lgf;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lgf;->c(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    .line 91
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-static {p0}, Lcir;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static c(Landroid/service/notification/StatusBarNotification;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    sget-object v0, Lcir;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    sget-object v0, Lcir;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :cond_0
    sget-object v0, Lcir;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 104
    :try_start_1
    sget-object v0, Lcir;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 106
    :cond_1
    const-string v0, "SbnCompat"

    const-string v2, "Incompatible ROM: StatusBarNotification"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 107
    goto :goto_0
.end method

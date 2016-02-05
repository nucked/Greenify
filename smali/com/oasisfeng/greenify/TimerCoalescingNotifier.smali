.class public Lcom/oasisfeng/greenify/TimerCoalescingNotifier;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private a:Lcba;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/Notification;
    .locals 7

    .prologue
    .line 53
    invoke-static {p1}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbxd;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    invoke-static {p3, p4}, Lcom/oasisfeng/greenify/TimerCoalescingNotifier;->a(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ACK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "package"

    .line 56
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "interval"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    .line 57
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 61
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02008b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108004a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0800c2

    .line 63
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/oasisfeng/greenify/TimerCoalescingNotifier;->a:Lcba;

    invoke-virtual {v1}, Lcba;->a()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const v1, 0x7f0800c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static a(J)Ljava/lang/StringBuilder;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 74
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 75
    div-long v2, v0, v6

    rem-long/2addr v0, v6

    .line 76
    div-long v4, v2, v6

    rem-long/2addr v2, v6

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    cmp-long v2, v0, v8

    if-lez v2, :cond_2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :cond_2
    return-object v6
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/TimerCoalescingNotifier;->a:Lcba;

    if-nez v0, :cond_2

    new-instance v0, Lcba;

    invoke-direct {v0, p1}, Lcba;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/TimerCoalescingNotifier;->a:Lcba;

    .line 32
    :cond_2
    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    const-string v0, "interval"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 34
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 35
    const-string v1, "ACK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/oasisfeng/greenify/TimerCoalescingNotifier;->a:Lcba;

    invoke-virtual {v1, v3, v4, v5}, Lcba;->a(Ljava/lang/String;J)V

    .line 37
    const-string v1, "Coalesce"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 38
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->k:Lcbi;

    const-string v2, "Confirm"

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    goto :goto_0

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/oasisfeng/greenify/TimerCoalescingNotifier;->a:Lcba;

    invoke-virtual {v1, v3}, Lcba;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 47
    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    .line 48
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_4

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 49
    :cond_4
    const-string v1, "Coalesce"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/oasisfeng/greenify/TimerCoalescingNotifier;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.class public Lceh;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private a:Lccn;

.field private b:Landroid/app/NotificationManager;

.field private c:Lbwn;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Notification;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lceh;->g:Ljava/util/Map;

    .line 211
    instance-of v0, p1, Landroid/accessibilityservice/AccessibilityService;

    iput-boolean v0, p0, Lceh;->i:Z

    .line 212
    iget-boolean v0, p0, Lceh;->i:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/service/notification/NotificationListenerService;

    if-nez v0, :cond_1

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context should be either AccessibilityService or NotificationListenerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lceh;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(Lceh;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lceh;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 198
    return-void
.end method

.method private a(Landroid/app/Notification;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    const v0, 0x7f02008c

    iput v0, p1, Landroid/app/Notification;->icon:I

    .line 134
    const/4 v0, 0x0

    iput v0, p1, Landroid/app/Notification;->iconLevel:I

    .line 135
    iget-object v0, p0, Lceh;->c:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iput-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 137
    iput-object v1, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 139
    :cond_0
    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 140
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 141
    iput-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 142
    iput-object v1, p1, Landroid/app/Notification;->vibrate:[J

    .line 145
    :cond_1
    invoke-direct {p0, p1}, Lceh;->a(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lceh;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p3, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 147
    :cond_2
    return-void
.end method

.method static synthetic a(Lceh;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lceh;->a(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Notification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 126
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 127
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lceh;->a(Landroid/app/Notification;Ljava/lang/String;I)V

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 129
    :cond_1
    const-string v0, "Afterimage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifications cloned for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 3

    .prologue
    .line 110
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lceh;->a:Lccn;

    invoke-virtual {v0, p1}, Lccn;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lceh;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget v0, p4, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lceh;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 116
    if-nez v0, :cond_2

    iget-object v1, p0, Lceh;->g:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_2
    invoke-static {p2, p3}, Lceh;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    const-string v0, "Afterimage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification saved for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lceh;->b:Landroid/app/NotificationManager;

    invoke-static {p1, p2}, Lceh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Landroid/app/Notification;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return v0

    .line 153
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    iget-object v1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    const-string v3, "Bad notification"

    invoke-virtual {v2, v3, v1}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 168
    add-int/lit8 v0, p1, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lccn;

    invoke-direct {v0, p0}, Lccn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lceh;->a:Lccn;

    .line 173
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lceh;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lceh;->b:Landroid/app/NotificationManager;

    .line 174
    new-instance v0, Lbwn;

    invoke-direct {v0, p0}, Lbwn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lceh;->c:Lbwn;

    .line 175
    invoke-virtual {p0}, Lceh;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lceh;->d:Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lceh;->h:Landroid/os/Handler;

    .line 179
    iget-boolean v0, p0, Lceh;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcej;

    invoke-direct {v0, p0}, Lcej;-><init>(Lceh;)V

    iput-object v0, p0, Lceh;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lceh;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcek;

    invoke-direct {v1, p0}, Lcek;-><init>(Lceh;)V

    iput-object v1, p0, Lceh;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lceh;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void
.end method

.method public a(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lceh;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 94
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lceh;->c:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, v1, v2, v3, v0}, Lceh;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lceh;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 202
    iget-object v0, p0, Lceh;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceh;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lceh;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    :cond_0
    iput-object v1, p0, Lceh;->e:Landroid/content/BroadcastReceiver;

    .line 204
    iget-object v0, p0, Lceh;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lceh;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lceh;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    :cond_1
    iput-object v1, p0, Lceh;->f:Landroid/content/BroadcastReceiver;

    .line 206
    iget-object v0, p0, Lceh;->a:Lccn;

    invoke-virtual {v0}, Lccn;->a()V

    .line 207
    return-void
.end method

.method public b(Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lceh;->h:Landroid/os/Handler;

    new-instance v2, Lcei;

    invoke-direct {v2, p0, v0, p1}, Lcei;-><init>(Lceh;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.class public Lcom/oasisfeng/greenify/HibernationRestrictedService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/view/WindowManager;

.field private f:Lbwn;

.field private g:Lcci;

.field private final h:Landroid/os/Handler;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/ComponentName;

.field private k:Landroid/view/View;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 146
    new-instance v0, Lcav;

    invoke-direct {v0, p0}, Lcav;-><init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Lcaw;

    invoke-direct {v0, p0}, Lcaw;-><init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b:Ljava/lang/Runnable;

    .line 252
    invoke-static {p0}, Lcat;->a(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->c:Ljava/lang/Runnable;

    .line 259
    new-instance v0, Lcax;

    invoke-direct {v0, p0}, Lcax;-><init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->d:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->h:Landroid/os/Handler;

    .line 296
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/HibernationRestrictedService;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->l:I

    return p1
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/HibernationLaunchpad;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14050000

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Lcci;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->g:Lcci;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->g:Lcci;

    const/16 v1, 0x2af8

    invoke-virtual {v0, v1}, Lcci;->a(I)Z

    .line 169
    :cond_0
    const-string v0, "Hyber.NR"

    const-string v1, "Start watchdog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    const-string v1, "Hyber.NR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start app setting activity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0, v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/HibernationRestrictedService;J)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(J)V

    return-void
.end method

.method private a(Ljava/util/List;ZZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->j:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 91
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-static {p0, v5}, Lccq;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 94
    iget-object v5, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 98
    :cond_4
    invoke-static {p0}, Lbzb;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    const-string v0, "Hyber.NR"

    const-string v2, "Accessibility service is disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    invoke-static {p0}, Lcci;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 102
    const-string v0, "Hyber.NR"

    const-string v2, "Key-guard cannot be dismissed. (secure and not in trusted state)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_6
    if-eqz p3, :cond_7

    invoke-static {p0}, Lcci;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 105
    const-string v0, "Hyber.NR"

    const-string v2, "Device-admin is not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 106
    goto :goto_0

    .line 111
    :cond_7
    if-eqz p3, :cond_8

    invoke-direct {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->c()V

    .line 112
    :cond_8
    if-nez p2, :cond_9

    .line 113
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->k:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->k:Landroid/view/View;

    new-instance v1, Lcau;

    invoke-direct {v1, p0}, Lcau;-><init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 130
    :cond_9
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->d:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbzb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    iput-boolean v2, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->m:Z

    .line 139
    if-eqz p3, :cond_a

    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->g:Lcci;

    invoke-virtual {v0}, Lcci;->a()V

    .line 141
    :cond_a
    invoke-direct {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a()V

    move v0, v2

    .line 143
    goto/16 :goto_0

    .line 125
    :cond_b
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->g:Lcci;

    const/16 v3, 0x2af8

    invoke-virtual {v0, v3}, Lcci;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto/16 :goto_0
.end method

.method private b()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/HibernationLaunchpad;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reset"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14050000

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->j:Landroid/content/ComponentName;

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40050000    # 2.078125f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 207
    const-string v0, "Hyber.NR"

    const-string v2, "Showing dim mask"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v3, 0x7da

    .line 210
    const/4 v0, 0x0

    .line 212
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_2

    .line 213
    const-string v2, "android:system_alert_window"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v4, v5}, Lbvg;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 214
    if-eqz v2, :cond_2

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v0, v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    sget-object v0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a:Landroid/os/IBinder;

    .line 217
    if-eqz v0, :cond_0

    .line 218
    const/16 v3, 0x7f0

    move-object v6, v0

    .line 221
    :goto_1
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(J)V

    .line 223
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x21838a

    const/4 v5, -0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 232
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 233
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, -0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 234
    iput-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 237
    :try_start_0
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 238
    iget-object v2, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->e:Landroid/view/WindowManager;

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iput-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->k:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "Hyber.NR"

    const-string v2, "Failed to create dim mask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    move-object v6, v0

    goto :goto_1
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a()V

    return-void
.end method

.method public static synthetic d(Lcom/oasisfeng/greenify/HibernationRestrictedService;)I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->l:I

    return v0
.end method

.method private synthetic d()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "Hyber.NR"

    const-string v1, "Clearing dim mask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->k:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->k:Landroid/view/View;

    goto :goto_0
.end method

.method public static synthetic e(Lcom/oasisfeng/greenify/HibernationRestrictedService;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->l:I

    return v0
.end method

.method public static synthetic f(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->d()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 267
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->e:Landroid/view/WindowManager;

    .line 268
    new-instance v0, Lbwn;

    invoke-direct {v0, p0}, Lbwn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->f:Lbwn;

    .line 269
    new-instance v0, Lcci;

    invoke-direct {v0, p0}, Lcci;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->g:Lcci;

    .line 270
    invoke-static {p0}, Lchx;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->j:Landroid/content/ComponentName;

    .line 271
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "Hyber.NR"

    const-string v1, "Service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :goto_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-static {p0, v0}, Lbzb;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->m:Z

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "Hyber.NR"

    const-string v1, "Kill app settings dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->startActivity(Landroid/content/Intent;)V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->m:Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->g:Lcci;

    invoke-virtual {v0}, Lcci;->b()Z

    .line 285
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(J)V

    .line 286
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 288
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->i:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 277
    :catch_0
    move-exception v0

    goto :goto_1

    .line 276
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 68
    invoke-static {p1}, Lcaz;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationRestrictedService;->f:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 70
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcaz;->c(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcaz;->a(Landroid/content/Intent;)Z

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->a(Ljava/util/List;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_1
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 68
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "Hyber.NR"

    const-string v2, "Unexpected exception during hibernation in non-root mode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->stopSelf()V

    goto :goto_1
.end method

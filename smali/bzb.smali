.class public Lbzb;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# static fields
.field private static final c:I

.field private static final k:[Ljava/lang/String;

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static p:I


# instance fields
.field protected a:J

.field protected b:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/Runnable;

.field private e:Z

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/ComponentName;

.field private n:Ljava/lang/Boolean;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    sput v0, Lbzb;->c:I

    .line 421
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "clear_user_data_text"

    aput-object v1, v0, v3

    const-string v1, "uninstall_text"

    aput-object v1, v0, v4

    const-string v1, "app_factory_reset"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "disable_text"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "enable_text"

    aput-object v2, v0, v1

    sput-object v0, Lbzb;->k:[Ljava/lang/String;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "finish_application"

    aput-object v2, v1, v3

    const-string v2, "force_stop"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lbzb;->l:Ljava/util/List;

    return-void

    .line 51
    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method

.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 393
    new-instance v0, Lbzf;

    invoke-direct {v0, p0}, Lbzf;-><init>(Lbzb;)V

    iput-object v0, p0, Lbzb;->d:Ljava/lang/Runnable;

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbzb;->e:Z

    .line 418
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbzb;->f:Landroid/os/Handler;

    .line 420
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbzb;->j:Ljava/util/Set;

    .line 415
    return-void
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/CharSequence;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 245
    sget v1, Lbzb;->p:I

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    sget v1, Lbzb;->p:I

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    const v2, 0xffff

    add-int/2addr v2, v1

    .line 247
    :goto_1
    if-gt v1, v2, :cond_0

    .line 248
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 249
    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 247
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static a(Landroid/view/accessibility/AccessibilityNodeInfo;Lbzg;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 333
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 334
    if-nez v1, :cond_1

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_1
    invoke-interface {p1, v1}, Lbzg;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 342
    :goto_1
    return-object v0

    .line 338
    :cond_2
    invoke-static {v1, p1}, Lbzb;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Lbzg;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 339
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 340
    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_1

    .line 342
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 278
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    .line 288
    :cond_0
    return-object v0

    .line 280
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 287
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    const-string v0, "Automator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying text of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 310
    const-string v1, "string"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 311
    if-nez v1, :cond_0

    .line 312
    const-string v0, "Automator"

    const-string v1, "  Not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    .line 315
    :cond_0
    sget v2, Lbzb;->p:I

    if-nez v2, :cond_1

    sput v1, Lbzb;->p:I

    .line 316
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/StringBuilder;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lbzb;->m:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-object v0

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lbzb;->m:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    invoke-static {v0, v1}, Lbzc;->a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;)Lbzg;

    move-result-object v0

    invoke-static {p2, v0}, Lbzb;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Lbzg;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v0, v1

    .line 241
    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lbzb;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 61
    return-void
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 68
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 69
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 70
    sget v2, Lbzb;->c:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 71
    const-class v2, Lbzb;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 75
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 77
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "Automator"

    const-string v2, "Failed to notify accessibility service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lbzb;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lbzb;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lbzb;->b(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lbzb;->b(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 179
    .line 180
    iget-object v0, p0, Lbzb;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzb;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 181
    :cond_0
    const-string v0, "com.android.settings:id/force_stop_button"

    invoke-static {p1, v0}, Lbzb;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 182
    iget-object v0, p0, Lbzb;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz v4, :cond_6

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbzb;->n:Ljava/lang/Boolean;

    :cond_1
    move-object v0, v4

    .line 184
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_7

    const-string v4, "com.android.settings:id/right_button"

    .line 185
    :goto_2
    if-nez v0, :cond_2

    invoke-static {p1, v4}, Lbzb;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 186
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lbzb;->j:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v0, v3

    .line 188
    :cond_4
    iget-object v5, p0, Lbzb;->g:Ljava/lang/String;

    .line 189
    if-nez v0, :cond_e

    invoke-static {p1, v5}, Lbzb;->b(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v4, v0

    .line 190
    :goto_3
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "!="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v5

    sget-object v6, Lcbi;->j:Lcbi;

    const-string v7, "ForceStopButtonMismatch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p0, p1}, Lbzb;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8, v3}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 193
    const-string v5, "Automator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Potential mismatched force-stop button: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    if-nez v4, :cond_8

    .line 196
    iput-object v3, p0, Lbzb;->n:Ljava/lang/Boolean;

    .line 212
    :goto_4
    return v2

    :cond_6
    move v0, v2

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_7
    const-string v4, "com.android.settings:id/left_button"

    goto/16 :goto_2

    .line 200
    :cond_8
    invoke-static {v4}, Lbzb;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v0, v5, :cond_9

    invoke-static {v4}, Lbzb;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 203
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v5, Lcbi;->j:Lcbi;

    const-string v6, "Invisible"

    invoke-virtual {v0, v5, v6, v3, v3}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v1

    .line 211
    :goto_5
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 212
    if-nez v0, :cond_c

    :goto_6
    move v2, v1

    goto :goto_4

    .line 204
    :cond_9
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 205
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v5, Lcbi;->j:Lcbi;

    const-string v6, "Unclickable"

    invoke-virtual {v0, v5, v6, v3, v3}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v1

    goto :goto_5

    .line 206
    :cond_a
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 207
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v5, Lcbi;->j:Lcbi;

    const-string v6, "Disabled"

    invoke-virtual {v0, v5, v6, v3, v3}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v1

    goto :goto_5

    :cond_b
    move v0, v2

    .line 208
    goto :goto_5

    :cond_c
    move v1, v2

    .line 212
    goto :goto_6

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move-object v4, v0

    goto/16 :goto_3

    :cond_f
    move-object v0, v3

    goto/16 :goto_1
.end method

.method static synthetic a(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    invoke-static {p0, p1}, Lbzb;->b(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 302
    :goto_0
    return-object v0

    .line 294
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_1

    .line 298
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {p1}, Lbzd;->a(Ljava/lang/String;)Lbzg;

    move-result-object v0

    invoke-static {p0, v0}, Lbzb;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Lbzg;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lbzb;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 65
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 346
    invoke-static {p0}, Lchx;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    sget-object v1, Lbzb;->l:Ljava/util/List;

    invoke-static {v1}, Lbmn;->a(Ljava/lang/Iterable;)Lbmn;

    move-result-object v1

    invoke-static {p0, v0}, Lbze;->a(Landroid/content/Context;Landroid/content/ComponentName;)Lbku;

    move-result-object v0

    .line 348
    invoke-virtual {v1, v0}, Lbmn;->b(Lbku;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic b(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lbzb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic b(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lbzb;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v4

    .line 226
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_0

    .line 229
    invoke-static {p0, v1}, Lbzb;->a(Landroid/content/res/Resources;Ljava/lang/CharSequence;)I

    move-result v2

    .line 230
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 231
    if-eqz v2, :cond_2

    .line 232
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_2
    :goto_1
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 237
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method private static synthetic b(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lbzb;->f:Landroid/os/Handler;

    iget-object v1, p0, Lbzb;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-boolean v0, p0, Lbzb;->e:Z

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v0, "Automator"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbzb;->e:Z

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lbzb;->b:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private static c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    if-nez p0, :cond_0

    .line 273
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 268
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    const-string v2, "Automator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to click "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_1
    const-string v0, "Automator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbzb;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    invoke-virtual {p0, p0}, Lbzb;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 365
    return-void
.end method

.method public a(Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lbzb;->m:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 355
    const-string v0, "Automator"

    const-string v1, "Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    sget v1, Lbzb;->c:I

    or-int/lit8 v1, v1, 0x20

    or-int/2addr v0, v1

    iput v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 357
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 358
    if-eqz p2, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbzb;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbzb;->m:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    goto :goto_0

    .line 359
    :cond_2
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    goto :goto_0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 13

    .prologue
    const-wide/16 v10, 0x1f40

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    sget v2, Lbzb;->c:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lbzb;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Lbzb;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lbzb;->b:Ljava/lang/CharSequence;

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-boolean v0, p0, Lbzb;->e:Z

    if-eqz v0, :cond_2

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    const-string v0, "Automator"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-boolean v7, p0, Lbzb;->e:Z

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbzb;->a:J

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lbzb;->o:I

    .line 94
    iget-object v0, p0, Lbzb;->f:Landroid/os/Handler;

    iget-object v1, p0, Lbzb;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object v0, p0, Lbzb;->f:Landroid/os/Handler;

    iget-object v1, p0, Lbzb;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    const-string v0, "Automator"

    const-string v1, "Start watchdog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lbzb;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->j:Lcbi;

    const-string v2, "Stop"

    iget-object v3, p0, Lbzb;->b:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lbzb;->a:J

    sub-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 100
    :cond_4
    invoke-direct {p0}, Lbzb;->c()V

    goto :goto_0

    .line 105
    :cond_5
    iget-boolean v1, p0, Lbzb;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbzb;->m:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 106
    const/16 v1, 0x20

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 108
    if-eqz v5, :cond_1

    .line 109
    iget-object v1, p0, Lbzb;->m:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lbzb;->m:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 112
    const-string v1, "Automator"

    const-string v2, "App setting window detected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 114
    iget v2, p0, Lbzb;->o:I

    if-ne v1, v2, :cond_6

    .line 115
    const-string v0, "Automator"

    const-string v1, "Skip detained window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 118
    :cond_6
    iput v1, p0, Lbzb;->o:I

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move v3, v0

    .line 122
    :goto_1
    iget-object v0, p0, Lbzb;->f:Landroid/os/Handler;

    iget-object v1, p0, Lbzb;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lbzb;->f:Landroid/os/Handler;

    iget-object v1, p0, Lbzb;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    const-string v0, "Automator"

    const-string v1, "Restart watchdog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, v5}, Lbzb;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    const/4 v0, 0x3

    if-le v3, v0, :cond_1

    .line 127
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->j:Lcbi;

    const-string v2, "Retries"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    goto/16 :goto_0

    .line 129
    :cond_7
    const/16 v0, 0xa

    if-gt v3, v0, :cond_8

    .line 132
    mul-int/lit8 v0, v3, 0x32

    .line 133
    const-string v1, "Automator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry in "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "ms"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 137
    :cond_8
    const-string v0, "Automator"

    const-string v1, "No more retries."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->j:Lcbi;

    const-string v2, "Missing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbzb;->g:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p0, v5}, Lbzb;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto/16 :goto_0

    .line 143
    :cond_9
    const-string v1, "android.app.AlertDialog"

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 144
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlertDialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_a
    const-string v1, "android:id/button1"

    invoke-static {v5, v1}, Lbzb;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 146
    if-nez v2, :cond_b

    .line 147
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :goto_2
    const-string v1, "android:id/button1"

    invoke-static {v5, v1}, Lbzb;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 152
    :cond_b
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lbzb;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbzb;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbzb;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lbzb;->i:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 155
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    move-object v2, v1

    move-object v1, v4

    .line 159
    :goto_3
    if-nez v1, :cond_e

    .line 161
    iget-object v3, p0, Lbzb;->h:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_e

    .line 163
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_d

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 168
    :goto_4
    invoke-static {v0}, Lbzb;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    .line 170
    if-nez v1, :cond_c

    if-nez v0, :cond_c

    if-eqz v2, :cond_c

    .line 171
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v3, Lcbi;->j:Lcbi;

    const-string v5, "OkButtonMismatch"

    invoke-virtual {v1, v3, v5, v2, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 172
    :cond_c
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto/16 :goto_0

    .line 164
    :cond_d
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_5

    .line 134
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 147
    :catch_1
    move-exception v1

    goto/16 :goto_2

    :cond_e
    move-object v0, v1

    goto :goto_4

    :cond_f
    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_3

    :cond_10
    move-object v1, v2

    move-object v2, v4

    goto :goto_3
.end method

.method public b()V
    .locals 2

    .prologue
    .line 408
    invoke-direct {p0}, Lbzb;->c()V

    .line 409
    const-string v0, "Automator"

    const-string v1, "Service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0, p0}, Lbzb;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 411
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 368
    invoke-static {p0}, Lchx;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lbzb;->m:Landroid/content/ComponentName;

    .line 369
    iget-object v0, p0, Lbzb;->m:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lchx;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    .line 371
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->j:Lcbi;

    const-string v2, "NoAppSettings"

    if-nez v4, :cond_0

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 372
    const-string v0, "Automator"

    const-string v1, "Hibernation automator failed to initialize due to incompatible ROM."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_1
    return-void

    .line 371
    :cond_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lbzb;->m:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 377
    iput-object v3, p0, Lbzb;->g:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lbzb;->l:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    :goto_2
    iget-object v0, p0, Lbzb;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lbzb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbzb;->g:Ljava/lang/String;

    goto :goto_2

    .line 381
    :cond_2
    iget-object v0, p0, Lbzb;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 382
    sget-object v3, Lbzb;->k:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_4

    aget-object v1, v3, v0

    .line 383
    invoke-static {p0, v2, v1}, Lbzb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lbzb;->j:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 387
    :cond_4
    const-string v0, "dlg_ok"

    invoke-static {p0, v2, v0}, Lbzb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbzb;->h:Ljava/lang/String;

    .line 388
    const-string v0, "dlg_cancel"

    invoke-static {p0, v2, v0}, Lbzb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbzb;->i:Ljava/lang/String;

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

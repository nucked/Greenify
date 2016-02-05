.class public Lcbg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:D

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcbg;->a:D

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcbg;->b:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcbg;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(D)V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 25
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    sput-wide v2, Lcbg;->a:D

    :goto_0
    return-void

    :cond_0
    div-double v0, v2, p0

    sput-wide v0, Lcbg;->a:D

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Lcbg;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    const-string v1, "purchase"

    new-instance v2, Laiy;

    invoke-direct {v2}, Laiy;-><init>()V

    invoke-virtual {v2, v0}, Laiy;->d(Ljava/lang/String;)Laiy;

    move-result-object v0

    sget-wide v2, Lcbg;->a:D

    invoke-virtual {v0, v2, v3}, Laiy;->a(D)Laiy;

    move-result-object v0

    const-string v2, "G"

    invoke-static {v1, p0, v0, v2}, Lcbg;->a(Ljava/lang/String;Ljava/lang/String;Laiy;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Lcbg;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "checkout"

    new-instance v1, Laiy;

    invoke-direct {v1}, Laiy;-><init>()V

    invoke-virtual {v1, p1}, Laiy;->d(Ljava/lang/String;)Laiy;

    move-result-object v1

    sget-wide v2, Lcbg;->a:D

    invoke-virtual {v1, v2, v3}, Laiy;->a(D)Laiy;

    move-result-object v1

    const-string v2, "G"

    invoke-static {v0, p0, v1, v2}, Lcbg;->a(Ljava/lang/String;Ljava/lang/String;Laiy;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Laiy;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p2, p1}, Laiy;->a(Ljava/lang/String;)Laiy;

    move-result-object v0

    invoke-static {p1}, Lcbg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laiy;->b(Ljava/lang/String;)Laiy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laiy;->b(I)Laiy;

    move-result-object v0

    invoke-virtual {v0, p3}, Laiy;->e(Ljava/lang/String;)Laiy;

    .line 61
    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Laiz;

    invoke-direct {v1, p0}, Laiz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Laiz;->a(Ljava/lang/String;)Laiz;

    move-result-object v0

    .line 64
    new-instance v1, Laip;

    invoke-direct {v1}, Laip;-><init>()V

    invoke-virtual {v1, v0}, Laip;->a(Laiz;)Lair;

    move-result-object v0

    check-cast v0, Laip;

    invoke-virtual {v0, p2}, Laip;->a(Laiy;)Lair;

    move-result-object v0

    check-cast v0, Laip;

    .line 65
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    invoke-virtual {v1}, Lcbd;->b()Laiv;

    move-result-object v1

    invoke-virtual {v0}, Laip;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Laiv;->a(Ljava/util/Map;)V

    .line 66
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Laip;

    invoke-direct {v0}, Laip;-><init>()V

    new-instance v1, Laiz;

    const-string v2, "detail"

    invoke-direct {v1, v2}, Laiz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Laip;->a(Laiz;)Lair;

    move-result-object v0

    check-cast v0, Laip;

    .line 29
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    new-instance v4, Laiy;

    invoke-direct {v4}, Laiy;-><init>()V

    invoke-virtual {v4, v2}, Laiy;->a(Ljava/lang/String;)Laiy;

    move-result-object v4

    invoke-static {v2}, Lcbg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Laiy;->b(Ljava/lang/String;)Laiy;

    move-result-object v2

    invoke-virtual {v2, v1}, Laiy;->d(Ljava/lang/String;)Laiy;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Laip;->a(Laiy;)Lair;

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    invoke-virtual {v1}, Lcbd;->b()Laiv;

    move-result-object v1

    invoke-virtual {v0}, Laip;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Laiv;->a(Ljava/util/Map;)V

    .line 35
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 48
    const-string v0, "refund"

    new-instance v1, Laiy;

    invoke-direct {v1}, Laiy;-><init>()V

    const-string v2, "G"

    invoke-static {v0, p0, v1, v2}, Lcbg;->a(Ljava/lang/String;Ljava/lang/String;Laiy;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    const-string v0, "purchase"

    new-instance v1, Laiy;

    invoke-direct {v1}, Laiy;-><init>()V

    invoke-virtual {v1, p1}, Laiy;->d(Ljava/lang/String;)Laiy;

    move-result-object v1

    sget-wide v2, Lcbg;->a:D

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Laiy;->a(D)Laiy;

    move-result-object v1

    const-string v2, "W"

    invoke-static {v0, p0, v1, v2}, Lcbg;->a(Ljava/lang/String;Ljava/lang/String;Laiy;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcbg;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-object v0

    .line 72
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcbg;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcbg;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    :goto_1
    move-object v0, p0

    .line 76
    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    const-string v0, "refund"

    new-instance v1, Laiy;

    invoke-direct {v1}, Laiy;-><init>()V

    invoke-virtual {v1, p1}, Laiy;->d(Ljava/lang/String;)Laiy;

    move-result-object v1

    const-string v2, "W"

    invoke-static {v0, p0, v1, v2}, Lcbg;->a(Ljava/lang/String;Ljava/lang/String;Laiy;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 82
    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object p0

    .line 83
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 85
    :cond_2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 89
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 90
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.class public Lcjr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
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

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xa

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcjr;->a:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcjr;->b:Ljava/util/Set;

    .line 23
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    const-string v1, "XposedHelpers"

    const-string v2, "XH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    const-string v1, "XposedBridge"

    const-string v2, "XB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    const-string v1, "XposedModule"

    const-string v2, "XM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    const-string v1, "XposedPatch"

    const-string v2, "XP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    const-string v1, "SafeMethodHook"

    const-string v2, "SMH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    const-string v1, "ActivityManagerService"

    const-string v2, "AMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    const-string v1, "ActivityManagerNative"

    const-string v2, "AMN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    const-string v1, "PackageManagerService"

    const-string v2, "PMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcjr;->b:Ljava/util/Set;

    const-string v1, "NativeStart.run"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcjr;->b:Ljava/util/Set;

    const-string v1, "Binder.execTransact"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcjr;->b:Ljava/util/Set;

    const-string v1, "AMS.onTransact"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcjr;->b:Ljava/util/Set;

    const-string v1, "AMN.onTransact"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcjr;->b:Ljava/util/Set;

    const-string v1, "XB.handleHookedMethod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcjr;->b:Ljava/util/Set;

    const-string v1, "XB.invokeOriginalMethodNative"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcjr;->b:Ljava/util/Set;

    const-string v1, "SMH.beforeHookedMethod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x2e

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 53
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    sget-object v0, Lcjr;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    if-eqz v0, :cond_5

    .line 57
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 58
    const-string v7, " @"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v7, Lcjr;->b:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 52
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    .line 63
    if-lez v0, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 67
    if-eqz p0, :cond_4

    const-string v0, " >> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_4
    if-nez p0, :cond_0

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 42
    const-string v0, "Greenify.Xposed"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const v0, 0x2d24c01

    :try_start_0
    invoke-static {p1}, Lcjr;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

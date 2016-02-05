.class public abstract Lcju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# instance fields
.field private final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lde/robv/android/xposed/XSharedPreferences;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcjv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcju;->f:Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lcju;->a:[Ljava/lang/Class;

    .line 22
    iput-object p2, p0, Lcju;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcju;->c:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcju;->d:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 29
    iget-object v0, p0, Lcju;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcjv;

    .line 30
    if-nez v0, :cond_0

    move v0, v1

    .line 41
    :goto_0
    return v0

    .line 31
    :cond_0
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 32
    iget-boolean v5, v4, Lcjv;->b:Z

    if-eqz v5, :cond_1

    .line 31
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 34
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcjv;->b()V
    :try_end_0
    .catch Lcjx; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iput-boolean v2, v4, Lcjv;->b:Z

    goto :goto_2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    iput-boolean v2, v4, Lcjv;->b:Z

    .line 37
    throw v0

    :cond_2
    move v0, v2

    .line 41
    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcjv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcju;->f:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcju;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcjv;

    .line 47
    if-nez v0, :cond_0

    move v0, v2

    .line 54
    :goto_0
    return v0

    .line 48
    :cond_0
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 49
    iget-boolean v1, v5, Lcjv;->b:Z

    if-nez v1, :cond_1

    .line 48
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 50
    :cond_1
    iput-boolean v2, v5, Lcjv;->b:Z

    .line 51
    iget-object v1, v5, Lcjv;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-virtual {v1}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    goto :goto_3

    .line 52
    :cond_2
    iget-object v1, v5, Lcjv;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 54
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcju;->e:Lde/robv/android/xposed/XSharedPreferences;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lde/robv/android/xposed/XSharedPreferences;

    iget-object v2, p0, Lcju;->c:Ljava/lang/String;

    iget-object v3, p0, Lcju;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcju;->e:Lde/robv/android/xposed/XSharedPreferences;

    .line 99
    :try_start_0
    iget-object v1, p0, Lcju;->e:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->makeWorldReadable()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcju;->e:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v1, p1, v0}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    const-string v2, "XposedModule"

    const-string v3, "Failed to fix permission for module data."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 60
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcju;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v3, p0, Lcju;->a:[Ljava/lang/Class;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 62
    const-class v0, Lcjv;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a patch class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjv;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-virtual {v0}, Lcjv;->a()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Patch without valid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v0, "XposedModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load patch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 72
    :cond_4
    iget-object v1, p0, Lcju;->f:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcjv;

    .line 73
    if-nez v1, :cond_5

    new-array v1, v9, [Lcjv;

    .line 74
    :cond_5
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aput-object v0, v1, v6

    .line 75
    iget-object v6, p0, Lcju;->f:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    iput-object v1, v0, Lcjv;->f:Ljava/lang/ClassLoader;

    .line 78
    invoke-virtual {p0, v5}, Lcju;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const-string v1, "XposedModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Applying patch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_1
    invoke-virtual {v0}, Lcjv;->b()V

    .line 82
    iget v1, v0, Lcjv;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcjv;->c:I

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcjv;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 84
    :catch_1
    move-exception v1

    .line 85
    const-string v6, "XposedModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...failed due to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcjr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget v5, v0, Lcjv;->d:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcjv;->d:I

    .line 88
    iput-object v1, v0, Lcjv;->e:Ljava/lang/Throwable;

    goto :goto_1
.end method

.class public Lcfn;
.super Lcjv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/PrintWriter;Ljava/lang/Error;)V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/16 v7, 0x7c

    const/4 v0, 0x0

    .line 93
    :try_start_0
    instance-of v1, p1, Ljava/lang/NoSuchMethodError;

    if-nez v1, :cond_0

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string v4, "\\("

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 97
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 98
    array-length v4, v1

    if-lt v4, v6, :cond_2

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 99
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/4 v4, 0x1

    aget-object v1, v1, v4

    const-string v4, "\\("

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    .line 101
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 102
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    const/16 v6, 0x7c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 106
    const/16 v5, 0x7c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :cond_4
    :goto_3
    return-void

    .line 114
    :cond_5
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_3

    .line 115
    :catch_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 120
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 123
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method static synthetic a([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcfn;->b([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static b([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    .prologue
    const/4 v4, 0x2

    .line 52
    const/4 v0, 0x1

    aget-object v0, p0, v0

    .line 53
    const-string v1, "version:1"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->a()Lcom/oasisfeng/greenify/pro/FrameworkPatch;

    move-result-object v1

    .line 55
    const-string v2, "state"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v2, "status"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    invoke-virtual {v1}, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcjv;

    array-length v5, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v1, v3

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ":enabled="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcjv;->d()Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ",success="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v6}, Lcjv;->e()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ",failure="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 62
    invoke-virtual {v6}, Lcjv;->f()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ",last="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-virtual {v6}, Lcjv;->g()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 64
    :cond_3
    array-length v2, p0

    if-lt v2, v4, :cond_5

    const-string v2, "enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    const/4 v0, 0x2

    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const-string v0, "done"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string v0, "Admin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activated submodule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcjx; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "done|"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lcjx;->a()Ljava/lang/Error;

    move-result-object v1

    invoke-static {p1, v1}, Lcfn;->a(Ljava/io/PrintWriter;Ljava/lang/Error;)V

    .line 76
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 77
    const-string v1, "Admin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activated submodule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with partial error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcjx;->a()Ljava/lang/Error;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 70
    :cond_4
    :try_start_1
    const-string v0, "not found"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const-string v0, "Admin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submodule not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcjx; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    const-string v1, "failed|"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    invoke-static {p1, v0}, Lcfn;->a(Ljava/io/PrintWriter;Ljava/lang/Error;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 82
    const-string v1, "Admin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to activate submodule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 84
    :cond_5
    array-length v2, p0

    if-lt v2, v4, :cond_7

    const-string v2, "disable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    aget-object v0, p0, v4

    invoke-virtual {v1, v0}, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    const-string v0, "done"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_6
    const-string v0, "not found"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_7
    const-string v0, "unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, ".management"

    return-object v0
.end method

.method protected b()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    const-string v0, "com.android.server.power.PowerManagerService$BinderService"

    const-string v1, "dump"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Ljava/io/FileDescriptor;

    aput-object v3, v2, v5

    const-class v3, Ljava/io/PrintWriter;

    aput-object v3, v2, v6

    const-class v3, [Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {p0, v0, v1, v2}, Lcfn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    .line 36
    :goto_0
    new-instance v1, Lcfo;

    invoke-direct {v1, p0}, Lcfo;-><init>(Lcfn;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 49
    return-void

    .line 32
    :cond_0
    :try_start_0
    const-string v0, "com.android.server.power.PowerManagerService"

    const-string v1, "dump"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/io/FileDescriptor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/io/PrintWriter;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcfn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;
    :try_end_0
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v0, "com.android.server.PowerManagerService"

    const-string v1, "dump"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Ljava/io/FileDescriptor;

    aput-object v3, v2, v5

    const-class v3, Ljava/io/PrintWriter;

    aput-object v3, v2, v6

    const-class v3, [Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {p0, v0, v1, v2}, Lcfn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    goto :goto_0
.end method

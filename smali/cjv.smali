.class public abstract Lcjv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:Z

.field c:I

.field d:I

.field e:Ljava/lang/Throwable;

.field protected f:Ljava/lang/ClassLoader;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcjv;->g:Ljava/util/List;

    return-void
.end method

.method private static varargs a([Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    .line 113
    array-length v4, p0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p0, v2

    .line 114
    if-eqz v0, :cond_0

    move v0, v1

    .line 119
    :goto_1
    if-eqz v5, :cond_1

    .line 120
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 122
    :cond_1
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 124
    :cond_2
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/Object;[Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    array-length v0, p0

    array-length v2, p1

    if-le v0, v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 97
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 98
    aget-object v2, p0, v0

    .line 99
    if-nez v2, :cond_3

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_3
    aget-object v3, p1, v0

    .line 101
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 102
    :cond_4
    if-eq v2, v3, :cond_2

    .line 103
    instance-of v0, v2, Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only Class and String can be used as required parameter type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcjw;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 85
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {p3, v4}, Lcjv;->a([Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    new-instance v0, Lcjw;

    invoke-direct {v0, p0, v3}, Lcjw;-><init>(Lcjv;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcjv;->a([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#partialmatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcjw;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1, p2, p3}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    new-instance v1, Lcjw;

    invoke-direct {v1, p0, v0}, Lcjw;-><init>(Lcjv;Ljava/lang/reflect/Method;)V

    return-object v1
.end method

.method protected varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcjw;"
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcjv;->f:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0, p2, p3}, Lcjv;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;
    :try_end_0
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "Patch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcjv;->f:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    throw v0
.end method

.method protected varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcjv;->f:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0, p2, p3}, Lcjv;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()V
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcjv;->b:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcjv;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcjv;->d:I

    return v0
.end method

.method public g()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcjv;->e:Ljava/lang/Throwable;

    return-object v0
.end method

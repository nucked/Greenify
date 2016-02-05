.class Lcii;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Method;


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;I[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 v1, 0x0

    .line 268
    if-nez p1, :cond_0

    .line 277
    iput-object v1, p0, Lcii;->a:Ljava/lang/reflect/Method;

    .line 278
    :goto_0
    return-void

    .line 269
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 270
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 271
    new-instance v2, Lcic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " is not static"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcic;->a(Ljava/lang/reflect/Method;)Lcic;

    move-result-object v0

    invoke-static {v0}, Lchz;->a(Lcic;)V

    .line 272
    :cond_1
    if-lez p3, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/2addr v0, p3

    if-eq v0, p3, :cond_2

    .line 273
    new-instance v0, Lcic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcic;->a(Ljava/lang/String;)Lcic;

    move-result-object v0

    invoke-static {v0}, Lchz;->a(Lcic;)V

    .line 274
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_3
    iput-object v1, p0, Lcii;->a:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 271
    :cond_4
    :try_start_1
    const-string v0, "is static"
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    :try_start_2
    new-instance v2, Lcic;

    invoke-direct {v2, v0}, Lcic;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v2, p1}, Lcic;->a(Ljava/lang/Class;)Lcic;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcic;->a(Ljava/lang/String;)Lcic;

    move-result-object v0

    invoke-static {v0}, Lchz;->a(Lcic;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    iput-object v1, p0, Lcii;->a:Ljava/lang/reflect/Method;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcii;->a:Ljava/lang/reflect/Method;

    throw v0
.end method


# virtual methods
.method protected varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Lcii;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcii;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcii;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

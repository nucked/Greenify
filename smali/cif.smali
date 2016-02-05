.class public Lcif;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 176
    iput-object v1, p0, Lcif;->a:Ljava/lang/reflect/Field;

    .line 177
    :goto_0
    return-void

    .line 165
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 166
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 167
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

    invoke-virtual {v2, p2}, Lcic;->b(Ljava/lang/String;)Lcic;

    move-result-object v0

    invoke-static {v0}, Lchz;->a(Lcic;)V

    .line 168
    :cond_1
    if-lez p3, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/2addr v0, p3

    if-eq v0, p3, :cond_2

    .line 169
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

    invoke-virtual {v0, p2}, Lcic;->b(Ljava/lang/String;)Lcic;

    move-result-object v0

    invoke-static {v0}, Lchz;->a(Lcic;)V

    .line 170
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_3
    iput-object v1, p0, Lcif;->a:Ljava/lang/reflect/Field;

    goto :goto_0

    .line 167
    :cond_4
    :try_start_1
    const-string v0, "is static"
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    new-instance v2, Lcic;

    invoke-direct {v2, v0}, Lcic;-><init>(Ljava/lang/Exception;)V

    .line 173
    invoke-virtual {v2, p1}, Lcic;->a(Ljava/lang/Class;)Lcic;

    .line 174
    invoke-virtual {v2, p2}, Lcic;->b(Ljava/lang/String;)Lcic;

    .line 175
    invoke-static {v2}, Lchz;->a(Lcic;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    iput-object v1, p0, Lcif;->a:Ljava/lang/reflect/Field;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcif;->a:Ljava/lang/reflect/Field;

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TT;"
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcif;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcif;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

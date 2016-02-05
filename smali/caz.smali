.class public Lcaz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcaz;->a(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    .line 31
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcaz;->c(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "HIBERNATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packages"

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    if-nez p2, :cond_0

    const-string v1, "user_initiated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "lock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {p0}, Lcbb;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcaz;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 46
    const-string v0, "user_initiated"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcaz;->a(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    .line 35
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcci;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcci;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lbzb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 50
    const-string v0, "lock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcbb;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Lcom/oasisfeng/greenify/HibernationService;

    :goto_0
    return-object v0

    :cond_1
    const-class v0, Lcom/oasisfeng/greenify/HibernationRestrictedService;

    goto :goto_0
.end method

.method public static c(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const-string v0, "packages"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 56
    :cond_0
    return-object v0
.end method

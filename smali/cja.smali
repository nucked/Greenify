.class Lcja;
.super Lciw;
.source "SourceFile"


# instance fields
.field final synthetic a:Lciy;


# direct methods
.method private constructor <init>(Lciy;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcja;->a:Lciy;

    invoke-direct {p0}, Lciw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lciy;Lciz;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcja;-><init>(Lciy;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 248
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/os/BadParcelableException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/NullPointerException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/os/NetworkOnMainThreadException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    check-cast p1, Ljava/lang/RuntimeException;

    .line 256
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 244
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcjb;Landroid/os/Bundle;)I
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcja;->a:Lciy;

    invoke-static {v0, p1}, Lciy;->a(Lciy;Lcjb;)Lcjb;

    .line 216
    :try_start_0
    iget-object v0, p0, Lcja;->a:Lciy;

    iget-object v0, v0, Lciy;->a:Ljava/lang/String;

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcja;->a:Lciy;

    invoke-virtual {v0}, Lciy;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    iget-object v0, p0, Lcja;->a:Lciy;

    invoke-static {v0}, Lciy;->a(Lciy;)I

    move-result v0

    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    iget-object v1, p0, Lcja;->a:Lciy;

    iget-object v1, v1, Lciy;->a:Ljava/lang/String;

    const-string v2, "Error running onConnected()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    invoke-direct {p0, v0}, Lcja;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(Lcom/oasisfeng/nevo/StatusBarNotificationEvo;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcja;->a:Lciy;

    iget-object v0, v0, Lciy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getId()I

    move-result v1

    .line 202
    iget-object v2, p0, Lcja;->a:Lciy;

    invoke-virtual {v2, p1}, Lciy;->a(Lcom/oasisfeng/nevo/StatusBarNotificationEvo;)V

    .line 204
    invoke-virtual {p1}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getId()I

    move-result v3

    .line 205
    invoke-direct {p0, v2, v0}, Lcja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->a()Lcil;

    move-result-object v0

    invoke-interface {v0}, Lcil;->b()Lbwg;

    move-result-object v0

    const-string v4, "nevo.tag.override"

    invoke-interface {v0, v4, v2}, Lbwg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    if-eq v3, v1, :cond_1

    invoke-virtual {p1}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->a()Lcil;

    move-result-object v0

    invoke-interface {v0}, Lcil;->b()Lbwg;

    move-result-object v0

    const-string v1, "nevo.id.override"

    invoke-interface {v0, v1, v3}, Lbwg;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_1
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    iget-object v1, p0, Lcja;->a:Lciy;

    iget-object v1, v1, Lciy;->a:Ljava/lang/String;

    const-string v2, "Error running apply()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-direct {p0, v0}, Lcja;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcja;->a:Lciy;

    invoke-virtual {v0, p1}, Lciy;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    iget-object v1, p0, Lcja;->a:Lciy;

    iget-object v1, v1, Lciy;->a:Ljava/lang/String;

    const-string v2, "Error running onNotificationRemoved()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    invoke-direct {p0, v0}, Lcja;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public b(Lcom/oasisfeng/nevo/StatusBarNotificationEvo;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lcja;->a:Lciy;

    invoke-virtual {v0, p1}, Lciy;->b(Lcom/oasisfeng/nevo/StatusBarNotificationEvo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    iget-object v1, p0, Lcja;->a:Lciy;

    iget-object v1, v1, Lciy;->a:Ljava/lang/String;

    const-string v2, "Error running onNotificationRemoved()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-direct {p0, v0}, Lcja;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

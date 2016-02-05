.class public abstract Lciy;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Lcja;

.field private c:Lcjb;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nevo.Decorator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lciy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lciy;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lciy;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lciy;->d:I

    return v0
.end method

.method static synthetic a(Lciy;Lcjb;)Lcjb;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lciy;->c:Lcjb;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    const-string v0, "Decorator"

    .line 180
    const-string v0, "Decorator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Decorator"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected a(Lcom/oasisfeng/nevo/StatusBarNotificationEvo;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected b(Lcom/oasisfeng/nevo/StatusBarNotificationEvo;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lciy;->c:Lcjb;

    iget-object v1, p0, Lciy;->b:Lcja;

    invoke-interface {v0, v1, p1}, Lcjb;->b(Lciv;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 159
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 160
    invoke-virtual {p0}, Lciy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "com.oasisfeng.nevo"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 175
    :goto_0
    return-object v0

    .line 164
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    const-class v2, Lciy;

    if-eq v0, v2, :cond_5

    .line 166
    :try_start_0
    const-string v2, "apply"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, p0, Lciy;->d:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lciy;->d:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 169
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onNotificationRemoved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, p0, Lciy;->d:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lciy;->d:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :cond_3
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onNotificationRemoved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, p0, Lciy;->d:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p0, Lciy;->d:I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_5
    iget-object v0, p0, Lciy;->b:Lcja;

    if-nez v0, :cond_6

    new-instance v0, Lcja;

    invoke-direct {v0, p0, v1}, Lcja;-><init>(Lciy;Lciz;)V

    iput-object v0, p0, Lciy;->b:Lcja;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lciy;->b:Lcja;

    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    goto :goto_4

    .line 170
    :catch_1
    move-exception v2

    goto :goto_3

    .line 167
    :catch_2
    move-exception v2

    goto :goto_2
.end method

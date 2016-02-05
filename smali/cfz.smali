.class Lcfz;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcft;

.field private b:Ljava/lang/reflect/Field;

.field private c:Ljava/lang/reflect/Field;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lcft;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcfz;->a:Lcft;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 154
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 155
    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcft;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcfz;->b:Ljava/lang/reflect/Field;

    if-nez v1, :cond_2

    .line 161
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSettings"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcfz;->b:Ljava/lang/reflect/Field;

    .line 162
    iget-object v1, p0, Lcfz;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    :cond_2
    iget-object v1, p0, Lcfz;->b:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcfz;->c:Ljava/lang/reflect/Field;

    if-nez v2, :cond_3

    .line 166
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mPackages"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcfz;->c:Ljava/lang/reflect/Field;

    .line 167
    iget-object v2, p0, Lcfz;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 169
    :cond_3
    iget-object v2, p0, Lcfz;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 170
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 172
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_5

    .line 173
    iget-object v2, p0, Lcfz;->d:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getNotLaunched"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcfz;->d:Ljava/lang/reflect/Method;

    .line 175
    iget-object v2, p0, Lcfz;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 177
    :cond_4
    iget-object v2, p0, Lcfz;->d:Ljava/lang/reflect/Method;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 182
    :goto_1
    if-eqz v1, :cond_7

    .line 183
    const-string v1, "DeepHyber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allow content request for newly installed app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    :cond_5
    iget-object v2, p0, Lcfz;->e:Ljava/lang/reflect/Field;

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "notLaunched"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcfz;->e:Ljava/lang/reflect/Field;

    .line 180
    :cond_6
    iget-object v2, p0, Lcfz;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 187
    :cond_7
    const-string v1, "DeepHyber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refuse content request for hibernated app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

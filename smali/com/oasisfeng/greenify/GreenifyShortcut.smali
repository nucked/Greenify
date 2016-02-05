.class public Lcom/oasisfeng/greenify/GreenifyShortcut;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/util/ArrayList;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/oasisfeng/greenify/GreenifyShortcut;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v2, "package"

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "noop-toast"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    :cond_2
    return-object v1

    .line 49
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    const-string v0, "packages"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 58
    invoke-static {p0, p1, v0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(Landroid/content/Context;ZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 199
    const/16 v0, 0xab

    if-ne p1, v0, :cond_1

    .line 201
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.ASSIST"

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 208
    :cond_2
    invoke-virtual {p0, v7}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(I)V

    goto :goto_0

    .line 212
    :cond_3
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    const-string v1, "com.twofortyfouram.locale.intent.extra.BLURB"

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_4

    .line 216
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 217
    const-string v3, "source"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    :goto_1
    invoke-virtual {p0, v4, v0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 219
    :cond_4
    const-string v1, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    .line 222
    :cond_5
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 223
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 224
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 225
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 226
    invoke-static {p0, v5}, Lccq;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 227
    const-string v5, "com.twofortyfouram.locale.intent.extra.BLURB"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 228
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 229
    const-string v5, "package"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 231
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 232
    const-string v0, "Sorry, waking up hibernated app requires root privilege"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    :cond_6
    :goto_2
    invoke-virtual {p0, v7}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(I)V

    goto/16 :goto_0

    .line 236
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p0, v4, v5, v6}, Lccq;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_8

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not supported yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(I)V

    goto/16 :goto_0

    .line 241
    :cond_8
    const-string v1, "command"

    const-string v2, "wakeup"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_9
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_a

    const-string v2, "source"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_a
    const-string v1, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 246
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 248
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is ingreenifiable."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V
    .locals 0
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
    .line 254
    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lcaz;->b(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {p0, p1, p2}, Lcaz;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "packages"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 100
    const-string v2, "noop-toast"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 101
    if-eqz v1, :cond_0

    invoke-static {p0, v1, v2, v4}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {p0, v1, v2, v4}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "noop-toast"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(ZZ)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    if-eqz p2, :cond_1

    invoke-static {p0}, Lcci;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-static {p0}, Lcci;->a(Landroid/app/Activity;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->b(Landroid/content/Context;)Z

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {p0}, Lccq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lccq;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    if-eqz p2, :cond_0

    invoke-static {p0}, Lcci;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 125
    :cond_3
    new-instance v0, Lccn;

    invoke-direct {v0, p0, v4}, Lccn;-><init>(Landroid/content/Context;Z)V

    .line 126
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lccn;->b()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-static {p0, v0, v1}, Lcbs;->a(Landroid/content/Context;Lccn;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 128
    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 130
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 131
    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v2, v0, v3}, Lbxd;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    const v2, 0x7f08011c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0, p1, p2}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(Landroid/content/Context;Ljava/util/ArrayList;ZZ)V

    goto :goto_0

    .line 134
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const v0, 0x7f0800fd

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 138
    :cond_6
    if-eqz p2, :cond_0

    invoke-static {p0}, Lcci;->d(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v1, v2, v0}, Lccq;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->finish()V

    .line 150
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const-string v2, "All greenified apps"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const v2, 0x7f02008a

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 165
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    const-string v4, "Pick application"

    .line 166
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.NAME"

    .line 167
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 168
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0, v5}, Lcom/oasisfeng/greenify/GreenifyShortcut;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080103

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    invoke-virtual {p0, v5}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->finish()V

    goto :goto_0
.end method

.method private d(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 174
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "noop-toast"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 175
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 176
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 179
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 180
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 181
    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 182
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(ILandroid/content/Intent;)V

    .line 185
    return-void

    .line 183
    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/oasisfeng/greenify/GreenifyShortcut;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(IILandroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->finish()V

    .line 196
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->onNewIntent(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 67
    iput-boolean v2, p0, Lcom/oasisfeng/greenify/GreenifyShortcut;->a:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    const-string v0, ""

    .line 70
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".HibernateAndLockScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-direct {p0, v2, v2}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(ZZ)V

    .line 94
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/oasisfeng/greenify/GreenifyShortcut;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyShortcut;->finish()V

    .line 95
    :cond_3
    return-void

    .line 70
    :sswitch_0
    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "com.twofortyfouram.locale.intent.action.EDIT_SETTING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v3, "android.intent.action.ASSIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 72
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/GreenifyShortcut;->d(Landroid/content/Intent;)V

    goto :goto_1

    .line 75
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/GreenifyShortcut;->c(Landroid/content/Intent;)V

    goto :goto_1

    .line 78
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".Nothing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    :pswitch_3
    invoke-direct {p0, v2, v2}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(ZZ)V

    goto :goto_1

    .line 89
    :cond_4
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "wakeup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/GreenifyShortcut;->b(Landroid/content/Intent;)V

    goto :goto_1

    .line 91
    :cond_5
    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 92
    :cond_6
    const-string v1, "Shortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x29dd5d72 -> :sswitch_3
        0x5d2cb568 -> :sswitch_1
        0x5d5f976e -> :sswitch_2
        0x742278c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oasisfeng/greenify/GreenifyShortcut;->a:Z

    .line 190
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

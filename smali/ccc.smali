.class public Lccc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.vending/com.google.android.finsky.services.LicensingService"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.android.vending/com.google.android.finsky.billing.iab.InAppBillingService"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lccd;

    invoke-direct {v2}, Lccd;-><init>()V

    invoke-static {v1, v2}, Lbnk;->a(Ljava/util/List;Lbkl;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lccc;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lccc;->c:Landroid/content/Context;

    .line 44
    const-string v0, "blocked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lbxk;->a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccc;->b:Landroid/content/SharedPreferences;

    .line 45
    return-void
.end method

.method public static a(Landroid/content/ComponentName;)Z
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lccc;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lccc;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 52
    goto :goto_0
.end method

.method public a(Landroid/content/ComponentName;Z)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0xf

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-static {p1}, Lccc;->a(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 101
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lccc;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v9}, Ljava/util/HashSet;-><init>(I)V

    move-object v6, v0

    .line 75
    :goto_1
    iget-object v0, p0, Lccc;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v9

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    goto :goto_1

    .line 79
    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 80
    if-nez p2, :cond_3

    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->g:Lcbi;

    const-string v2, "Block.Success"

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lccc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v9

    .line 101
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    move v0, v8

    .line 82
    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 85
    :try_start_1
    new-instance v0, Lcce;

    invoke-direct {v0, p0, v3}, Lcce;-><init>(Lccc;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 87
    invoke-virtual {v0, v1}, Lcce;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    const-wide/16 v4, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->g:Lcbi;

    const-string v2, "Block.RootError"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v8

    .line 90
    goto/16 :goto_0

    .line 92
    :catch_2
    move-exception v0

    .line 93
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Failed to block comp"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->g:Lcbi;

    const-string v4, "Block.Error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    instance-of v0, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 93
    :goto_2
    invoke-virtual {v1, v2, v4, v3, v0}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v8

    .line 95
    goto/16 :goto_0

    :cond_4
    move-object v0, v7

    .line 94
    goto :goto_2
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lccc;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lccc;->a(Landroid/content/ComponentName;Z)Z

    goto :goto_0
.end method

.method public b(Landroid/content/ComponentName;Z)Z
    .locals 9

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 120
    iget-object v0, p0, Lccc;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    .line 121
    if-eqz v8, :cond_0

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 123
    :cond_1
    :try_start_0
    iget-object v0, p0, Lccc;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 126
    if-nez p2, :cond_2

    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->g:Lcbi;

    const-string v2, "Unblock.Success"

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lccc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    :try_start_2
    new-instance v0, Lccf;

    invoke-direct {v0, p0, v3}, Lccf;-><init>(Lccc;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 132
    invoke-virtual {v0, v1}, Lccf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    const-wide/16 v4, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 133
    if-nez v0, :cond_2

    .line 134
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->g:Lcbi;

    const-string v2, "Unblock.RootError"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Failed to unblock comp"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->g:Lcbi;

    const-string v4, "Unblock.Error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    instance-of v0, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_3

    const-wide/16 v6, 0xf

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 138
    :goto_3
    invoke-virtual {v1, v2, v4, v3, v0}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 140
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 139
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 147
    :cond_4
    iget-object v0, p0, Lccc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 127
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lccc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

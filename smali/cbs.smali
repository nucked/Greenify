.class public Lcbs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const-string v0, "app_states"

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lbvw;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lbxk;->a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcbs;->a:Landroid/content/SharedPreferences;

    .line 336
    return-void
.end method

.method public static a(Landroid/content/Context;Lccn;Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lccn;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcbw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    invoke-static {p0, v0}, Lcbs;->a(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 146
    if-eqz p2, :cond_5

    .line 147
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbw;

    .line 151
    iget-boolean v0, v0, Lcbw;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lccn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {p1}, Lccn;->b()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 159
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 160
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 164
    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_4

    invoke-static {p0, v0}, Lccq;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 170
    :cond_5
    return-object v2
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcbw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 176
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 177
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcbs;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 237
    :goto_0
    return-object v2

    .line 179
    :cond_0
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v3

    .line 181
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcbs;->b(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 183
    const-string v4, "AppState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check.alt spent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6}, Lblg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v4, "AppState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check.alt spent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6}, Lblg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    .line 189
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 192
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_2

    .line 193
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcbs;->a(Ljava/util/Collection;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v10, v9

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v10, :cond_2

    aget-object v11, v9, v5

    .line 196
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 197
    if-eqz v3, :cond_6

    .line 198
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iget v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-ge v4, v12, :cond_5

    .line 199
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    iget v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v4, v12, :cond_4

    .line 195
    :cond_3
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 200
    :cond_4
    const-string v4, "AppState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The importance ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") of pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is due to pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_5
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iget v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-ne v4, v12, :cond_6

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v3, :cond_3

    .line 208
    :cond_6
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    if-eqz v3, :cond_d

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 209
    iget v12, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v13, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    if-ne v12, v13, :cond_7

    iget-object v12, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 211
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_8

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v4, v4, v12

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 214
    :cond_8
    const-string v4, "AppState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is active (importance="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v4, :pswitch_data_0

    .line 225
    :goto_3
    new-instance v12, Ljava/util/ArrayList;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v13, v4

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    :goto_4
    add-int/2addr v4, v13

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v12, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 227
    :cond_9
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v13, v4

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v13, :cond_c

    aget-object v14, v4, v3

    .line 228
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x40

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    .line 229
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x40

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 217
    :pswitch_0
    const-string v4, "AppState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  due to provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in use by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 220
    :pswitch_1
    const-string v4, "AppState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  due to service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in use by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 225
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 230
    :cond_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v12, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 234
    :cond_d
    invoke-interface {v7, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 237
    :cond_e
    invoke-static {}, Lcbt;->a()Lbnx;

    move-result-object v2

    invoke-static {v7, v2}, Lbnp;->a(Ljava/util/Map;Lbnx;)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 115
    invoke-static {p0}, Lcbs;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "activity"

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcbs;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    if-nez p1, :cond_0

    move v0, v1

    .line 133
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x5

    if-lt v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 132
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Collection;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 1

    invoke-static {p0, p1}, Lcbs;->b(Ljava/util/Collection;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/Collection;[Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    array-length v2, p1

    if-nez v2, :cond_0

    .line 304
    :goto_0
    return v1

    .line 303
    :cond_0
    array-length v2, p1

    if-ne v2, v0, :cond_1

    aget-object v0, p1, v1

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcbw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 245
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 246
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 247
    invoke-static {p1}, Lcbu;->a(Ljava/util/Collection;)Lbku;

    move-result-object v0

    invoke-static {v2, v0}, Lbmx;->a(Ljava/lang/Iterable;Lbku;)Z

    .line 248
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 249
    iget-boolean v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v4, :cond_0

    .line 250
    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcbw;->a(Landroid/app/ActivityManager$RunningServiceInfo;)Lcbw;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 252
    iget v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    if-lez v4, :cond_2

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 253
    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcbw;->b(Landroid/app/ActivityManager$RunningServiceInfo;)Lcbw;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 254
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 255
    iget v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_4

    .line 256
    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcbw;->b(Ljava/lang/String;)Lcbw;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 259
    :cond_5
    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 262
    const-wide/32 v4, 0x1499700

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v2

    .line 263
    if-nez v2, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 298
    :goto_3
    return-object v0

    .line 264
    :cond_6
    const/4 v0, 0x0

    .line 266
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 267
    :goto_4
    invoke-virtual {v2, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 268
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    .line 271
    :pswitch_1
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 290
    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Lcbw;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object v0, v1

    .line 298
    goto :goto_3

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 121
    const-string v3, "android:get_usage_stats"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 122
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 123
    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    invoke-static {p0, v0}, Ldr;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 124
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static synthetic b(Ljava/util/Collection;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

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
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcbs;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcbx;->b:Lcbx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 344
    invoke-virtual {p0, p1}, Lcbs;->b(Ljava/lang/String;)Lcca;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcca;->a:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const-string v1, "direct"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GCM"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    :goto_0
    return v0

    .line 349
    :cond_0
    iget-object v1, p0, Lcbs;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcbx;->c:Lcbx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p5, :cond_1

    const-string v0, ""

    .line 350
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    const/4 v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 350
    invoke-virtual {p5, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lcca;
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcbs;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    if-nez v3, :cond_0

    move-object v0, v1

    .line 376
    :goto_0
    return-object v0

    .line 357
    :cond_0
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 359
    :try_start_0
    new-instance v2, Lcca;

    invoke-direct {v2}, Lcca;-><init>()V

    .line 360
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcca;->a:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 362
    :try_start_1
    const-class v0, Lcbx;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v0, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcbx;

    iput-object v0, v2, Lcca;->b:Lcbx;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 364
    :goto_1
    :try_start_2
    iget-object v0, v2, Lcca;->b:Lcbx;

    sget-object v5, Lcbx;->c:Lcbx;

    if-ne v0, v5, :cond_1

    .line 365
    new-instance v0, Lccb;

    invoke-direct {v0}, Lccb;-><init>()V

    iput-object v0, v2, Lcca;->c:Lccb;

    .line 366
    iget-object v0, v2, Lcca;->c:Lccb;

    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lccb;->e:I

    .line 367
    iget-object v0, v2, Lcca;->c:Lccb;

    const/4 v5, 0x4

    aget-object v5, v4, v5

    invoke-static {v5}, Lcbz;->a(Ljava/lang/String;)Lcby;

    move-result-object v5

    iput-object v5, v0, Lccb;->a:Lcby;

    .line 368
    const/4 v0, 0x5

    aget-object v0, v4, v0

    .line 369
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_2

    iget-object v5, v2, Lcca;->c:Lccb;

    iput-object v0, v5, Lccb;->d:Ljava/lang/String;

    .line 371
    :goto_2
    array-length v0, v4

    if-le v0, v8, :cond_1

    iget-object v0, v2, Lcca;->c:Lccb;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v0, Lccb;->c:Landroid/content/Intent;

    :cond_1
    move-object v0, v2

    .line 373
    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, v2, Lcca;->c:Lccb;

    const/4 v5, 0x5

    aget-object v5, v4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Lccb;->b:Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 374
    :catch_0
    move-exception v0

    .line 375
    :goto_3
    const-string v2, "AppState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 376
    goto/16 :goto_0

    .line 374
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    .line 363
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcbs;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    return-void
.end method

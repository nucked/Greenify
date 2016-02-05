.class public Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lccz;

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 717
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 127
    const-string v0, "features"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lbvw;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    return-object p1
.end method

.method private static varargs a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 666
    :try_start_0
    invoke-static {p1}, Lcfm;->a([Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcfh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcfg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 675
    :goto_0
    return-object v0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    if-eqz p0, :cond_0

    const v0, 0x7f08008d

    const v1, 0x7f08008c

    invoke-static {p0, v0, v1}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;

    .line 675
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 669
    :catch_1
    move-exception v0

    .line 670
    if-eqz p0, :cond_0

    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v0

    const-string v1, "de.robv.android.xposed.installer"

    invoke-virtual {v0, v1}, Lbxd;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const/4 v0, 0x0

    const v1, 0x7f080091

    invoke-static {p0, v0, v1}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;

    goto :goto_1

    .line 672
    :catch_2
    move-exception v0

    .line 673
    if-eqz p0, :cond_0

    const v0, 0x7f080089

    const v1, 0x7f08007b

    invoke-static {p0, v0, v1}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-virtual {v0}, Lbww;->c()Lwp;

    goto :goto_1
.end method

.method public static synthetic a(Landroid/app/Application;)V
    .locals 0

    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Landroid/app/Application;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->g()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->g()V

    return-void
.end method

.method private synthetic a(Landroid/content/Intent;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 548
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->q:Lcbi;

    const-string v2, "Overlay"

    const-string v3, "NoManageOverlayActivity"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_0
.end method

.method private synthetic a(Landroid/preference/Preference;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 570
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm grant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    .line 571
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    check-cast p1, Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 573
    :cond_0
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;ZLandroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 267
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v2, v0, :cond_1b

    .line 268
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 270
    instance-of v0, v1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 271
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 273
    const-string v4, "donation"

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 274
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v4, v6

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 325
    :goto_3
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 326
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    add-int/lit8 v2, v2, -0x1

    .line 267
    :cond_2
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v4, v3

    .line 273
    goto :goto_1

    .line 274
    :sswitch_0
    const-string v4, "xposed-features"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_2

    :sswitch_1
    const-string v4, "donation-features"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_2

    :sswitch_2
    const-string v4, "donation-xposed-features"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_2

    :sswitch_3
    const-string v4, "testing-features"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v8

    goto :goto_2

    :sswitch_4
    const-string v4, "#super_doze"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_5
    const-string v4, "#shallow_hibernation"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto :goto_2

    .line 276
    :pswitch_0
    invoke-static {p0}, Lcex;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/PreferenceGroup;ZLandroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    .line 280
    :pswitch_1
    invoke-static {p0}, Lcey;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-direct {p0, v0, v3, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/PreferenceGroup;ZLandroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    .line 284
    :pswitch_2
    invoke-static {p0}, Lcez;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/PreferenceGroup;ZLandroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    .line 289
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    add-int/lit8 v2, v2, -0x1

    .line 291
    goto :goto_4

    .line 295
    :pswitch_4
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 296
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    add-int/lit8 v2, v2, -0x1

    .line 298
    goto :goto_4

    .line 300
    :cond_4
    const-string v1, "super_doze"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    .line 301
    const-class v4, Lcom/oasisfeng/greenify/DozeService;

    invoke-static {p0, v4}, Lcom/oasisfeng/greenify/DozeService;->c(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 302
    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f08012b

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setSummary(I)V

    .line 305
    const-string v1, "doze_whitelist"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 306
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_5

    .line 307
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    :cond_5
    const-string v1, "doze_notification"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    .line 310
    const-class v4, Lcom/oasisfeng/greenify/DozeTrackerService;

    invoke-static {p0, v4}, Lcom/oasisfeng/greenify/DozeTrackerService;->c(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 311
    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    .line 303
    :cond_6
    const v1, 0x7f08012a

    goto :goto_5

    .line 314
    :pswitch_5
    invoke-static {p0}, Lccq;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 315
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    add-int/lit8 v2, v2, -0x1

    .line 317
    goto/16 :goto_4

    .line 319
    :cond_7
    const-string v1, "shallow_hibernation"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    .line 320
    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f08012b

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setSummary(I)V

    goto/16 :goto_3

    :cond_8
    const v1, 0x7f08012a

    goto :goto_6

    .line 329
    :cond_9
    instance-of v0, v1, Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_16

    move-object v0, v1

    .line 330
    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 331
    invoke-virtual {v0, p3}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 332
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_a
    move v4, v6

    :goto_7
    packed-switch v4, :pswitch_data_1

    .line 395
    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/TwoStatePreference;)V

    goto/16 :goto_4

    .line 332
    :sswitch_6
    const-string v4, "automated_hibernation"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_7

    :sswitch_7
    const-string v4, "alt_screen_off"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    goto :goto_7

    :sswitch_8
    const-string v4, "navbar_gesture"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v7

    goto :goto_7

    :sswitch_9
    const-string v4, "keep_notifications_limited"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v8

    goto :goto_7

    :sswitch_a
    const-string v4, "wakeup_tracker"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x4

    goto :goto_7

    :sswitch_b
    const-string v4, "system_apps_limited"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x5

    goto :goto_7

    :sswitch_c
    const-string v4, "reveal_hidden_sync"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x6

    goto :goto_7

    :sswitch_d
    const-string v4, "timer_coalescing"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x7

    goto :goto_7

    .line 334
    :pswitch_6
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 335
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    .line 337
    :cond_b
    invoke-static {p0}, Lbzb;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 338
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 339
    const v0, 0x7f080131

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    .line 341
    :cond_c
    invoke-static {p0}, Lcaz;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 342
    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 346
    :pswitch_7
    invoke-static {p0}, Lcbb;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    :cond_d
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 348
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    .line 352
    :pswitch_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v4, v9, :cond_e

    invoke-static {}, Lbxl;->a()Z

    move-result v4

    if-nez v4, :cond_f

    .line 353
    :cond_e
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    .line 356
    :cond_f
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "assistant"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v5

    :goto_8
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 358
    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    :cond_10
    move v1, v3

    .line 357
    goto :goto_8

    .line 362
    :pswitch_9
    invoke-static {}, Lcfm;->a()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 363
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    .line 366
    :cond_11
    invoke-static {p0}, Lcel;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 367
    invoke-static {p0}, Lcel;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 369
    :goto_9
    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 368
    :cond_12
    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    .line 373
    :pswitch_a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v4, v9, :cond_13

    .line 374
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    .line 376
    :cond_13
    invoke-direct {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/TwoStatePreference;)V

    goto/16 :goto_4

    .line 379
    :pswitch_b
    invoke-static {}, Lcfm;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    .line 385
    :pswitch_c
    invoke-static {}, Lcfm;->a()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 386
    :cond_14
    invoke-virtual {v0, p3}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 389
    :pswitch_d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-ge v4, v9, :cond_15

    .line 390
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    .line 392
    :cond_15
    invoke-direct {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/TwoStatePreference;)V

    goto/16 :goto_4

    .line 398
    :cond_16
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :cond_17
    move v0, v6

    :goto_a
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_4

    .line 400
    :pswitch_e
    check-cast v1, Landroid/preference/ListPreference;

    .line 401
    invoke-static {}, Lcfm;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 402
    const/high16 v0, 0x7f090000

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 403
    const v0, 0x7f090001

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 404
    invoke-static {p0}, Lcbb;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "boost"

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 410
    :cond_18
    :goto_b
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    :cond_19
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 398
    :pswitch_f
    const-string v0, "working_mode"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    goto :goto_a

    .line 406
    :cond_1a
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 416
    :cond_1b
    return-void

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        -0x61f378a6 -> :sswitch_3
        -0xdc1a5f9 -> :sswitch_5
        -0xb2bac63 -> :sswitch_4
        -0x6e1c2b1 -> :sswitch_0
        0x3c06114 -> :sswitch_2
        0x42934418 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 332
    :sswitch_data_1
    .sparse-switch
        -0x5a46d562 -> :sswitch_c
        -0x272e108e -> :sswitch_7
        0xd070dd -> :sswitch_b
        0x16c4101a -> :sswitch_8
        0x23aa9638 -> :sswitch_a
        0x2693ffde -> :sswitch_d
        0x55eaf409 -> :sswitch_9
        0x76db70a6 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 398
    :pswitch_data_2
    .packed-switch -0x1079e20f
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method private a(Landroid/preference/TwoStatePreference;)V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a:Ljava/util/Map;

    .line 420
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 422
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-static {p0}, Lcfa;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 427
    :cond_2
    invoke-static {}, Lcfm;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/Preference;)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 122
    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f08012c

    const/16 v5, 0x17

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 492
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 494
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 615
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 616
    invoke-direct {p0, v3, v0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 494
    :sswitch_0
    const-string v4, "working_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "shallow_hibernation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "system_apps_limited"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "automated_hibernation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "super_doze"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "doze_notification"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "navbar_gesture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "keep_notifications_limited"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "reveal_hidden_sync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 496
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 498
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_2
    :goto_2
    packed-switch v0, :pswitch_data_1

    move v2, v1

    .line 511
    :goto_3
    if-eqz v2, :cond_1

    .line 512
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;)Z

    .line 513
    invoke-static {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Landroid/content/Context;)V

    .line 514
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0}, Lcfd;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 498
    :sswitch_9
    const-string v4, "boost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_2

    :sswitch_a
    const-string v4, "restricted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_2

    :sswitch_b
    const-string v4, "root"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    .line 500
    :pswitch_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "boost_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    const-string v0, "boost_mode"

    invoke-direct {p0, v0, v1, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    move v2, v1

    .line 502
    goto :goto_3

    .line 505
    :pswitch_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "boost_mode"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 506
    const-string v0, "root"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v0}, Lcbb;->a(Landroid/content/Context;Z)V

    .line 507
    const-string v0, "boost_mode"

    invoke-direct {p0, v0, v2, v2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Ljava/lang/String;ZZ)Z

    move v2, v1

    .line 508
    goto :goto_3

    .line 519
    :pswitch_3
    const-string v0, "#shallow_hibernation"

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f08012b

    :goto_4
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 520
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->onContentChanged()V

    .line 521
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 522
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Lcfe;->a(Landroid/app/Application;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v1

    .line 523
    goto/16 :goto_1

    .line 519
    :cond_3
    const v0, 0x7f08012a

    goto :goto_4

    :pswitch_4
    move v2, v1

    .line 525
    goto/16 :goto_1

    .line 527
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 528
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->f(Landroid/content/Context;)V

    move v2, v1

    .line 529
    goto/16 :goto_1

    .line 532
    :cond_4
    invoke-static {p0}, Lcci;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 533
    invoke-static {}, Lbxl;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 534
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v3, 0x7f080120

    invoke-virtual {p0, v3}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Lcjp;

    invoke-static {v0, v3, v4}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    move v0, v2

    .line 560
    :goto_5
    if-eqz v0, :cond_1

    .line 561
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->e(Landroid/content/Context;)V

    move v2, v1

    .line 562
    goto/16 :goto_1

    .line 535
    :cond_5
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v3, 0x7f08011f

    invoke-virtual {p0, v3}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Lcjp;

    invoke-static {v0, v3, v4}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    move v0, v2

    goto :goto_5

    .line 536
    :cond_6
    invoke-static {p0}, Lbzb;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 537
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v3, 0x7f08013d

    invoke-virtual {p0, v3}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Lcjp;

    invoke-static {}, Lcen;->a()Landroid/view/View$OnClickListener;

    move-result-object v5

    .line 538
    invoke-static {v6, v5}, Lcjh;->a(ILandroid/view/View$OnClickListener;)Lcjp;

    move-result-object v5

    aput-object v5, v4, v2

    .line 537
    invoke-static {v0, v3, v4}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    move v0, v2

    goto :goto_5

    .line 539
    :cond_7
    invoke-static {p0}, Lcci;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 540
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v3, 0x7f08013e

    invoke-virtual {p0, v3}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Lcjp;

    invoke-static {p0}, Lceo;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/view/View$OnClickListener;

    move-result-object v5

    .line 541
    invoke-static {v6, v5}, Lcjh;->a(ILandroid/view/View$OnClickListener;)Lcjp;

    move-result-object v5

    aput-object v5, v4, v2

    .line 540
    invoke-static {v0, v3, v4}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    move v0, v2

    goto :goto_5

    .line 542
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_b

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    const-string v4, "package"

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 544
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_9

    move v0, v1

    goto/16 :goto_5

    .line 545
    :cond_9
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const v4, 0x7f08013f

    invoke-virtual {p0, v4}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Lcjp;

    invoke-static {p0, v0}, Lcep;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/Intent;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 546
    invoke-static {v6, v0}, Lcjh;->a(ILandroid/view/View$OnClickListener;)Lcjp;

    move-result-object v0

    aput-object v0, v5, v2

    .line 545
    invoke-static {v3, v4, v5}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    :cond_a
    move v0, v2

    goto/16 :goto_5

    .line 553
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_d

    const-string v0, "android:system_alert_window"

    .line 554
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v3, v4}, Lbvg;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 555
    invoke-static {}, Lcjq;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcjq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 556
    :cond_c
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v3, 0x7f08012d

    new-array v4, v2, [Lcjp;

    invoke-static {v0, v3, v4}, Lcjh;->a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 557
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v3, Lcbi;->q:Lcbi;

    const-string v4, "Overlay"

    const-string v5, "RevokedByAppOps"

    invoke-virtual {v0, v3, v4, v5, v7}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v2

    goto/16 :goto_5

    :cond_d
    move v0, v1

    .line 559
    goto/16 :goto_5

    .line 565
    :pswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 566
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 567
    if-eqz v0, :cond_f

    .line 568
    invoke-static {p0}, Lchk;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 569
    invoke-static {p0, p1}, Lceq;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 575
    :cond_e
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 576
    const-string v0, "ExpeFeatSett"

    const-string v1, "Unexpected failure enabling and staring doze service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 580
    :cond_f
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->c(Landroid/content/Context;)V

    .line 582
    :cond_10
    const-string v2, "#super_doze"

    invoke-virtual {p0, v2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v0, :cond_11

    const v0, 0x7f08012b

    :goto_6
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 583
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->onContentChanged()V

    move v2, v1

    .line 584
    goto/16 :goto_1

    .line 582
    :cond_11
    const v0, 0x7f08012a

    goto :goto_6

    .line 586
    :pswitch_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 587
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 588
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeTrackerService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 589
    const-string v0, "ExpeFeatSett"

    const-string v1, "Unexpected failure enabling and staring doze tracker service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 592
    :cond_12
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeTrackerService;->c(Landroid/content/Context;)V

    :cond_13
    move v2, v1

    .line 593
    goto/16 :goto_1

    .line 595
    :pswitch_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 597
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VOICE_INPUT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->startActivity(Landroid/content/Intent;)V

    .line 598
    check-cast p1, Landroid/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f08013b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->q:Lcbi;

    const-string v3, "Assist"

    const-string v4, "NoVoiceInputSettingsActivity"

    invoke-virtual {v0, v1, v3, v4, v7}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto/16 :goto_1

    .line 604
    :pswitch_9
    invoke-static {p0}, Lcel;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 605
    invoke-static {p0, v1}, Lcel;->a(Landroid/content/Context;Z)V

    .line 606
    invoke-static {p0}, Lcel;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    const-string v0, "Incompatible ROM"

    const-string v1, "Cannot open the notification access settings in your device.\n\nIf you could find it in your device\'s settings (typically in Settings - Security - Notification access), please manually enable Greenify there."

    invoke-static {p0, v0, v1}, Lbwv;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lbww;

    move-result-object v0

    invoke-static {p0}, Lcer;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Ljava/lang/Runnable;

    move-result-object v1

    .line 608
    invoke-virtual {v0, v1}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    invoke-static {p0}, Lces;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbww;->a(Landroid/content/DialogInterface$OnCancelListener;)Lwq;

    move-result-object v0

    invoke-virtual {v0}, Lwq;->c()Lwp;

    goto/16 :goto_1

    .line 609
    :cond_14
    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->b(Landroid/content/Context;)Z

    goto/16 :goto_1

    :pswitch_a
    move v2, v1

    .line 612
    goto/16 :goto_1

    .line 494
    nop

    :sswitch_data_0
    .sparse-switch
        -0x66701cc6 -> :sswitch_4
        -0x5a46d562 -> :sswitch_8
        -0x1a3af26c -> :sswitch_5
        -0x1079e20f -> :sswitch_0
        0xd070dd -> :sswitch_2
        0x16c4101a -> :sswitch_6
        0x471e0b0a -> :sswitch_1
        0x55eaf409 -> :sswitch_7
        0x76db70a6 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 498
    :sswitch_data_1
    .sparse-switch
        -0x4d52f7a5 -> :sswitch_a
        0x3580e2 -> :sswitch_b
        0x59923a3 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->e(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;ZZ)Z
    .locals 7

    .prologue
    .line 622
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 623
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v2}, Lcet;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 630
    if-eqz p3, :cond_2

    move-object v0, p0

    :goto_0
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    const-string v1, "enable"

    :goto_1
    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 632
    invoke-static {v2}, Lceu;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/oasisfeng/greenify/GreenifyApplication;->a(Ljava/lang/Runnable;J)V

    .line 634
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, ""

    move-object v6, v0

    .line 635
    :goto_2
    const-string v0, "done"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 636
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->i:Lcbi;

    const-string v2, "Success"

    if-eqz p2, :cond_5

    const-wide/16 v4, 0x1

    :goto_3
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 638
    const-string v0, "done|"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "\\|"

    const/4 v1, 0x3

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 640
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    const-string v1, "Incompatibility"

    const/4 v2, 0x1

    aget-object v2, v3, v2

    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_6

    const/4 v4, 0x2

    aget-object v3, v3, v4

    :goto_4
    if-eqz p2, :cond_7

    const-wide/16 v4, 0x1

    :goto_5
    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 643
    :cond_0
    const-string v0, "keep_notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_8

    const/4 v0, 0x1

    :goto_6
    invoke-static {p0, v0}, Lcel;->a(Landroid/content/Context;Z)V

    .line 644
    :cond_1
    const/4 v0, 0x1

    .line 660
    :goto_7
    return v0

    .line 630
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "disable"

    goto :goto_1

    .line 634
    :cond_4
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_2

    .line 636
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 640
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    const-wide/16 v4, 0x0

    goto :goto_5

    .line 643
    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 647
    :cond_9
    const-string v0, "failed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 648
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->i:Lcbi;

    const-string v2, "Failure"

    if-eqz p2, :cond_c

    const-wide/16 v4, 0x1

    :goto_8
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 649
    const-string v0, "failed|"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 650
    const-string v0, "\\|"

    const/4 v1, 0x3

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    const-string v1, "Incompatibility"

    const/4 v2, 0x1

    aget-object v2, v3, v2

    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_d

    const/4 v4, 0x2

    aget-object v3, v3, v4

    :goto_9
    if-eqz p2, :cond_e

    const-wide/16 v4, 0x1

    :goto_a
    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 653
    :cond_a
    if-eqz p3, :cond_b

    const v0, 0x7f080089

    const v1, 0x7f080079

    invoke-static {p0, v0, v1}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {p0}, Lcev;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 654
    invoke-virtual {v0, v1, v2}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v0

    invoke-virtual {v0}, Lwq;->c()Lwp;

    .line 660
    :cond_b
    :goto_b
    const/4 v0, 0x0

    goto :goto_7

    .line 648
    :cond_c
    const-wide/16 v4, 0x0

    goto :goto_8

    .line 651
    :cond_d
    const/4 v3, 0x0

    goto :goto_9

    :cond_e
    const-wide/16 v4, 0x0

    goto :goto_a

    .line 655
    :cond_f
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 656
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->i:Lcbi;

    const-string v2, "Error"

    if-eqz p2, :cond_10

    const-wide/16 v4, 0x1

    :goto_c
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 657
    if-eqz p3, :cond_b

    const v0, 0x7f080089

    const v1, 0x7f08007c

    invoke-static {p0, v0, v1}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {p0}, Lcew;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 658
    invoke-virtual {v0, v1, v2}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v0

    invoke-virtual {v0}, Lwq;->c()Lwp;

    goto :goto_b

    .line 656
    :cond_10
    const-wide/16 v4, 0x0

    goto :goto_c
.end method

.method private static synthetic b(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 522
    invoke-static {p0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 681
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "getSharedPrefsFile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "features"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 682
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 683
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 684
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a4

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_1
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->g()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 541
    invoke-static {p0}, Lcci;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->g()V

    return-void
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .prologue
    .line 632
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 624
    instance-of v0, p2, Ljava/lang/SecurityException;

    if-eqz v0, :cond_0

    .line 625
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 626
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private synthetic b(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 424
    const v0, 0x7f0800fc

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    const-string v0, "donation-features"

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-static {v0}, Lbwo;->a(Landroid/preference/PreferenceGroup;)Ljava/lang/Iterable;

    move-result-object v1

    const-string v0, "donation-xposed-features"

    .line 194
    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-static {v0}, Lbwo;->a(Landroid/preference/PreferenceGroup;)Ljava/lang/Iterable;

    move-result-object v0

    .line 193
    invoke-static {v1, v0}, Lbmx;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 195
    instance-of v1, v0, Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, v3}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Ljava/lang/String;ZZ)Z

    move-object v1, v0

    .line 197
    check-cast v1, Landroid/preference/TwoStatePreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 689
    invoke-static {}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->h()Ljava/util/Map;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 692
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 693
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 694
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private synthetic c(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 453
    const/4 v0, 0x0

    const v1, 0x7f080125

    invoke-virtual {p0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d:Landroid/app/ProgressDialog;

    .line 454
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b:Lccz;

    const/16 v1, 0x232a

    invoke-virtual {v0, p0, v1}, Lccz;->a(Landroid/app/Activity;I)Z

    .line 455
    return-void
.end method

.method private static synthetic c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->b(Landroid/content/Context;)Z

    return-void
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic c(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 214
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-static {p0, v2}, Lccz;->a(Landroid/content/Context;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 235
    :pswitch_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    .line 236
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c()V

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    .line 221
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f080073

    new-array v2, v2, [Lcjp;

    const v3, 0x104000a

    invoke-static {p0}, Lcem;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/view/View$OnClickListener;

    move-result-object v4

    .line 222
    invoke-static {v3, v4}, Lcjh;->a(ILandroid/view/View$OnClickListener;)Lcjp;

    move-result-object v3

    aput-object v3, v2, v6

    .line 221
    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 223
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c()V

    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b:Lccz;

    invoke-virtual {v0}, Lccz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    .line 228
    invoke-virtual {p0, v2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->h:Lcbi;

    const-string v2, "VerificationError"

    const-string v3, "Return"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 231
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 698
    const-string v0, "features"

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 699
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 700
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    const/4 v1, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "enable"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    .line 702
    :cond_1
    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 222
    invoke-static {p0}, Lccz;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->e()V

    return-void
.end method

.method private synthetic d(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic d(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic e(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.forpda.lp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 244
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-string v1, "Failed to verify the donation package, possibly interfered by LuckyPatcher. Please try disabling \"Google license verification emulation\" in LuckyPatcher, or uninstalling it completely."

    const/4 v2, 0x0

    new-array v2, v2, [Lcjp;

    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private synthetic e(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "features"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 258
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->addPreferencesFromResource(I)V

    .line 259
    return-void
.end method

.method public static synthetic f(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->i()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 262
    invoke-static {}, Lcfm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->h()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a:Ljava/util/Map;

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/PreferenceGroup;ZLandroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    return-void
.end method

.method public static synthetic g(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->g()V

    return-void
.end method

.method private static h()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 467
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 469
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcfm;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 472
    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 474
    const/4 v5, 0x1

    aget-object v0, v0, v5

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 475
    const-string v8, "enabled=true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_2
    const-string v8, "enabled=false"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 480
    :catch_0
    move-exception v0

    .line 481
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    move-object v0, v1

    .line 479
    goto :goto_2
.end method

.method private synthetic i()V
    .locals 0

    .prologue
    .line 450
    invoke-static {p0}, Lccz;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c:Ljava/lang/Boolean;

    .line 448
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    .line 449
    :cond_0
    const v0, 0x7f0800c5

    const v1, 0x7f08007d

    invoke-static {p0, v0, v1}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lbww;->d()Lbww;

    move-result-object v0

    invoke-static {p0}, Lcfb;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v0

    .line 451
    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v1

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Lbxd;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    const v1, 0x7f080124

    invoke-static {p0}, Lcfc;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbww;->c(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    .line 456
    :cond_1
    invoke-virtual {v0}, Lbww;->c()Lwp;

    .line 457
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Lcfm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    .line 462
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->startActivity(Landroid/content/Intent;)V

    .line 463
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 431
    const/16 v0, 0x232a

    if-ne p1, v0, :cond_3

    .line 432
    if-nez p2, :cond_1

    .line 433
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d:Landroid/app/ProgressDialog;

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d:Landroid/app/ProgressDialog;

    const v1, 0x7f080127

    invoke-virtual {p0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 439
    :cond_2
    sget-object v0, Lalx;->q:Lani;

    invoke-interface {v0, p3}, Lani;->a(Landroid/content/Intent;)Lanl;

    move-result-object v0

    .line 440
    const-string v1, "ExpeFeatSett"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult:GET_TOKEN:success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lanl;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b:Lccz;

    invoke-virtual {v1, v0}, Lccz;->a(Lanl;)Z

    goto :goto_0

    .line 443
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->requestWindowFeature(I)Z

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->setProgressBarIndeterminateVisibility(Z)V

    .line 133
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    const v1, 0x7f0f007a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->setListFooter(Landroid/view/View;)V

    .line 139
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->f()V

    .line 141
    new-instance v0, Lccz;

    new-instance v1, Lcff;

    invoke-direct {v1, p0}, Lcff;-><init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    invoke-direct {v0, p0, v1}, Lccz;-><init>(Landroid/content/Context;Lcdi;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b:Lccz;

    .line 189
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b:Lccz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b:Lccz;

    invoke-virtual {v0}, Lccz;->c()V

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 205
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 251
    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Landroid/content/Context;)V

    .line 252
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 253
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v6

    .line 487
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    const-string v1, "Preference"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_0

    const-wide/16 v4, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 488
    return v6

    .line 487
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 209
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d()V

    .line 210
    invoke-direct {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->g()V

    .line 211
    return-void
.end method

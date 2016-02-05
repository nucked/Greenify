.class public Lbwu;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lbwu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lbwu;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lbwu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lbwu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lbwu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 69
    const-string v0, "translation"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lbwu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lbwd;->a(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lbwu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2, v0}, Lbwd;->a(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lbwu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 74
    :cond_2
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 75
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {p0}, Lbwu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lbwc;->a(Landroid/content/Context;Landroid/preference/Preference;)V

    .line 77
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

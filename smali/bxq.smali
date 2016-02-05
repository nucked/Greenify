.class public Lbxq;
.super Lbwu;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lbwu;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "donation"

    invoke-virtual {p0, v0}, Lbxq;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 52
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 53
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Lbwu;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lbxq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.vending"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lbxd;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "analytics"

    invoke-virtual {p0, v0}, Lbxq;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lbxq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/DeviceAdmin;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "uninstall"

    invoke-static {p0, v0}, Lbwo;->a(Landroid/preference/PreferenceFragment;Ljava/lang/String;)Z

    .line 41
    :cond_1
    invoke-virtual {p0}, Lbxq;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0}, Lbwo;->b(Landroid/preference/PreferenceGroup;)V

    .line 42
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f080038

    const v4, 0x7f080036

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0}, Lbxq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 59
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "donation"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0}, Lbxq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lccz;->a(Landroid/content/Context;)V

    .line 87
    :goto_0
    return v0

    .line 67
    :cond_0
    const-string v3, "uninstall"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-static {}, Lcom/oasisfeng/greenify/DeviceAdmin;->a()V

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    const-string v3, "package"

    invoke-virtual {p0}, Lbxq;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lbxq;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_1
    const-string v3, "analytics"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    invoke-virtual {v2}, Lcbd;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    invoke-static {v1, v5, v4}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lbww;->d()Lbww;

    move-result-object v2

    const v3, 0x7f08006b

    new-instance v4, Lbxr;

    invoke-direct {v4, p0, v1}, Lbxr;-><init>(Lbxq;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lbww;->a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lwq;->c()Lwp;

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v1, v5, v4}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v6}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v2

    const v3, 0x7f08006c

    new-instance v4, Lbxs;

    invoke-direct {v4, p0, v1}, Lbxs;-><init>(Lbxq;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lbww;->c(ILandroid/content/DialogInterface$OnClickListener;)Lwq;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lwq;->c()Lwp;

    goto :goto_0

    .line 87
    :cond_3
    invoke-super {p0, p1, p2}, Lbwu;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-super {p0}, Lbwu;->onResume()V

    .line 46
    invoke-virtual {p0}, Lbxq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lccz;->a(Landroid/content/Context;Z)I

    move-result v0

    .line 47
    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbxq;->a()V

    .line 48
    :cond_0
    return-void
.end method

.class public Lbwt;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "xml"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lbwu;

    invoke-direct {v0}, Lbwu;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lbwt;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {p0}, Lbwt;->a()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 54
    return-void
.end method

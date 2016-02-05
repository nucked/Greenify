.class final Lbws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/PreferenceGroup;

.field private b:I


# direct methods
.method constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lbws;->a:Landroid/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/preference/Preference;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lbws;->a:Landroid/preference/PreferenceGroup;

    iget v1, p0, Lbws;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbws;->b:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lbws;->b:I

    iget-object v1, p0, Lbws;->a:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lbws;->a()Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lbws;->a:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lbws;->a:Landroid/preference/PreferenceGroup;

    iget v2, p0, Lbws;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbws;->b:I

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 34
    return-void
.end method

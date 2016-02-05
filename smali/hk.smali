.class Lhk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public static b(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.support.groupKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.support.sortKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lbvl;
.super Lbvu;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 110
    const-string v0, "app.scope"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lbvu;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method

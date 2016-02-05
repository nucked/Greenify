.class public final Lf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf;-><init>(Li;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Li;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lf;->a:Landroid/content/Intent;

    .line 166
    iput-object v0, p0, Lf;->b:Ljava/util/ArrayList;

    .line 167
    iput-object v0, p0, Lf;->c:Landroid/os/Bundle;

    .line 187
    if-eqz p1, :cond_0

    iget-object v1, p0, Lf;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Li;->b()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v2, "android.support.customtabs.extra.SESSION"

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Lee;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    iget-object v0, p0, Lf;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 192
    return-void

    .line 189
    :cond_1
    invoke-virtual {p1}, Li;->a()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ld;
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lf;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lf;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.MENU_ITEMS"

    iget-object v2, p0, Lf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 294
    :cond_0
    new-instance v0, Ld;

    iget-object v1, p0, Lf;->a:Landroid/content/Intent;

    iget-object v2, p0, Lf;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ld;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Le;)V

    return-object v0
.end method

.method public a(I)Lf;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lf;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    return-object p0
.end method

.method public a(Z)Lf;
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lf;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TITLE_VISIBILITY"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    return-object p0

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lbzh;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchd",
            "<",
            "Lccb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbzh;Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 191
    iput-object p1, p0, Lcah;->b:Lbzh;

    iput-object p2, p0, Lcah;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcah;->c:Ljava/util/List;

    return-void
.end method

.method private synthetic a(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 215
    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->invalidateOptionsMenu()V

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic a(Lcah;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcah;->a(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 226
    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-static {v0}, Lbzh;->b(Lbzh;)Ljava/util/List;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 253
    :pswitch_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    .line 230
    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    .line 231
    iget-object v3, v0, Lchd;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v3, p0, Lcah;->b:Lbzh;

    invoke-static {v3}, Lbzh;->c(Lbzh;)Lcha;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcha;->remove(Ljava/lang/Object;)V

    goto :goto_1

    .line 234
    :cond_0
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v2, Lcbi;->a:Lcbi;

    const-string v3, "Remove"

    invoke-virtual {v0, v2, v3, v1, v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Long;)Lcbd;

    .line 235
    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-static {v0, v1}, Lbzh;->a(Lbzh;Ljava/util/List;)V

    .line 255
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 256
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    .line 239
    iget-object v3, p0, Lcah;->b:Lbzh;

    invoke-virtual {v3}, Lbzh;->h()Lel;

    move-result-object v3

    iget-object v4, v0, Lchd;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lccq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    iget-object v0, v0, Lchd;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 241
    :cond_2
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v2, Lcbi;->a:Lcbi;

    const-string v3, "Hibernate"

    invoke-virtual {v0, v2, v3, v1, v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Long;)Lcbd;

    .line 242
    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-static {v0, v1}, Lbzh;->a(Lbzh;Ljava/util/Collection;)V

    goto :goto_2

    .line 245
    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    .line 247
    iget-object v3, p0, Lcah;->b:Lbzh;

    invoke-virtual {v3}, Lbzh;->h()Lel;

    move-result-object v3

    invoke-virtual {v3}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v0, v0, Lchd;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 250
    :cond_4
    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v2, v0}, Lel;->startActivities([Landroid/content/Intent;)V

    goto :goto_2

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00a2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 221
    const v1, 0x7f100002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-static {v0}, Lbzh;->a(Lbzh;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->a()V

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcah;->a:Landroid/widget/ListView;

    invoke-static {p0, v1}, Lcai;->a(Lcah;Landroid/widget/ListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-static {v0}, Lbzh;->a(Lbzh;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->b()V

    .line 195
    iget-object v0, p0, Lcah;->b:Lbzh;

    invoke-static {v0}, Lbzh;->b(Lbzh;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcah;->c:Ljava/util/List;

    .line 196
    iget-object v0, p0, Lcah;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 198
    iget-object v0, p0, Lcah;->b:Lbzh;

    const v1, 0x7f080041

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcah;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lbzh;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 202
    const v0, 0x7f0f00a6

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 203
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcah;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    .line 205
    iget-object v0, v0, Lchd;->i:Lche;

    iget v0, v0, Lche;->a:I

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    .line 206
    :cond_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 208
    return v2

    :cond_1
    move v0, v1

    goto :goto_1
.end method

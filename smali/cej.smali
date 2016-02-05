.class Lcej;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lceh;


# direct methods
.method constructor <init>(Lceh;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcej;->a:Lceh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcej;->a:Lceh;

    invoke-static {v0}, Lceh;->a(Lceh;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 181
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 182
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 183
    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 184
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 181
    :cond_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 186
    :cond_2
    return-void
.end method

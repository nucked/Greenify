.class Lcei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/service/notification/StatusBarNotification;

.field final synthetic c:Lceh;


# direct methods
.method constructor <init>(Lceh;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcei;->c:Lceh;

    iput-object p2, p0, Lcei;->a:Ljava/lang/String;

    iput-object p3, p0, Lcei;->b:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcei;->c:Lceh;

    invoke-static {v0}, Lceh;->a(Lceh;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcei;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 103
    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcei;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcei;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lceh;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.class Lcan;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbzh;


# direct methods
.method constructor <init>(Lbzh;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcan;->a:Lbzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcan;->a:Lbzh;

    invoke-virtual {v0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 500
    iget-object v0, p0, Lcan;->a:Lbzh;

    invoke-static {v0}, Lbzh;->d(Lbzh;)V

    .line 501
    return-void
.end method

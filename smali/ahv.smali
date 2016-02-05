.class public Lahv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahu;


# instance fields
.field final synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method public constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lahv;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)V
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Lahv;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lahx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lahv;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lahx;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lahv;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 69
    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 67
    invoke-interface/range {v0 .. v6}, Lahx;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 71
    :cond_0
    return-void
.end method

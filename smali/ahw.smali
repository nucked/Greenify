.class public Lahw;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method public constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lahw;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 74
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lahw;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    .line 78
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lahw;->a:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    .line 83
    return-void
.end method

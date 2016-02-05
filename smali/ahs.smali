.class Lahs;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lahr;


# direct methods
.method constructor <init>(Lahr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lahs;->a:Lahr;

    .line 38
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lahs;->a:Lahr;

    invoke-static {v0}, Lahr;->a(Lahr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    return-void
.end method

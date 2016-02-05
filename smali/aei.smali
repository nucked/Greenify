.class Laei;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ladz;


# direct methods
.method private constructor <init>(Ladz;)V
    .locals 0

    .prologue
    .line 1767
    iput-object p1, p0, Laei;->a:Ladz;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ladz;Laea;)V
    .locals 0

    .prologue
    .line 1767
    invoke-direct {p0, p1}, Laei;-><init>(Ladz;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Laei;->a:Ladz;

    invoke-virtual {v0}, Ladz;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Laei;->a:Ladz;

    invoke-virtual {v0}, Ladz;->c()V

    .line 1774
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Laei;->a:Ladz;

    invoke-virtual {v0}, Ladz;->i()V

    .line 1779
    return-void
.end method

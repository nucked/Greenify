.class Ltp;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method private constructor <init>(Ltm;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Ltp;->a:Ltm;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltm;Ltn;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0, p1}, Ltp;-><init>(Ltm;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Ltp;->a:Ltm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltm;->a:Z

    .line 473
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-virtual {v0}, Ltm;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Ltp;->a:Ltm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltm;->a:Z

    .line 479
    iget-object v0, p0, Ltp;->a:Ltm;

    invoke-virtual {v0}, Ltm;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method

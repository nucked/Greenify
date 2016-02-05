.class Lfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lfq;


# direct methods
.method constructor <init>(Lfq;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lfs;->a:Lfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lfs;->a:Lfq;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lfq;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 59
    return-void
.end method

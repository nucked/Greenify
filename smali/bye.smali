.class Lbye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbxt;


# direct methods
.method constructor <init>(Lbxt;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lbye;->b:Lbxt;

    iput-object p2, p0, Lbye;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lbye;->a:Landroid/app/Activity;

    const v1, 0x7f0800f9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 420
    return-void
.end method

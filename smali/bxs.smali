.class Lbxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbxq;


# direct methods
.method constructor <init>(Lbxq;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lbxs;->b:Lbxq;

    iput-object p2, p0, Lbxs;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    iget-object v1, p0, Lbxs;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcbd;->a(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lbxs;->a:Landroid/app/Activity;

    const v1, 0x7f0800ff

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    return-void
.end method

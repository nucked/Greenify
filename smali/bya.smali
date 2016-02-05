.class Lbya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbxt;


# direct methods
.method constructor <init>(Lbxt;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lbya;->a:Lbxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lbya;->a:Lbxt;

    iget-object v1, p0, Lbya;->a:Lbxt;

    invoke-static {v1}, Lbxt;->a(Lbxt;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbxt;->a(Ljava/util/List;)V

    return-void
.end method

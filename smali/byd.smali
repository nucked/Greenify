.class Lbyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lbxt;


# direct methods
.method constructor <init>(Lbxt;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lbyd;->b:Lbxt;

    iput-object p2, p0, Lbyd;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lbyd;->b:Lbxt;

    invoke-static {v0}, Lbxt;->e(Lbxt;)Lcdq;

    move-result-object v0

    iget-object v1, p0, Lbyd;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcdq;->a(Ljava/util/Map;)V

    .line 349
    iget-object v0, p0, Lbyd;->b:Lbxt;

    invoke-virtual {v0}, Lbxt;->h()Lel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lbyd;->b:Lbxt;

    invoke-static {v0}, Lbxt;->b(Lbxt;)V

    .line 351
    iget-object v0, p0, Lbyd;->b:Lbxt;

    invoke-static {v0}, Lbxt;->c(Lbxt;)V

    .line 353
    :cond_0
    return-void
.end method

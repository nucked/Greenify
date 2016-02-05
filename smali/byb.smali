.class Lbyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvj;


# instance fields
.field final synthetic a:Lbxt;


# direct methods
.method constructor <init>(Lbxt;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lbyb;->a:Lbxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lbyb;->a:Lbxt;

    invoke-virtual {v0}, Lbxt;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lbyb;->a:Lbxt;

    invoke-static {v0}, Lbxt;->b(Lbxt;)V

    .line 195
    iget-object v0, p0, Lbyb;->a:Lbxt;

    invoke-static {v0}, Lbxt;->c(Lbxt;)V

    .line 197
    :cond_0
    return-void
.end method

.class public Laan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lra;


# instance fields
.field a:I

.field final synthetic b:Laam;

.field private c:Z


# direct methods
.method protected constructor <init>(Laam;)V
    .locals 1

    .prologue
    .line 275
    iput-object p1, p0, Laan;->b:Laam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Laan;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lqj;I)Laan;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Laan;->b:Laam;

    iput-object p1, v0, Laam;->f:Lqj;

    .line 282
    iput p2, p0, Laan;->a:I

    .line 283
    return-object p0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Laan;->b:Laam;

    invoke-static {v0, v1}, Laam;->a(Laam;I)V

    .line 289
    iput-boolean v1, p0, Laan;->c:Z

    .line 290
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Laan;->c:Z

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Laan;->b:Laam;

    const/4 v1, 0x0

    iput-object v1, v0, Laam;->f:Lqj;

    .line 297
    iget-object v0, p0, Laan;->b:Laam;

    iget v1, p0, Laan;->a:I

    invoke-static {v0, v1}, Laam;->b(Laam;I)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Laan;->c:Z

    .line 303
    return-void
.end method

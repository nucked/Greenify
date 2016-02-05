.class public Lwq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lwh;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lwp;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lwq;-><init>(Landroid/content/Context;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lwh;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lwp;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lwh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwq;->a:Lwh;

    .line 282
    iput p2, p0, Lwq;->b:I

    .line 283
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lwq;->a:Lwh;

    iget-object v0, v0, Lwh;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lwq;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lwq;->a:Lwh;

    iget-object v1, p0, Lwq;->a:Lwh;

    iget-object v1, v1, Lwh;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lwh;->i:Ljava/lang/CharSequence;

    .line 400
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p2, v0, Lwh;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 401
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lwq;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->p:Landroid/content/DialogInterface$OnCancelListener;

    .line 495
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lwq;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->r:Landroid/content/DialogInterface$OnKeyListener;

    .line 515
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lwq;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->d:Landroid/graphics/drawable/Drawable;

    .line 372
    return-object p0
.end method

.method public a(Landroid/view/View;)Lwq;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->g:Landroid/view/View;

    .line 330
    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lwq;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->t:Landroid/widget/ListAdapter;

    .line 555
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p2, v0, Lwh;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 556
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lwq;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->f:Ljava/lang/CharSequence;

    .line 315
    return-object p0
.end method

.method public a(Z)Lwq;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-boolean p1, v0, Lwh;->o:Z

    .line 476
    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lwq;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->s:[Ljava/lang/CharSequence;

    .line 540
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p2, v0, Lwh;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 541
    return-object p0
.end method

.method public b()Lwp;
    .locals 4

    .prologue
    .line 882
    new-instance v0, Lwp;

    iget-object v1, p0, Lwq;->a:Lwh;

    iget-object v1, v1, Lwh;->a:Landroid/content/Context;

    iget v2, p0, Lwq;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lwp;-><init>(Landroid/content/Context;IZ)V

    .line 883
    iget-object v1, p0, Lwq;->a:Lwh;

    invoke-static {v0}, Lwp;->a(Lwp;)Lwb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwh;->a(Lwb;)V

    .line 884
    iget-object v1, p0, Lwq;->a:Lwh;

    iget-boolean v1, v1, Lwh;->o:Z

    invoke-virtual {v0, v1}, Lwp;->setCancelable(Z)V

    .line 885
    iget-object v1, p0, Lwq;->a:Lwh;

    iget-boolean v1, v1, Lwh;->o:Z

    if-eqz v1, :cond_0

    .line 886
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lwp;->setCanceledOnTouchOutside(Z)V

    .line 888
    :cond_0
    iget-object v1, p0, Lwq;->a:Lwh;

    iget-object v1, v1, Lwh;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lwp;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 889
    iget-object v1, p0, Lwq;->a:Lwh;

    iget-object v1, v1, Lwh;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lwp;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 890
    iget-object v1, p0, Lwq;->a:Lwh;

    iget-object v1, v1, Lwh;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 891
    iget-object v1, p0, Lwq;->a:Lwh;

    iget-object v1, v1, Lwh;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lwp;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 893
    :cond_1
    return-object v0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lwq;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lwq;->a:Lwh;

    iget-object v1, p0, Lwq;->a:Lwh;

    iget-object v1, v1, Lwh;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lwh;->k:Ljava/lang/CharSequence;

    .line 426
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p2, v0, Lwh;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 427
    return-object p0
.end method

.method public b(Landroid/view/View;)Lwq;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 814
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->w:Landroid/view/View;

    .line 815
    iget-object v0, p0, Lwq;->a:Lwh;

    iput v1, v0, Lwh;->v:I

    .line 816
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-boolean v1, v0, Lwh;->B:Z

    .line 817
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lwq;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p1, v0, Lwh;->h:Ljava/lang/CharSequence;

    .line 350
    return-object p0
.end method

.method public c()Lwp;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lwq;->b()Lwp;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Lwp;->show()V

    .line 903
    return-object v0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lwq;
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lwq;->a:Lwh;

    iget-object v1, p0, Lwq;->a:Lwh;

    iget-object v1, v1, Lwh;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lwh;->m:Ljava/lang/CharSequence;

    .line 452
    iget-object v0, p0, Lwq;->a:Lwh;

    iput-object p2, v0, Lwh;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 453
    return-object p0
.end method

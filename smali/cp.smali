.class public Lcp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lct;


# direct methods
.method constructor <init>(Lct;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcp;->a:Lct;

    .line 114
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0}, Lct;->a()V

    .line 118
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0, p1, p2}, Lct;->a(FF)V

    .line 174
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0, p1}, Lct;->a(I)V

    .line 182
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0, p1, p2}, Lct;->a(II)V

    .line 166
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0, p1}, Lct;->a(Landroid/view/animation/Interpolator;)V

    .line 126
    return-void
.end method

.method public a(Lcr;)V
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcp;->a:Lct;

    new-instance v1, Lcq;

    invoke-direct {v1, p0, p1}, Lcq;-><init>(Lcp;Lcr;)V

    invoke-virtual {v0, v1}, Lct;->a(Lcv;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcp;->a:Lct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lct;->a(Lcv;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0}, Lct;->b()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0}, Lct;->c()I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0}, Lct;->d()F

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcp;->a:Lct;

    invoke-virtual {v0}, Lct;->e()V

    .line 186
    return-void
.end method

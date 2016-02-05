.class Len;
.super Ler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ler",
        "<",
        "Lel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lel;


# direct methods
.method public constructor <init>(Lel;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Len;->a:Lel;

    .line 877
    invoke-direct {p0, p1}, Ler;-><init>(Lel;)V

    .line 878
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0, p1}, Lel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lei;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0, p1, p2, p3}, Lel;->a(Lei;Landroid/content/Intent;I)V

    .line 908
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0}, Lel;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lei;)Z
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0}, Lel;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0}, Lel;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Len;->a:Lel;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public b(Lei;)V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0, p1}, Lel;->a(Lei;)V

    .line 937
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0}, Lel;->d()V

    .line 903
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0}, Lel;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Len;->a:Lel;

    invoke-virtual {v0}, Lel;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 931
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

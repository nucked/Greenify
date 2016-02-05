.class Lcao;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Lbzh;


# direct methods
.method constructor <init>(Lbzh;Landroid/app/ProgressDialog;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcao;->c:Lbzh;

    iput-object p2, p0, Lcao;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcao;->b:Ljava/util/Collection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lcao;->c:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v1

    .line 1113
    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1114
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcao;->b:Ljava/util/Collection;

    invoke-static {v1}, Lccq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lccq;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Lccq;->a(Landroid/content/Context;Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1118
    iget-object v0, p0, Lcao;->c:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v1

    .line 1119
    if-nez v1, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcao;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :goto_1
    iget-object v0, p0, Lcao;->c:Lbzh;

    invoke-virtual {v0}, Lbzh;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->clearChoices()V

    .line 1122
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1123
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v3

    sget-object v4, Lcbi;->f:Lcbi;

    const-string v5, "Manual"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    goto :goto_2

    .line 1124
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    invoke-static {v1}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, p1, v2}, Lbxd;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    iget-object v2, p0, Lcao;->c:Lbzh;

    const v3, 0x7f0800fb

    invoke-virtual {v2, v3}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1120
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1104
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcao;->a([Ljava/lang/Void;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1104
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcao;->a(Ljava/util/Collection;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1106
    iget-object v0, p0, Lcao;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcao;->c:Lbzh;

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Lbzh;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1107
    iget-object v0, p0, Lcao;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1108
    iget-object v0, p0, Lcao;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1109
    return-void
.end method

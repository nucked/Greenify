.class public Lcff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcdi;


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 156
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 159
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-virtual {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f08013c

    new-array v2, v5, [Lcjp;

    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-virtual {v0, v5}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->setProgressBarIndeterminateVisibility(Z)V

    .line 162
    const/16 v0, 0x231

    if-ne p1, v0, :cond_1

    .line 163
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbj;->e:Lcbj;

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    .line 165
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    .line 173
    return-void

    .line 167
    :cond_1
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbj;->e:Lcbj;

    const/16 v0, 0x123

    if-ne p1, v0, :cond_2

    const-string v0, "Retry"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-virtual {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcjp;

    const v3, 0x7f08013a

    sget-object v4, Lcbo;->d:Lcbo;

    .line 169
    invoke-static {v4}, Lcbn;->a(Lcbo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcjh;->a(ILandroid/net/Uri;)Lcjp;

    move-result-object v3

    aput-object v3, v2, v5

    .line 168
    invoke-static {v0, v1, v2}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "Error"

    goto :goto_1
.end method

.method public b(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 176
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->e(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 181
    :cond_1
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-virtual {v0, v6}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->setProgressBarIndeterminateVisibility(Z)V

    .line 182
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbj;->e:Lcbj;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->h:Lcbi;

    const-string v2, "VerificationError"

    const-string v3, "Callback"

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 184
    const-string v0, "License"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Donation verification error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    if-gez p1, :cond_2

    const v0, 0x7f08008b

    :goto_1
    invoke-virtual {v1, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-virtual {v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Lcjp;

    invoke-static {v1, v0, v2}, Lcjh;->a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    goto/16 :goto_0

    .line 185
    :cond_2
    const v0, 0x7f08008a

    goto :goto_1
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 145
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 149
    :cond_0
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->setProgressBarIndeterminateVisibility(Z)V

    .line 150
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbj;->e:Lcbj;

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcff;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    .line 152
    return-void
.end method

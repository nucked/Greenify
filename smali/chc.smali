.class Lchc;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/CharSequence;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lchd;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcha;


# direct methods
.method constructor <init>(Lcha;Lchd;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lchc;->d:Lcha;

    iput-object p2, p0, Lchc;->a:Lchd;

    iput-object p3, p0, Lchc;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lchc;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lchc;->d:Lcha;

    invoke-static {v0}, Lcha;->a(Lcha;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lchc;->a:Lchd;

    iget-object v1, v1, Lchd;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lchc;->d:Lcha;

    invoke-static {v1}, Lcha;->b(Lcha;)Lchh;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lchc;->d:Lcha;

    invoke-static {v3}, Lcha;->b(Lcha;)Lchh;

    move-result-object v3

    iget-object v4, p0, Lchc;->a:Lchd;

    iget-object v5, p0, Lchc;->d:Lcha;

    invoke-static {v5}, Lcha;->a(Lcha;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lchh;->a(Lchd;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lchc;->publishProgress([Ljava/lang/Object;)V

    .line 126
    :cond_0
    :goto_0
    iget-object v1, p0, Lchc;->d:Lcha;

    invoke-static {v1}, Lcha;->c(Lcha;)Lcjg;

    move-result-object v1

    iget-object v2, p0, Lchc;->d:Lcha;

    invoke-static {v2}, Lcha;->a(Lcha;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcjg;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    :goto_1
    return-object v0

    .line 124
    :cond_1
    iget-object v1, p0, Lchc;->a:Lchd;

    iget-object v1, v1, Lchd;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lchc;->d:Lcha;

    invoke-static {v3}, Lcha;->a(Lcha;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lchc;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lchc;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lchc;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lchc;->a([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lchc;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lchc;->a([Ljava/lang/CharSequence;)V

    return-void
.end method

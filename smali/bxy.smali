.class Lbxy;
.super Lbyi;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbxt;


# direct methods
.method constructor <init>(Lbxt;ZZ)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lbxy;->a:Lbxt;

    invoke-direct {p0, p1, p2, p3}, Lbyi;-><init>(Lbxt;ZZ)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Lbxy;->a:Lbxt;

    invoke-virtual {v0}, Lbxt;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 695
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    .line 697
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lbyj;

    sget-object v5, Lbyk;->d:Lbyk;

    invoke-direct {v4, v5}, Lbyj;-><init>(Lbyk;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbyj;->a(Ljava/lang/CharSequence;)Lbyj;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 698
    :cond_1
    return-void
.end method

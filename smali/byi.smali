.class abstract Lbyi;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lbyj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lbwz;

.field final synthetic c:Lbxt;

.field private final d:Z

.field private final e:Z


# direct methods
.method protected constructor <init>(Lbxt;ZZ)V
    .locals 1

    .prologue
    .line 623
    iput-object p1, p0, Lbyi;->c:Lbxt;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbyi;->a:Ljava/util/Map;

    .line 623
    iput-boolean p2, p0, Lbyi;->d:Z

    iput-boolean p3, p0, Lbyi;->e:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lbyi;->a:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lbyi;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lbyi;->a:Ljava/util/Map;

    return-object v0
.end method

.method abstract a(Ljava/util/Map;)V
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
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lbyi;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 3
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
    .line 629
    iget-object v0, p0, Lbyi;->c:Lbxt;

    invoke-virtual {v0}, Lbxt;->o()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lbyi;->c:Lbxt;

    iget-boolean v1, p0, Lbyi;->d:Z

    iget-boolean v2, p0, Lbyi;->e:Z

    invoke-static {v0, p1, v1, v2}, Lbxt;->a(Lbxt;Ljava/util/Map;ZZ)V

    iget-object v0, p0, Lbyi;->b:Lbwz;

    invoke-virtual {v0}, Lbwz;->a()V

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lbyi;->c:Lbxt;

    invoke-static {v0}, Lbxt;->h(Lbxt;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method protected c(Ljava/util/Map;)V
    .locals 1
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
    .line 632
    iget-object v0, p0, Lbyi;->b:Lbwz;

    invoke-virtual {v0}, Lbwz;->a()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 621
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbyi;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 621
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lbyi;->c(Ljava/util/Map;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 621
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lbyi;->b(Ljava/util/Map;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lbyi;->c:Lbxt;

    invoke-static {v0}, Lbxt;->g(Lbxt;)Lbwy;

    move-result-object v0

    invoke-virtual {v0}, Lbwy;->a()Lbwz;

    move-result-object v0

    iput-object v0, p0, Lbyi;->b:Lbwz;

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 621
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbyi;->b([Ljava/lang/String;)V

    return-void
.end method

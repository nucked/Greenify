.class Lfv;
.super Lft;
.source "SourceFile"


# static fields
.field static a:Z


# instance fields
.field final b:Lme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme",
            "<",
            "Lfw;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme",
            "<",
            "Lfw;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Z

.field private h:Ler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Lfv;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ler;Z)V
    .locals 1

    .prologue
    .line 526
    invoke-direct {p0}, Lft;-><init>()V

    .line 197
    new-instance v0, Lme;

    invoke-direct {v0}, Lme;-><init>()V

    iput-object v0, p0, Lfv;->b:Lme;

    .line 203
    new-instance v0, Lme;

    invoke-direct {v0}, Lme;-><init>()V

    iput-object v0, p0, Lfv;->c:Lme;

    .line 527
    iput-object p1, p0, Lfv;->d:Ljava/lang/String;

    .line 528
    iput-object p2, p0, Lfv;->h:Ler;

    .line 529
    iput-boolean p3, p0, Lfv;->e:Z

    .line 530
    return-void
.end method

.method static synthetic a(Lfv;)Ler;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lfv;->h:Ler;

    return-object v0
.end method

.method private b(ILandroid/os/Bundle;Lfu;)Lfw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lfu",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lfw;"
        }
    .end annotation

    .prologue
    .line 538
    new-instance v0, Lfw;

    invoke-direct {v0, p0, p1, p2, p3}, Lfw;-><init>(Lfv;ILandroid/os/Bundle;Lfu;)V

    .line 539
    invoke-interface {p3, p1, p2}, Lfu;->a(ILandroid/os/Bundle;)Ljc;

    move-result-object v1

    .line 540
    iput-object v1, v0, Lfw;->d:Ljc;

    .line 541
    return-object v0
.end method

.method private c(ILandroid/os/Bundle;Lfu;)Lfw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lfu",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lfw;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 547
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lfv;->g:Z

    .line 548
    invoke-direct {p0, p1, p2, p3}, Lfv;->b(ILandroid/os/Bundle;Lfu;)Lfw;

    move-result-object v0

    .line 549
    invoke-virtual {p0, v0}, Lfv;->a(Lfw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iput-boolean v1, p0, Lfv;->g:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lfv;->g:Z

    throw v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lfu;)Ljc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lfu",
            "<TD;>;)",
            "Ljc",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 592
    iget-boolean v0, p0, Lfv;->g:Z

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, p1}, Lme;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    .line 598
    sget-boolean v1, Lfv;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1
    if-nez v0, :cond_4

    .line 602
    invoke-direct {p0, p1, p2, p3}, Lfv;->c(ILandroid/os/Bundle;Lfu;)Lfw;

    move-result-object v0

    .line 603
    sget-boolean v1, Lfv;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lfw;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lfv;->e:Z

    if-eqz v1, :cond_3

    .line 611
    iget-object v1, v0, Lfw;->d:Ljc;

    iget-object v2, v0, Lfw;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfw;->b(Ljc;Ljava/lang/Object;)V

    .line 614
    :cond_3
    iget-object v0, v0, Lfw;->d:Ljc;

    return-object v0

    .line 605
    :cond_4
    sget-boolean v1, Lfv;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_5
    iput-object p3, v0, Lfw;->c:Lfu;

    goto :goto_0
.end method

.method a(Ler;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lfv;->h:Ler;

    .line 534
    return-void
.end method

.method a(Lfw;)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lfv;->b:Lme;

    iget v1, p1, Lfw;->a:I

    invoke-virtual {v0, v1, p1}, Lme;->b(ILjava/lang/Object;)V

    .line 558
    iget-boolean v0, p0, Lfv;->e:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p1}, Lfw;->a()V

    .line 564
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 852
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 853
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 855
    :goto_0
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 856
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    .line 857
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lfv;->b:Lme;

    invoke-virtual {v4, v1}, Lme;->d(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 858
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lfw;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v3, p2, p3, p4}, Lfw;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 855
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lfv;->c:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 863
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    :goto_1
    iget-object v0, p0, Lfv;->c:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 866
    iget-object v0, p0, Lfv;->c:Lme;

    invoke-virtual {v0, v2}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    .line 867
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lfv;->c:Lme;

    invoke-virtual {v3, v2}, Lme;->d(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 868
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lfw;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, v1, p2, p3, p4}, Lfw;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 872
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 876
    .line 877
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 878
    :goto_0
    if-ge v2, v4, :cond_1

    .line 879
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v2}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    .line 880
    iget-boolean v5, v0, Lfw;->h:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Lfw;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    .line 878
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 880
    goto :goto_1

    .line 882
    :cond_1
    return v3
.end method

.method b()V
    .locals 4

    .prologue
    .line 752
    sget-boolean v0, Lfv;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-boolean v0, p0, Lfv;->e:Z

    if-eqz v0, :cond_2

    .line 754
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 756
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    :cond_1
    return-void

    .line 760
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfv;->e:Z

    .line 764
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 765
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    invoke-virtual {v0}, Lfw;->a()V

    .line 764
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 770
    sget-boolean v0, Lfv;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    iget-boolean v0, p0, Lfv;->e:Z

    if-nez v0, :cond_1

    .line 772
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 774
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 779
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    invoke-virtual {v0}, Lfw;->e()V

    .line 778
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 781
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfv;->e:Z

    goto :goto_0
.end method

.method d()V
    .locals 4

    .prologue
    .line 785
    sget-boolean v0, Lfv;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    iget-boolean v0, p0, Lfv;->e:Z

    if-nez v0, :cond_2

    .line 787
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 789
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    :cond_1
    return-void

    .line 793
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfv;->f:Z

    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfv;->e:Z

    .line 795
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 796
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    invoke-virtual {v0}, Lfw;->b()V

    .line 795
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method e()V
    .locals 3

    .prologue
    .line 801
    iget-boolean v0, p0, Lfv;->f:Z

    if-eqz v0, :cond_1

    .line 802
    sget-boolean v0, Lfv;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfv;->f:Z

    .line 805
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 806
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    invoke-virtual {v0}, Lfw;->c()V

    .line 805
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 809
    :cond_1
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    .line 812
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 813
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lfw;->k:Z

    .line 812
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 815
    :cond_0
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 819
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    invoke-virtual {v0}, Lfw;->d()V

    .line 818
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 821
    :cond_0
    return-void
.end method

.method h()V
    .locals 3

    .prologue
    .line 824
    iget-boolean v0, p0, Lfv;->f:Z

    if-nez v0, :cond_2

    .line 825
    sget-boolean v0, Lfv;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Active in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 827
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    invoke-virtual {v0}, Lfw;->f()V

    .line 826
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lfv;->b:Lme;

    invoke-virtual {v0}, Lme;->c()V

    .line 832
    :cond_2
    sget-boolean v0, Lfv;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Inactive in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_3
    iget-object v0, p0, Lfv;->c:Lme;

    invoke-virtual {v0}, Lme;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 834
    iget-object v0, p0, Lfv;->c:Lme;

    invoke-virtual {v0, v1}, Lme;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfw;

    invoke-virtual {v0}, Lfw;->f()V

    .line 833
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 836
    :cond_4
    iget-object v0, p0, Lfv;->c:Lme;

    invoke-virtual {v0}, Lme;->c()V

    .line 837
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 842
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget-object v1, p0, Lfv;->h:Ler;

    invoke-static {v1, v0}, Llq;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 846
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

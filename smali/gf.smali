.class public Lgf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lgn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 831
    new-instance v0, Lgp;

    invoke-direct {v0}, Lgp;-><init>()V

    sput-object v0, Lgf;->a:Lgn;

    .line 847
    :goto_0
    return-void

    .line 832
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 833
    new-instance v0, Lgo;

    invoke-direct {v0}, Lgo;-><init>()V

    sput-object v0, Lgf;->a:Lgn;

    goto :goto_0

    .line 834
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 835
    new-instance v0, Lgv;

    invoke-direct {v0}, Lgv;-><init>()V

    sput-object v0, Lgf;->a:Lgn;

    goto :goto_0

    .line 836
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 837
    new-instance v0, Lgu;

    invoke-direct {v0}, Lgu;-><init>()V

    sput-object v0, Lgf;->a:Lgn;

    goto :goto_0

    .line 838
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 839
    new-instance v0, Lgt;

    invoke-direct {v0}, Lgt;-><init>()V

    sput-object v0, Lgf;->a:Lgn;

    goto :goto_0

    .line 840
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 841
    new-instance v0, Lgs;

    invoke-direct {v0}, Lgs;-><init>()V

    sput-object v0, Lgf;->a:Lgn;

    goto :goto_0

    .line 842
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 843
    new-instance v0, Lgr;

    invoke-direct {v0}, Lgr;-><init>()V

    sput-object v0, Lgf;->a:Lgn;

    goto :goto_0

    .line 845
    :cond_6
    new-instance v0, Lgq;

    invoke-direct {v0}, Lgq;-><init>()V

    sput-object v0, Lgf;->a:Lgn;

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3290
    sget-object v0, Lgf;->a:Lgn;

    invoke-interface {v0, p0}, Lgn;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lgn;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lgf;->a:Lgn;

    return-object v0
.end method

.method static synthetic a(Lgd;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lgf;->b(Lgd;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lge;Lgw;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lgf;->b(Lge;Lgw;)V

    return-void
.end method

.method public static b(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3335
    sget-object v0, Lgf;->a:Lgn;

    invoke-interface {v0, p0}, Lgn;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lgd;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgd;",
            "Ljava/util/ArrayList",
            "<",
            "Lgg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgg;

    .line 795
    invoke-interface {p0, v0}, Lgd;->a(Lhc;)V

    goto :goto_0

    .line 797
    :cond_0
    return-void
.end method

.method private static b(Lge;Lgw;)V
    .locals 7

    .prologue
    .line 801
    if-eqz p1, :cond_0

    .line 802
    instance-of v0, p1, Lgj;

    if-eqz v0, :cond_1

    .line 803
    check-cast p1, Lgj;

    .line 804
    iget-object v0, p1, Lgj;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Lgj;->g:Z

    iget-object v2, p1, Lgj;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Lgj;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Lhi;->a(Lge;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    instance-of v0, p1, Lgm;

    if-eqz v0, :cond_2

    .line 810
    check-cast p1, Lgm;

    .line 811
    iget-object v0, p1, Lgm;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Lgm;->g:Z

    iget-object v2, p1, Lgm;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Lgm;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Lhi;->a(Lge;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 816
    :cond_2
    instance-of v0, p1, Lgi;

    if-eqz v0, :cond_0

    .line 817
    check-cast p1, Lgi;

    .line 818
    iget-object v1, p1, Lgi;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Lgi;->g:Z

    iget-object v3, p1, Lgi;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Lgi;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lgi;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Lgi;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lhi;->a(Lge;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3361
    sget-object v0, Lgf;->a:Lgn;

    invoke-interface {v0, p0}, Lgn;->c(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

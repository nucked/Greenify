.class public Lckc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckd;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lckr;

.field private h:Lckr;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object v1, p0, Lckc;->a:Landroid/os/Handler;

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lckc;->b:Z

    .line 619
    const-string v0, "sh"

    iput-object v0, p0, Lckc;->c:Ljava/lang/String;

    .line 620
    iput-boolean v2, p0, Lckc;->d:Z

    .line 621
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lckc;->e:Ljava/util/List;

    .line 622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lckc;->f:Ljava/util/Map;

    .line 623
    iput-object v1, p0, Lckc;->g:Lckr;

    .line 624
    iput-object v1, p0, Lckc;->h:Lckr;

    .line 625
    iput v2, p0, Lckc;->i:I

    return-void
.end method

.method static synthetic a(Lckc;)Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lckc;->b:Z

    return v0
.end method

.method static synthetic b(Lckc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lckc;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lckc;)Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lckc;->d:Z

    return v0
.end method

.method static synthetic d(Lckc;)Ljava/util/List;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lckc;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lckc;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lckc;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lckc;)Lckr;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lckc;->g:Lckr;

    return-object v0
.end method

.method static synthetic g(Lckc;)Lckr;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lckc;->h:Lckr;

    return-object v0
.end method

.method static synthetic h(Lckc;)I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lckc;->i:I

    return v0
.end method

.method static synthetic i(Lckc;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lckc;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lckc;
    .locals 1

    .prologue
    .line 679
    const-string v0, "sh"

    invoke-virtual {p0, v0}, Lckc;->a(Ljava/lang/String;)Lckc;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lckc;
    .locals 0

    .prologue
    .line 873
    iput p1, p0, Lckc;->i:I

    .line 874
    return-object p0
.end method

.method public a(Landroid/os/Handler;)Lckc;
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lckc;->a:Landroid/os/Handler;

    .line 641
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lckc;
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lckc;->c:Ljava/lang/String;

    .line 670
    return-object p0
.end method

.method public a(Z)Lckc;
    .locals 0

    .prologue
    .line 698
    iput-boolean p1, p0, Lckc;->d:Z

    .line 699
    return-object p0
.end method

.method public a(Lckm;)Lcke;
    .locals 2

    .prologue
    .line 907
    new-instance v0, Lcke;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcke;-><init>(Lckc;Lckm;Lckb;)V

    return-object v0
.end method

.method public b()Lckc;
    .locals 1

    .prologue
    .line 688
    const-string v0, "su"

    invoke-virtual {p0, v0}, Lckc;->a(Ljava/lang/String;)Lckc;

    move-result-object v0

    return-object v0
.end method

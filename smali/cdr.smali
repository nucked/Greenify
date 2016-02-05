.class public Lcdr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lbkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbkl",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lbkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbkl",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcds;

    invoke-direct {v0}, Lcds;-><init>()V

    sput-object v0, Lcdr;->d:Lbkl;

    .line 63
    new-instance v0, Lcdt;

    invoke-direct {v0}, Lcdt;-><init>()V

    sput-object v0, Lcdr;->e:Lbkl;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcdr;->b:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcdr;->c:Ljava/util/Set;

    .line 56
    iput-object p1, p0, Lcdr;->a:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcdr;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcdr;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

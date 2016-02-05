.class Lckd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private final b:[Ljava/lang/String;

.field private final c:I

.field private final d:Lckm;

.field private final e:Lckl;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    sput v0, Lckd;->a:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILckm;Lckl;)V
    .locals 5

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lckd;->b:[Ljava/lang/String;

    .line 606
    iput p2, p0, Lckd;->c:I

    .line 607
    iput-object p3, p0, Lckd;->d:Lckm;

    .line 608
    iput-object p4, p0, Lckd;->e:Lckl;

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lckd;->a:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lckd;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lckd;->f:Ljava/lang/String;

    .line 610
    return-void
.end method

.method static synthetic a(Lckd;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lckd;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lckd;)Lckm;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lckd;->d:Lckm;

    return-object v0
.end method

.method static synthetic c(Lckd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lckd;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lckd;)Lckl;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lckd;->e:Lckl;

    return-object v0
.end method

.method static synthetic e(Lckd;)I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lckd;->c:I

    return v0
.end method

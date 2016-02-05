.class Ladp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lafy;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method private constructor <init>(Lafy;IIII)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ladp;->a:Lafy;

    .line 58
    iput p2, p0, Ladp;->b:I

    .line 59
    iput p3, p0, Ladp;->c:I

    .line 60
    iput p4, p0, Ladp;->d:I

    .line 61
    iput p5, p0, Ladp;->e:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lafy;IIIILadg;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Ladp;-><init>(Lafy;IIII)V

    return-void
.end method

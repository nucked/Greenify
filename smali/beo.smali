.class Lbeo;
.super Lbge;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lawt;->ap:Lawt;

    invoke-virtual {v0}, Lawt;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbeo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lbeo;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbge;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lbio;Lbio;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbio;",
            "Lbio;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxh;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lbio;->a(Lbio;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

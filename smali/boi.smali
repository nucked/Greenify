.class final Lboi;
.super Lbok;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbok",
        "<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lboi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lboi;

    invoke-direct {v0}, Lboi;-><init>()V

    sput-object v0, Lboi;->a:Lboi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lbok;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p2}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a()Lbok;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lbok",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lboo;->a:Lboo;

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lboi;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "Ordering.natural()"

    return-object v0
.end method

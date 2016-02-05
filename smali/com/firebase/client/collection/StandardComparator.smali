.class public Lcom/firebase/client/collection/StandardComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/Comparable",
        "<TA;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TA;>;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/firebase/client/collection/StandardComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/firebase/client/collection/StandardComparator;

    invoke-direct {v0}, Lcom/firebase/client/collection/StandardComparator;-><init>()V

    sput-object v0, Lcom/firebase/client/collection/StandardComparator;->INSTANCE:Lcom/firebase/client/collection/StandardComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getComparator(Ljava/lang/Class;)Lcom/firebase/client/collection/StandardComparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/firebase/client/collection/StandardComparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 14
    sget-object v0, Lcom/firebase/client/collection/StandardComparator;->INSTANCE:Lcom/firebase/client/collection/StandardComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)I"
        }
    .end annotation

    .prologue
    .line 19
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/collection/StandardComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

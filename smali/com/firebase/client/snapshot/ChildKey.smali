.class public Lcom/firebase/client/snapshot/ChildKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/firebase/client/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INFO_CHILD_KEY:Lcom/firebase/client/snapshot/ChildKey;

.field private static final MAX_KEY:Lcom/firebase/client/snapshot/ChildKey;

.field private static final MIN_KEY:Lcom/firebase/client/snapshot/ChildKey;

.field private static final PRIORITY_CHILD_KEY:Lcom/firebase/client/snapshot/ChildKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5
    const-class v0, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/snapshot/ChildKey;->$assertionsDisabled:Z

    .line 8
    new-instance v0, Lcom/firebase/client/snapshot/ChildKey;

    const-string v1, "[MIN_KEY]"

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/firebase/client/snapshot/ChildKey;->MIN_KEY:Lcom/firebase/client/snapshot/ChildKey;

    .line 9
    new-instance v0, Lcom/firebase/client/snapshot/ChildKey;

    const-string v1, "[MAX_KEY]"

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/firebase/client/snapshot/ChildKey;->MAX_KEY:Lcom/firebase/client/snapshot/ChildKey;

    .line 12
    new-instance v0, Lcom/firebase/client/snapshot/ChildKey;

    const-string v1, ".priority"

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/firebase/client/snapshot/ChildKey;->PRIORITY_CHILD_KEY:Lcom/firebase/client/snapshot/ChildKey;

    .line 13
    new-instance v0, Lcom/firebase/client/snapshot/ChildKey;

    const-string v1, ".info"

    invoke-direct {v0, v1}, Lcom/firebase/client/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/firebase/client/snapshot/ChildKey;->INFO_CHILD_KEY:Lcom/firebase/client/snapshot/ChildKey;

    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/firebase/client/snapshot/ChildKey$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/firebase/client/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/client/snapshot/ChildKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 2

    .prologue
    .line 96
    invoke-static {p0}, Lcom/firebase/client/utilities/Utilities;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lcom/firebase/client/snapshot/ChildKey$IntegerChildKey;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/firebase/client/snapshot/ChildKey$IntegerChildKey;-><init>(Ljava/lang/String;I)V

    .line 103
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-string v0, ".priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/firebase/client/snapshot/ChildKey;->PRIORITY_CHILD_KEY:Lcom/firebase/client/snapshot/ChildKey;

    goto :goto_0

    .line 102
    :cond_1
    sget-boolean v0, Lcom/firebase/client/snapshot/ChildKey;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_2
    new-instance v0, Lcom/firebase/client/snapshot/ChildKey;

    invoke-direct {v0, p0}, Lcom/firebase/client/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInfoKey()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/firebase/client/snapshot/ChildKey;->INFO_CHILD_KEY:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public static getMaxName()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/firebase/client/snapshot/ChildKey;->MAX_KEY:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public static getMinName()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/firebase/client/snapshot/ChildKey;->MIN_KEY:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method

.method public static getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/firebase/client/snapshot/ChildKey;->PRIORITY_CHILD_KEY:Lcom/firebase/client/snapshot/ChildKey;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Lcom/firebase/client/snapshot/ChildKey;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 53
    if-ne p0, p1, :cond_1

    .line 54
    const/4 v0, 0x0

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    sget-object v2, Lcom/firebase/client/snapshot/ChildKey;->MIN_KEY:Lcom/firebase/client/snapshot/ChildKey;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/firebase/client/snapshot/ChildKey;->MAX_KEY:Lcom/firebase/client/snapshot/ChildKey;

    if-eq p1, v2, :cond_0

    .line 57
    sget-object v2, Lcom/firebase/client/snapshot/ChildKey;->MIN_KEY:Lcom/firebase/client/snapshot/ChildKey;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/firebase/client/snapshot/ChildKey;->MAX_KEY:Lcom/firebase/client/snapshot/ChildKey;

    if-ne p0, v2, :cond_3

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildKey;->isInt()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isInt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildKey;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->compareInts(II)I

    move-result v0

    .line 62
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->compareInts(II)I

    move-result v0

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/ChildKey;->isInt()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_5
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/firebase/client/snapshot/ChildKey;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 85
    instance-of v0, p1, Lcom/firebase/client/snapshot/ChildKey;

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    .line 88
    :cond_0
    if-ne p0, p1, :cond_1

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    check-cast p1, Lcom/firebase/client/snapshot/ChildKey;

    .line 92
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected intValue()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected isInt()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isPriorityChildName()Z
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/firebase/client/snapshot/ChildKey;->PRIORITY_CHILD_KEY:Lcom/firebase/client/snapshot/ChildKey;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildKey(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

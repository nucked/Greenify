.class public Lcom/firebase/client/utilities/Pair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 26
    :cond_3
    check-cast p1, Lcom/firebase/client/utilities/Pair;

    .line 28
    iget-object v2, p0, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    iget-object v3, p1, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 29
    :cond_6
    iget-object v2, p0, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    iget-object v3, p1, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 37
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 38
    return v0

    :cond_1
    move v0, v1

    .line 36
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pair("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/utilities/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/utilities/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

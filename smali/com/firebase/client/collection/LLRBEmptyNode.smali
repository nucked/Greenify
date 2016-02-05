.class public Lcom/firebase/client/collection/LLRBEmptyNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/collection/LLRBNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/firebase/client/collection/LLRBNode",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/firebase/client/collection/LLRBEmptyNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/firebase/client/collection/LLRBEmptyNode;

    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBEmptyNode;-><init>()V

    sput-object v0, Lcom/firebase/client/collection/LLRBEmptyNode;->INSTANCE:Lcom/firebase/client/collection/LLRBEmptyNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/firebase/client/collection/LLRBEmptyNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/firebase/client/collection/LLRBEmptyNode;->INSTANCE:Lcom/firebase/client/collection/LLRBEmptyNode;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode$Color;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 25
    return-object p0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeft()Lcom/firebase/client/collection/LLRBNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    return-object p0
.end method

.method public getMax()Lcom/firebase/client/collection/LLRBNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 75
    return-object p0
.end method

.method public getMin()Lcom/firebase/client/collection/LLRBNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    return-object p0
.end method

.method public getRight()Lcom/firebase/client/collection/LLRBNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 65
    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/firebase/client/collection/LLRBRedValueNode;

    invoke-direct {v0, p1, p2}, Lcom/firebase/client/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public isRed()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 35
    return-object p0
.end method

.method public shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

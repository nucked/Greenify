.class public Lcbm;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(Lcom/firebase/client/FirebaseError;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/firebase/client/FirebaseError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v0

    iput v0, p0, Lcbm;->a:I

    .line 53
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcbm;->a:I

    return v0
.end method

.class Lcom/firebase/tubesock/MessageBuilderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static builder(B)Lcom/firebase/tubesock/MessageBuilderFactory$Builder;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 176
    new-instance v0, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;

    invoke-direct {v0}, Lcom/firebase/tubesock/MessageBuilderFactory$BinaryBuilder;-><init>()V

    .line 179
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;

    invoke-direct {v0}, Lcom/firebase/tubesock/MessageBuilderFactory$TextBuilder;-><init>()V

    goto :goto_0
.end method

.class final Lbpe;
.super Lbox;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbox",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0}, Lbox;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    const-string v0, "Files.fileTreeTraverser()"

    return-object v0
.end method

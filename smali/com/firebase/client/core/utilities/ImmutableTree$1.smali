.class Lcom/firebase/client/core/utilities/ImmutableTree$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/utilities/ImmutableTree;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/utilities/ImmutableTree;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/firebase/client/core/utilities/ImmutableTree$1;->this$0:Lcom/firebase/client/core/utilities/ImmutableTree;

    iput-object p2, p0, Lcom/firebase/client/core/utilities/ImmutableTree$1;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/core/utilities/ImmutableTree$1;->onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "TT;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/firebase/client/core/utilities/ImmutableTree$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

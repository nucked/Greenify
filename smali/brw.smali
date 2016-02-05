.class Lbrw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbsk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbsk",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbrl;


# direct methods
.method constructor <init>(Lbrl;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lbrw;->a:Lbrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

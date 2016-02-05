.class Lbrm;
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
.field final synthetic a:Lbqg;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lbrl;


# direct methods
.method constructor <init>(Lbrl;Lbqg;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lbrm;->c:Lbrl;

    iput-object p2, p0, Lbrm;->a:Lbqg;

    iput-object p3, p0, Lbrm;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lbrm;->a:Lbqg;

    iget-object v1, p0, Lbrm;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lbqg;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

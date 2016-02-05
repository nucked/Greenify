.class Lbyj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Lbyk;

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbyk;)V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbyj;->h:Ljava/util/Set;

    .line 403
    iput-object p1, p0, Lbyj;->b:Lbyk;

    return-void
.end method


# virtual methods
.method a(I)Lbyj;
    .locals 0

    .prologue
    .line 406
    iput p1, p0, Lbyj;->d:I

    return-object p0
.end method

.method a(Ljava/lang/CharSequence;)Lbyj;
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lbyj;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lbyj;
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lbyj;->c:Ljava/lang/String;

    return-object p0
.end method

.method b(I)Lbyj;
    .locals 0

    .prologue
    .line 407
    iput p1, p0, Lbyj;->e:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detail{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbyj;->b:Lbyk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbyj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbyj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbyj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

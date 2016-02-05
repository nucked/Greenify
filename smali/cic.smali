.class public Lcic;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcic;"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcic;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcic;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcic;->d:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public a(Ljava/lang/reflect/Method;)Lcic;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcic;->b:Ljava/lang/reflect/Method;

    .line 72
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcic;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcic;->c:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcic;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcic;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

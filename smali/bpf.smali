.class final Lbpf;
.super Lbpa;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lbmw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbmw",
            "<",
            "Lbpb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/io/File;[Lbpb;)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lbpa;-><init>()V

    .line 194
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lbpf;->a:Ljava/io/File;

    .line 195
    invoke-static {p2}, Lbmw;->a([Ljava/lang/Object;)Lbmw;

    move-result-object v0

    iput-object v0, p0, Lbpf;->b:Lbmw;

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;[Lbpb;Lbpd;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lbpf;-><init>(Ljava/io/File;[Lbpb;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lbpf;->c()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/FileOutputStream;
    .locals 4

    .prologue
    .line 200
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lbpf;->a:Ljava/io/File;

    iget-object v2, p0, Lbpf;->b:Lbmw;

    sget-object v3, Lbpb;->a:Lbpb;

    invoke-virtual {v2, v3}, Lbmw;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lbpf;->a:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbpf;->b:Lbmw;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Files.asByteSink("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

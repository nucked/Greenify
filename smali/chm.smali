.class final Lchm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lchp;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lchm;->a:Ljava/lang/String;

    iput-object p2, p0, Lchm;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([Landroid/os/ParcelFileDescriptor;Lchq;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lchm;->b([Landroid/os/ParcelFileDescriptor;Lchq;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Lchr;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lchm;->b(Ljava/util/List;Lchr;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static synthetic b([Landroid/os/ParcelFileDescriptor;Lchq;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 70
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {p1, v0}, Lchq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lchq;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 82
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    const-string v2, "Dump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error dumping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic b(Ljava/util/List;Lchr;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 94
    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_0
    invoke-interface {p1, p0}, Lchr;->a(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lchq;)Z
    .locals 5

    .prologue
    .line 67
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 69
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lchm;->a:Ljava/lang/String;

    iget-object v3, p0, Lchm;->b:[Ljava/lang/String;

    invoke-static {v1, p1, v2, v3}, Lchn;->a([Landroid/os/ParcelFileDescriptor;Lchq;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DumpThread - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lchm;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    :try_start_0
    iget-object v0, p0, Lchm;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lchm;->b:[Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 87
    const/4 v2, 0x1

    :try_start_1
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    :try_start_2
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a(Lchr;)Z
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-static {v0, p1}, Lcho;->a(Ljava/util/List;Lchr;)Lchq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lchm;->a(Lchq;)Z

    move-result v0

    return v0
.end method

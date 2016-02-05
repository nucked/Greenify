.class public Lbkj;
.super Ljava/lang/Object;

# interfaces
.implements Lbet;


# static fields
.field private static a:Lbkj;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lbgq;

.field private f:Lbeu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbkj;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lbev;->a(Landroid/content/Context;)Lbev;

    move-result-object v0

    new-instance v1, Lbhs;

    invoke-direct {v1}, Lbhs;-><init>()V

    invoke-direct {p0, v0, v1}, Lbkj;-><init>(Lbeu;Lbgq;)V

    return-void
.end method

.method constructor <init>(Lbeu;Lbgq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkj;->f:Lbeu;

    iput-object p2, p0, Lbkj;->e:Lbgq;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbet;
    .locals 2

    sget-object v1, Lbkj;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbkj;->a:Lbkj;

    if-nez v0, :cond_0

    new-instance v0, Lbkj;

    invoke-direct {v0, p0}, Lbkj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbkj;->a:Lbkj;

    :cond_0
    sget-object v0, Lbkj;->a:Lbkj;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lbkj;->e:Lbgq;

    invoke-interface {v1}, Lbgq;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v1}, Lbfo;->b(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lbkj;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbkj;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbkj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbkj;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending wrapped url hit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbfo;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lbkj;->f:Lbeu;

    invoke-interface {v0, p1}, Lbeu;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error wrapping URL for testing."

    invoke-static {v2, v1}, Lbfo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

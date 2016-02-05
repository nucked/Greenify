.class public Lccz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Ljava/lang/Integer;


# instance fields
.field private final a:Landroid/content/ServiceConnection;

.field private final b:Landroid/content/Context;

.field private final c:Lcdi;

.field private final d:Lbli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbli",
            "<",
            "Lapz;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lapz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcdi;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Lcdg;

    invoke-direct {v0, p0}, Lcdg;-><init>(Lccz;)V

    iput-object v0, p0, Lccz;->a:Landroid/content/ServiceConnection;

    .line 173
    iput-object p1, p0, Lccz;->b:Landroid/content/Context;

    .line 174
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lccz;->c:Lcdi;

    .line 180
    invoke-static {p0, p1}, Lcdc;->a(Lccz;Landroid/content/Context;)Lbli;

    move-result-object v0

    invoke-static {v0}, Lblj;->a(Lbli;)Lbli;

    move-result-object v0

    iput-object v0, p0, Lccz;->d:Lbli;

    .line 183
    return-void

    .line 174
    :cond_0
    new-instance p2, Lcdf;

    invoke-direct {p2, p0}, Lcdf;-><init>(Lccz;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)I
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lccz;->f:Ljava/lang/Integer;

    .line 187
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-static {p0}, Lccz;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lccz;->f:Ljava/lang/Integer;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lccz;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lccz;->a:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic a(Lccz;Landroid/content/Context;)Lapz;
    .locals 1

    invoke-direct {p0, p1}, Lccz;->f(Landroid/content/Context;)Lapz;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    invoke-static {p0}, Lccz;->b(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method private synthetic a(Lbpk;Ljava/lang/String;)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/16 v8, 0x123

    .line 128
    invoke-interface {p1}, Lbpk;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lccz;->c:Lcdi;

    invoke-interface {v0, v8}, Lcdi;->b(I)V

    .line 156
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lbpk;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 132
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 133
    iget-object v1, p0, Lccz;->b:Landroid/content/Context;

    invoke-static {v1}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v1

    const-string v2, "activated"

    invoke-interface {v1, v2}, Lbvt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->h:Lcbi;

    const-string v3, "Activated"

    invoke-virtual {v1, v2, v3, p2, v0}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 135
    :cond_1
    iget-object v1, p0, Lccz;->c:Lcdi;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcdi;->c(I)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 151
    const-string v0, "Purchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to fetch data due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->h:Lcbi;

    const-string v2, "Firebase.Error"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    instance-of v5, v4, Lcbm;

    if-eqz v5, :cond_3

    check-cast v4, Lcbm;

    .line 153
    invoke-virtual {v4}, Lcbm;->a()I

    move-result v4

    int-to-long v4, v4

    .line 152
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 154
    iget-object v0, p0, Lccz;->c:Lcdi;

    invoke-interface {v0, v8}, Lcdi;->b(I)V

    goto :goto_0

    .line 137
    :cond_2
    :try_start_1
    iget-object v1, p0, Lccz;->b:Landroid/content/Context;

    invoke-static {v1}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v1

    const-string v2, "activated"

    invoke-interface {v1, v2}, Lbvt;->c(Ljava/lang/String;)Z

    .line 138
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbi;->h:Lcbi;

    const-string v3, "NoLicense"

    invoke-virtual {v1, v2, v3, p2, v0}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 139
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0}, Lcde;->a(Lccz;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    iget-object v0, p0, Lccz;->c:Lcdi;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcdi;->a(I)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_3
    move-wide v4, v6

    .line 153
    goto :goto_1
.end method

.method static synthetic a(Lccz;Lbpk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccz;->a(Lbpk;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lccz;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccz;Lanl;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lccz;->a(Lanl;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lccz;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lccz;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 96
    const-string v0, "com.oasisfeng.greenify.pro"

    invoke-static {p0, v0}, Lbwc;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private static synthetic b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 248
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rm -f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcdj;->a([Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lccz;)Lcdi;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lccz;->c:Lcdi;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    invoke-static {p0}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    .line 200
    const-string v1, "thank-for-donation"

    invoke-interface {v0, v1}, Lbvt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-static {p0, v2}, Lccz;->a(Landroid/content/Context;Z)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 202
    const v1, 0x7f080087

    const v2, 0x7f080086

    invoke-static {p0, v1, v2}, Lbwv;->a(Landroid/content/Context;II)Lbww;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbww;->a(Ljava/lang/Runnable;)Lbww;

    move-result-object v1

    invoke-virtual {v1}, Lbww;->c()Lwp;

    .line 203
    const-string v1, "thank-for-donation"

    invoke-interface {v0, v1}, Lbvt;->b(Ljava/lang/String;)Z

    .line 206
    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 222
    :try_start_0
    const-string v3, "com.oasisfeng.greenify.pro"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 223
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_2

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    move-exception v1

    .line 226
    invoke-static {p0}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v1

    const-string v2, "activated"

    invoke-interface {v1, v2}, Lbvt;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    const/4 v0, -0x6

    goto :goto_0

    .line 229
    :cond_2
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_3

    .line 230
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v2, Lcbi;->h:Lcbi;

    const-string v3, "NoSignature"

    invoke-virtual {v0, v2, v3, v6, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v1

    .line 231
    goto :goto_0

    .line 233
    :cond_3
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-le v4, v0, :cond_4

    .line 234
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v2, Lcbi;->h:Lcbi;

    const-string v3, "MultiSignature"

    invoke-virtual {v0, v2, v3, v6, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v0, v1

    .line 235
    goto :goto_0

    .line 237
    :cond_4
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    const v5, -0x163d7ce8

    if-eq v4, v5, :cond_5

    .line 238
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v3, Lcbi;->h:Lcbi;

    const-string v4, "Resigned"

    invoke-virtual {v2, v3, v4, v0, v6}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 240
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    sget-object v3, Lcbj;->g:Lcbj;

    invoke-virtual {v2, v3, v0}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    move v0, v1

    .line 241
    goto :goto_0

    .line 244
    :cond_5
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 245
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_6

    const-string v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "odex"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 248
    invoke-static {v1}, Lcdd;->a(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 249
    const/4 v0, -0x5

    goto/16 :goto_0

    .line 253
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.oasisfeng.greenify.pro"

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x2

    goto/16 :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lccz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oasisfeng.greenify.pro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 309
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x17

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lccz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lccz;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic e()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lccz;->d:Lbli;

    invoke-interface {v0}, Lbli;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    invoke-virtual {v0}, Lapz;->f()Lcom/google/android/gms/common/ConnectionResult;

    .line 142
    sget-object v1, Lalx;->q:Lani;

    iget-object v0, p0, Lccz;->d:Lbli;

    invoke-interface {v0}, Lbli;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    invoke-interface {v1, v0}, Lani;->c(Lapz;)Laqg;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Purchase"

    const-string v3, "Error signing out Google account"

    invoke-virtual {v1, v2, v3, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_0
.end method

.method static synthetic e(Lccz;)V
    .locals 0

    invoke-direct {p0}, Lccz;->e()V

    return-void
.end method

.method private e(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    invoke-static {p1}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v2

    .line 259
    const-string v3, "com.oasisfeng.greenify.pro"

    invoke-virtual {v2, v3}, Lbxd;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    :try_start_0
    invoke-direct {p0}, Lccz;->d()Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    iget-object v2, p0, Lccz;->b:Landroid/content/Context;

    invoke-static {v2}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v2

    invoke-interface {v2, v0}, Lbvt;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lccz;->c:Lcdi;

    const/16 v2, 0x100

    invoke-interface {v0, v2}, Lcdi;->c(I)V

    .line 264
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oasisfeng.greenify.pro.VERIFY_DONATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oasisfeng.greenify.pro"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lccz;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lccz;->b:Landroid/content/Context;

    invoke-static {v2}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v2

    const-string v3, "activated"

    invoke-interface {v2, v3}, Lbvt;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lccz;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private synthetic f(Landroid/content/Context;)Lapz;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Laqa;

    invoke-direct {v0, p1}, Laqa;-><init>(Landroid/content/Context;)V

    sget-object v1, Lalx;->j:Lapm;

    new-instance v2, Lank;

    invoke-direct {v2}, Lank;-><init>()V

    .line 181
    invoke-virtual {v2}, Lank;->a()Lank;

    move-result-object v2

    invoke-virtual {v2}, Lank;->b()Lank;

    move-result-object v2

    invoke-virtual {v2}, Lank;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laqa;->a(Lapm;Lapo;)Laqa;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Laqa;->b()Lapz;

    move-result-object v0

    iput-object v0, p0, Lccz;->e:Lapz;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 5

    .prologue
    .line 106
    sget-object v1, Lalx;->q:Lani;

    iget-object v0, p0, Lccz;->d:Lbli;

    invoke-interface {v0}, Lbli;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    invoke-interface {v1, v0}, Lani;->b(Lapz;)Laqf;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Laqf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "Purchase"

    const-string v2, "Got cached sign-in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Laqf;->b()Laql;

    move-result-object v0

    check-cast v0, Lanl;

    invoke-virtual {p0, v0}, Lccz;->a(Lanl;)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-static {p0}, Lcda;->a(Lccz;)Laqm;

    move-result-object v1

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Laqf;->a(Laqm;JLjava/util/concurrent/TimeUnit;)V

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;I)Z
    .locals 2

    .prologue
    .line 100
    sget-object v1, Lalx;->q:Lani;

    iget-object v0, p0, Lccz;->d:Lbli;

    invoke-interface {v0}, Lbli;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    invoke-interface {v1, v0}, Lani;->a(Lapz;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lanl;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 121
    const-string v0, "Purchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSignInResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lanl;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1}, Lanl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lanl;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    const/16 v1, 0x2e

    const/16 v2, 0xb7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    const v3, 0xff04

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    const/16 v3, 0x266f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lccz;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://greenify.firebaseio.com/license/google/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcbk;->a(Landroid/content/Context;Ljava/lang/String;)Lbpk;

    move-result-object v1

    .line 127
    invoke-static {p0, v1, v0}, Lcdb;->a(Lccz;Lbpk;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 156
    invoke-static {}, Lbpl;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 127
    invoke-interface {v1, v0, v2}, Lbpk;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 157
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lanl;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 161
    :cond_1
    iget-object v0, p0, Lccz;->c:Lcdi;

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcdi;->a(I)V

    move v0, v6

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lccz;->b:Landroid/content/Context;

    invoke-static {v0}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    const-string v1, "activated"

    invoke-interface {v0, v1}, Lbvt;->c(Ljava/lang/String;)Z

    .line 165
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->h:Lcbi;

    const-string v2, "GoogleSignIn.Failure"

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 166
    iget-object v0, p0, Lccz;->c:Lcdi;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcdi;->a(I)V

    move v0, v6

    .line 167
    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lccz;->b:Landroid/content/Context;

    invoke-static {v0}, Lccz;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lccz;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    if-ltz v0, :cond_0

    iget-object v0, p0, Lccz;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lccz;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lccz;->e:Lapz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccz;->e:Lapz;

    invoke-virtual {v0}, Lapz;->g()V

    .line 211
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccz;->b:Landroid/content/Context;

    iget-object v1, p0, Lccz;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcal;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbzh;


# direct methods
.method constructor <init>(Lbzh;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcal;->a:Lbzh;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 325
    iget-object v0, p0, Lcal;->a:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcbb;->d(Landroid/content/Context;)Z

    move-result v0

    .line 326
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbj;->f:Lcbj;

    if-eqz v0, :cond_1

    const-string v0, "Boost"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcal;->a:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 331
    const-string v1, "com.oasisfeng.greenify.pro"

    .line 332
    iget-object v1, p0, Lcal;->a:Lbzh;

    invoke-virtual {v1}, Lbzh;->h()Lel;

    move-result-object v1

    invoke-virtual {v1}, Lel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.oasisfeng.greenify.pro"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 334
    packed-switch v1, :pswitch_data_0

    .line 352
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_1
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbj;->a:Lcbj;

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbj;->c:Lcbj;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbj;->d:Lcbj;

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcal;->a:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcdj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    sget-object v2, Lcbj;->b:Lcbj;

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcbd;->a(Lcbj;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcal;->a:Lbzh;

    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0, v5}, Lccz;->a(Landroid/content/Context;Z)I

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_1
    iget-object v0, p0, Lcal;->a:Lbzh;

    .line 327
    invoke-virtual {v0}, Lbzh;->h()Lel;

    move-result-object v0

    invoke-static {v0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Restricted"

    goto :goto_0

    :cond_2
    const-string v0, "Root"

    goto :goto_0

    .line 335
    :pswitch_0
    const-string v0, "N"

    goto :goto_1

    .line 336
    :pswitch_1
    const-string v0, "X"

    goto :goto_1

    .line 339
    :pswitch_2
    const-string v0, "_"

    goto :goto_1

    .line 343
    :pswitch_3
    :try_start_0
    const-string v1, "com.oasisfeng.greenify.pro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 344
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 345
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    const-string v0, ".apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 346
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "odex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    const-string v0, "O"

    goto/16 :goto_1

    .line 348
    :cond_3
    const-string v0, "Y"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 349
    :catch_0
    move-exception v0

    const-string v0, "N"

    goto/16 :goto_1

    .line 334
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcal;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

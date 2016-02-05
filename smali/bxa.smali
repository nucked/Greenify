.class public Lbxa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lbxa;->a:Landroid/content/Intent;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 109
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .line 112
    :goto_1
    return-object v0

    .line 110
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lbxc;)Landroid/content/ServiceConnection;
    .locals 2

    .prologue
    .line 36
    const-string v1, "com.android.chrome"

    new-instance v0, Lbxb;

    invoke-direct {v0, p1, p2}, Lbxb;-><init>(Landroid/net/Uri;Lbxc;)V

    invoke-static {p0, v1, v0}, Lb;->a(Landroid/content/Context;Ljava/lang/String;Lg;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {p0, p1, v0, v0}, Lbxa;->a(Landroid/content/Context;Landroid/net/Uri;Li;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Li;Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    invoke-static {p0}, Lbxa;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v3, Lbxp;->colorPrimary:I

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    new-instance v0, Lf;

    invoke-direct {v0, p2}, Lf;-><init>(Li;)V

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v2}, Lf;->a(I)Lf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lf;->a(Z)Lf;

    move-result-object v0

    invoke-virtual {v0}, Lf;->a()Ld;

    move-result-object v0

    iget-object v0, v0, Ld;->a:Landroid/content/Intent;

    .line 71
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lbxa;->a:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 75
    :cond_2
    :try_start_0
    invoke-static {p0, v0, p3}, Lbxa;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 98
    :goto_1
    return v0

    .line 70
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 80
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 82
    :try_start_1
    invoke-static {p0, v0, p3}, Lbxa;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 83
    const-string v2, "WebContent"

    const-string v3, "Browser is launched successfully without browser selector."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception v2

    .line 88
    :cond_4
    const-string v2, "https"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    const-string v2, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    :try_start_2
    invoke-static {p0, v0, p3}, Lbxa;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 92
    const-string v0, "WebContent"

    const-string v2, "Browser is launched successfully after falling back to HTTP URL."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    .line 93
    goto :goto_1

    .line 94
    :catch_2
    move-exception v0

    .line 95
    const-string v0, "WebContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to launch browser for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.class final Lccy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lccy;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 59
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 61
    :try_start_0
    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_2

    iget v2, v2, Landroid/system/StructStat;->st_uid:I

    iget v3, p0, Lccy;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 65
    :cond_3
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_4

    iget v2, v2, Llibcore/io/StructStat;->st_uid:I

    iget v3, p0, Lccy;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v3, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    goto :goto_0
.end method

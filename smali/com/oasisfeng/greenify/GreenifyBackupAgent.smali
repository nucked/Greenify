.class public Lcom/oasisfeng/greenify/GreenifyBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SourceFile"


# instance fields
.field a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "greenfied_apps"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "receipt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "analyzer-whitelist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "app.scope"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "version.scope"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oasisfeng/greenify/GreenifyBackupAgent;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 26
    iget-object v2, p0, Lcom/oasisfeng/greenify/GreenifyBackupAgent;->a:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 27
    new-instance v5, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v1

    invoke-direct {v5, p0, v6}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/oasisfeng/greenify/GreenifyBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

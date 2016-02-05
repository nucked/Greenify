.class public abstract Lcht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field final synthetic b:Lchs;

.field private c:J

.field private d:Landroid/app/PendingIntent;

.field private final e:Ljava/lang/Runnable;

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lchs;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lcht;->b:Lchs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcht;->a:Z

    .line 36
    new-instance v0, Lchu;

    invoke-direct {v0, p0}, Lchu;-><init>(Lcht;)V

    iput-object v0, p0, Lcht;->e:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Lchv;

    invoke-direct {v0, p0}, Lchv;-><init>(Lcht;)V

    iput-object v0, p0, Lcht;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcht;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcht;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcht;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcht;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcht;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcht;->d:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic a(Lcht;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcht;->a:Z

    return p1
.end method

.method static synthetic b(Lcht;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcht;->f:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic c(Lcht;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcht;->d:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic d(Lcht;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcht;->a:Z

    return v0
.end method

.method static synthetic e(Lcht;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcht;->e:Ljava/lang/Runnable;

    return-object v0
.end method

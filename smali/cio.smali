.class public final Lcio;
.super Lcim;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Notification;

.field private final b:Lcij;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Notification;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcim;-><init>()V

    .line 39
    iput-object p1, p0, Lcio;->a:Landroid/app/Notification;

    .line 40
    new-instance v0, Lcij;

    iget-object v1, p0, Lcio;->a:Landroid/app/Notification;

    invoke-static {v1}, Lgf;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcij;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcio;->b:Lcij;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 96
    iget v0, p0, Lcio;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcio;->c:I

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    iget v0, p0, Lcio;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcio;->c:I

    return-void
.end method

.method public a(Landroid/graphics/drawable/Icon;)V
    .locals 2

    .prologue
    .line 128
    :try_start_0
    const-class v0, Landroid/app/Notification;

    const-string v1, "mSmallIcon"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    iget-object v1, p0, Lcio;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v0, "Nevo.Holder"

    const-string v1, "Incompatible ROM: No field Notification.mSmallIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 50
    iget v0, p0, Lcio;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcio;->c:I

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    invoke-static {v0, p1}, Lcip;->a(Landroid/app/Notification;Ljava/lang/String;)V

    .line 109
    :goto_0
    iget v0, p0, Lcio;->c:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcio;->c:I

    .line 110
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    invoke-static {v0}, Lgf;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.groupKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([J)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 121
    iget v0, p0, Lcio;->c:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcio;->c:I

    .line 122
    return-void
.end method

.method public synthetic b()Lbwg;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcio;->q()Lcij;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 101
    iget v0, p0, Lcio;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcio;->c:I

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Icon;)V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    const-class v0, Landroid/app/Notification;

    const-string v1, "mLargeIcon"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 141
    iget-object v1, p0, Lcio;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v0, "Nevo.Holder"

    const-string v1, "Incompatible ROM: No field Notification.mLargeIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 57
    iget v0, p0, Lcio;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcio;->c:I

    .line 58
    return-void
.end method

.method public c()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    iget v0, p0, Lcio;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcio;->c:I

    return-void
.end method

.method public c(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 71
    iget v0, p0, Lcio;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcio;->c:I

    .line 73
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 88
    iget v0, p0, Lcio;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcio;->c:I

    .line 90
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 115
    iget v0, p0, Lcio;->c:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcio;->c:I

    .line 116
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->number:I

    return v0
.end method

.method public k()I
    .locals 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    invoke-static {v0}, Lgf;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->priority:I

    return v0
.end method

.method public n()[J
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    return-object v0
.end method

.method public o()Landroid/graphics/drawable/Icon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public p()Landroid/graphics/drawable/Icon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcio;->a:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcij;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcio;->b:Lcij;

    return-object v0
.end method

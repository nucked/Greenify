.class public Lbwe;
.super Lbwh;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field protected final b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbwe;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lbwh;-><init>()V

    .line 43
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bundle is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lbwe;->b:Landroid/os/Bundle;

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lbwe;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 63
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-object v0, Lbwe;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/oasisfeng/android/os/ParcelableReference;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p2}, Lcom/oasisfeng/android/os/ParcelableReference;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbwe;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 120
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;[D)V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;[J)V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;[Z)V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;D)D
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 129
    .line 130
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)[Z
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 134
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 135
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p0, p1, p2}, Lbwe;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)[I
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)[J
    .locals 2

    .prologue
    .line 146
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;)[D
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Ljava/lang/String;)Lcom/oasisfeng/android/os/ParcelableReference;
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/oasisfeng/android/os/ParcelableReference;

    invoke-virtual {p0, p1}, Lbwe;->g(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oasisfeng/android/os/ParcelableReference;-><init>(Landroid/os/Parcelable;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected g(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o(Ljava/lang/String;)Lbwg;
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v2, :cond_0

    new-instance v0, Lbwe;

    invoke-direct {v0, v2}, Lbwe;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 166
    :cond_0
    new-instance v0, Lbwf;

    iget-object v1, p0, Lbwe;->b:Landroid/os/Bundle;

    invoke-direct {v0, v1, p1}, Lbwf;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

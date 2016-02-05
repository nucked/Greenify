.class public Lcom/oasisfeng/android/content/pm/ParceledListSlice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/oasisfeng/android/content/pm/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "ParceledListSlice"

    sput-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    .line 198
    new-instance v0, Lbwb;

    invoke-direct {v0}, Lbwb;-><init>()V

    sput-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    .line 62
    sget-boolean v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    if-gtz v2, :cond_2

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-static {p1, p2}, Lbwj;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v3

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_1
    if-ge v1, v2, :cond_3

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_6

    .line 88
    :cond_3
    if-ge v1, v2, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 92
    :goto_2
    if-ge v1, v2, :cond_1

    .line 93
    sget-boolean v5, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading more @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": retriever="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 96
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v7, v5, v6, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_3
    if-ge v1, v2, :cond_9

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    .line 104
    invoke-static {v6, v3, p2}, Lbwj;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    .line 105
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 107
    iget-object v8, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-boolean v7, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read extra #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    iget-object v10, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 111
    goto :goto_3

    .line 76
    :cond_6
    invoke-static {p1, v3, p2}, Lbwj;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    .line 77
    if-nez v0, :cond_8

    .line 78
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 83
    :goto_4
    iget-object v5, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-boolean v4, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read inline #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    iget-object v7, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto/16 :goto_1

    .line 80
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_4

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-object v3, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving array; only received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 112
    :cond_9
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_2
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lbwa;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/android/content/pm/ParceledListSlice;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    return v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in list of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    move v1, v0

    move v2, v0

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    or-int/2addr v2, v0

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_0
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 147
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    sget-boolean v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " items"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    if-lez v3, :cond_4

    .line 150
    iget-object v0, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 151
    iget-object v0, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-static {p1, v0}, Lbwj;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    move v1, v2

    .line 153
    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    const/high16 v5, 0x20000

    if-ge v0, v5, :cond_2

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 158
    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    sget-boolean v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote inline #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->c:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 162
    goto :goto_0

    .line 163
    :cond_2
    if-ge v1, v3, :cond_4

    .line 164
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    new-instance v0, Lbwa;

    invoke-direct {v0, p0, v3, v4, p2}, Lbwa;-><init>(Lcom/oasisfeng/android/content/pm/ParceledListSlice;ILjava/lang/Class;I)V

    .line 191
    sget-boolean v2, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Breaking @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": retriever="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 195
    :cond_4
    return-void
.end method

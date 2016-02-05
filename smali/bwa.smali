.class public Lbwa;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:I

.field final synthetic d:Lcom/oasisfeng/android/content/pm/ParceledListSlice;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/android/content/pm/ParceledListSlice;ILjava/lang/Class;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lbwa;->d:Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    iput p2, p0, Lbwa;->a:I

    iput-object p3, p0, Lbwa;->b:Ljava/lang/Class;

    iput p4, p0, Lbwa;->c:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 169
    if-eq p1, v2, :cond_0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    invoke-static {}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing more @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbwa;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v0

    .line 174
    :goto_1
    iget v0, p0, Lbwa;->a:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    const/high16 v3, 0x40000

    if-ge v0, v3, :cond_3

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lbwa;->d:Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    invoke-static {v0}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a(Lcom/oasisfeng/android/content/pm/ParceledListSlice;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 178
    iget-object v3, p0, Lbwa;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 179
    iget v3, p0, Lbwa;->c:I

    invoke-interface {v0, p3, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    invoke-static {}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrote extra #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbwa;->d:Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    invoke-static {v4}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a(Lcom/oasisfeng/android/content/pm/ParceledListSlice;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 183
    goto :goto_1

    .line 184
    :cond_3
    iget v0, p0, Lbwa;->a:I

    if-ge v1, v0, :cond_5

    .line 185
    invoke-static {}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Breaking @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lbwa;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    move v0, v2

    .line 188
    goto/16 :goto_0
.end method

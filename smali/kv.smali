.class Lkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkw",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkw",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lkv;->a:Lkw;

    .line 47
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lkv;->a:Lkw;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lkw;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lkv;->a:Lkw;

    invoke-interface {v0, p1}, Lkw;->b(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

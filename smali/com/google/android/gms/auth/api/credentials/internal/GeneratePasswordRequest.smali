.class public final Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field private final b:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lamq;

    invoke-direct {v0}, Lamq;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/auth/api/credentials/PasswordSpecification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;->b:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;->b:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lamq;->a(Lcom/google/android/gms/auth/api/credentials/internal/GeneratePasswordRequest;Landroid/os/Parcel;I)V

    return-void
.end method

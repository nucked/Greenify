.class public final Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lamz;

    invoke-direct {v0}, Lamz;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->b:Z

    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->c:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->d:Z

    return-void
.end method

.method private constructor <init>(Lamj;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Lamj;->a(Lamj;)Z

    move-result v1

    invoke-static {p1}, Lamj;->b(Lamj;)Z

    move-result v2

    invoke-static {p1}, Lamj;->c(Lamj;)Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;-><init>(IZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lamj;Lami;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;-><init>(Lamj;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->d:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lamz;->a(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Landroid/os/Parcel;I)V

    return-void
.end method

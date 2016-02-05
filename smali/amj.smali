.class public Lamj;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lamj;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lamj;->b:Z

    iput-boolean v1, p0, Lamj;->c:Z

    return-void
.end method

.method public static synthetic a(Lamj;)Z
    .locals 1

    iget-boolean v0, p0, Lamj;->a:Z

    return v0
.end method

.method public static synthetic b(Lamj;)Z
    .locals 1

    iget-boolean v0, p0, Lamj;->b:Z

    return v0
.end method

.method public static synthetic c(Lamj;)Z
    .locals 1

    iget-boolean v0, p0, Lamj;->c:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;-><init>(Lamj;Lami;)V

    return-object v0
.end method

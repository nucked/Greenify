.class public final Lame;
.super Ljava/lang/Object;

# interfaces
.implements Lapr;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumer_package"

    iget-object v2, p0, Lame;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password_specification"

    iget-object v2, p0, Lame;->b:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

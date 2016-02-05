.class public Lcbn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcbo;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcbp;->a()Lcbp;

    move-result-object v0

    invoke-virtual {p0}, Lcbo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcbo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcbp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/oasisfeng/greenify/pro/SettingsPatch;
.super Lcju;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcgj;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oasisfeng/greenify/pro/SettingsPatch;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 14
    sget-object v0, Lcom/oasisfeng/greenify/pro/SettingsPatch;->a:[Ljava/lang/Class;

    const-string v1, "com.android.settings"

    const-string v2, "com.oasisfeng.greenify"

    const-string v3, "features"

    invoke-direct {p0, v0, v1, v2, v3}, Lcju;-><init>([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

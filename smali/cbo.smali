.class public final enum Lcbo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcbo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcbo;

.field public static final enum b:Lcbo;

.field public static final enum c:Lcbo;

.field public static final enum d:Lcbo;

.field public static final enum e:Lcbo;

.field public static final enum f:Lcbo;

.field private static final synthetic i:[Lcbo;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcbo;

    const-string v1, "ReceiptValidationUrl"

    const-string v2, "receipt_validation_url"

    const-string v3, "https://oasisfeng.com/greenify.php?user=%1$s&purchase_token=%2$s&device_id=%3$s"

    invoke-direct {v0, v1, v5, v2, v3}, Lcbo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcbo;->a:Lcbo;

    .line 9
    new-instance v0, Lcbo;

    const-string v1, "NotificationOnce"

    const-string v2, "notification_once"

    const-string v3, ""

    invoke-direct {v0, v1, v6, v2, v3}, Lcbo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcbo;->b:Lcbo;

    .line 10
    new-instance v0, Lcbo;

    const-string v1, "Notification"

    const-string v2, "notification"

    const-string v3, ""

    invoke-direct {v0, v1, v7, v2, v3}, Lcbo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcbo;->c:Lcbo;

    .line 11
    new-instance v0, Lcbo;

    const-string v1, "UrlProPkgTroubleShoot"

    const-string v2, "url.faq.donation_troubleshoot"

    const-string v3, "http://greenify.uservoice.com/knowledgebase/articles/633133"

    invoke-direct {v0, v1, v8, v2, v3}, Lcbo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcbo;->d:Lcbo;

    .line 12
    new-instance v0, Lcbo;

    const-string v1, "UrlNonRootDevPermission"

    const-string v2, "url.guide.grant_dev_permission"

    const-string v3, "http://greenify.uservoice.com/knowledgebase/articles/749142"

    invoke-direct {v0, v1, v9, v2, v3}, Lcbo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcbo;->e:Lcbo;

    .line 13
    new-instance v0, Lcbo;

    const-string v1, "UrlServiceTroubleShoot"

    const/4 v2, 0x5

    const-string v3, "url.faq.service_troubleshoot"

    const-string v4, "http://greenify.uservoice.com/knowledgebase/articles/745179"

    invoke-direct {v0, v1, v2, v3, v4}, Lcbo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcbo;->f:Lcbo;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcbo;

    sget-object v1, Lcbo;->a:Lcbo;

    aput-object v1, v0, v5

    sget-object v1, Lcbo;->b:Lcbo;

    aput-object v1, v0, v6

    sget-object v1, Lcbo;->c:Lcbo;

    aput-object v1, v0, v7

    sget-object v1, Lcbo;->d:Lcbo;

    aput-object v1, v0, v8

    sget-object v1, Lcbo;->e:Lcbo;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcbo;->f:Lcbo;

    aput-object v2, v0, v1

    sput-object v0, Lcbo;->i:[Lcbo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcbo;->g:Ljava/lang/String;

    iput-object p4, p0, Lcbo;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcbo;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcbo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcbo;

    return-object v0
.end method

.method public static values()[Lcbo;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcbo;->i:[Lcbo;

    invoke-virtual {v0}, [Lcbo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcbo;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcbo;->g:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcbo;->h:Ljava/lang/String;

    return-object v0
.end method

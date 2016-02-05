.class Lcgs;
.super Lcjs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcgr;


# direct methods
.method constructor <init>(Lcgr;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcgs;->a:Lcgr;

    invoke-direct {p0}, Lcjs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .prologue
    .line 17
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Intent;

    .line 18
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    const-string v2, "android.provider.Telephony."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.PHONE_STATE"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    :cond_3
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

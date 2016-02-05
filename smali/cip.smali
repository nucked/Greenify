.class Lcip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 198
    :try_start_0
    const-class v1, Landroid/app/Notification;

    const-string v2, "mGroupKey"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_0

    .line 200
    const-string v2, "Nevo.Holder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incompatible ROM: Unexpected field type - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :goto_0
    sput-object v0, Lcip;->a:Ljava/lang/reflect/Field;

    .line 207
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    :goto_1
    const-string v1, "Nevo.Holder"

    const-string v2, "Incompatible ROM: No field Notification.mGroupKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method static a(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcip;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    sget-object v0, Lcip;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

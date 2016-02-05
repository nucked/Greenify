.class public Lcom/oasisfeng/greenify/utils/PackageManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/IntentFilter;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_8

    if-ne v1, v8, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v5, :cond_8

    .line 106
    :cond_1
    if-eq v1, v8, :cond_0

    const/4 v6, 0x4

    if-eq v1, v6, :cond_0

    .line 107
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_3
    :goto_2
    invoke-static {p0}, Laho;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 107
    :sswitch_0
    const-string v7, "action"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v7, "category"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v7, "data"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    goto :goto_1

    .line 109
    :pswitch_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v6, "name"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_2

    .line 113
    :pswitch_1
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v6, "name"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :pswitch_2
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v6, "scheme"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "mimeType"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    if-nez v1, :cond_4

    if-eqz v6, :cond_3

    .line 120
    :cond_4
    if-eqz v6, :cond_5

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_5
    :goto_3
    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 123
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v6, "host"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "port"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v0, v1, v6}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v6, "path"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_6

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 130
    :cond_6
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v6, "pathPrefix"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_7

    invoke-virtual {v0, v1, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 132
    :cond_7
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v6, "pathPattern"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 140
    :cond_8
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    .line 141
    :cond_9
    return-object v0

    .line 120
    :catch_0
    move-exception v6

    goto :goto_3

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_0
        0x2eefaa -> :sswitch_2
        0x302bcfe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 41
    and-int/lit8 v0, p2, 0x20

    if-nez v0, :cond_0

    move-object v0, v3

    .line 98
    :goto_0
    return-object v0

    .line 43
    :cond_0
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 44
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    new-instance v2, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v0

    invoke-direct {v2, v4}, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;-><init>(Landroid/content/pm/ActivityInfo;)V

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 46
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    new-instance v2, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ServiceInfoExt;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v4, v4, v0

    invoke-direct {v2, v4}, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ServiceInfoExt;-><init>(Landroid/content/pm/ServiceInfo;)V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 47
    :cond_2
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_3
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 48
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    new-instance v2, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v0

    invoke-direct {v2, v4}, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;-><init>(Landroid/content/pm/ActivityInfo;)V

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 50
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 53
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    :cond_4
    :goto_4
    :try_start_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_d

    .line 57
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 58
    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x0

    .line 62
    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 64
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 65
    const/4 v2, 0x3

    if-ne v4, v2, :cond_c

    .line 66
    const-string v2, "provider"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "meta-data"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "uses-library"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "name"

    invoke-interface {v5, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    goto :goto_4

    .line 70
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_8
    :goto_5
    packed-switch v1, :pswitch_data_0

    :cond_9
    :goto_6
    move-object v1, v2

    .line 88
    goto :goto_4

    .line 72
    :sswitch_0
    const-string v4, "activity"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :sswitch_1
    const-string v4, "activity-alias"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :sswitch_2
    const-string v4, "receiver"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x2

    goto :goto_5

    :sswitch_3
    const-string v4, "service"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x3

    goto :goto_5

    .line 75
    :pswitch_0
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_9

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v7, v6

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    :goto_7
    if-ge v4, v7, :cond_a

    aget-object v0, v6, v4

    .line 76
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 77
    check-cast v0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;

    .line 75
    :goto_8
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_7

    :cond_a
    move-object v0, v1

    goto :goto_6

    .line 80
    :pswitch_1
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_9

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v7, v6

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    :goto_9
    if-ge v4, v7, :cond_b

    aget-object v0, v6, v4

    .line 81
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 82
    check-cast v0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;

    .line 80
    :goto_a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_9

    :cond_b
    move-object v0, v1

    goto :goto_6

    .line 85
    :pswitch_2
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_9

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v7, v6

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    :goto_b
    if-ge v4, v7, :cond_f

    aget-object v0, v6, v4

    .line 86
    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 87
    check-cast v0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ServiceInfoExt;

    .line 85
    :goto_c
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_b

    .line 90
    :cond_c
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    if-ne v4, v2, :cond_4

    const-string v2, "intent-filter"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    invoke-static {v5}, Lcom/oasisfeng/greenify/utils/PackageManagerExt;->a(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/IntentFilter;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_4

    invoke-interface {v0, v2}, Lchw;->a(Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 96
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    :cond_d
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v0, v3

    .line 98
    goto/16 :goto_0

    :cond_e
    move-object v0, v1

    goto :goto_c

    :cond_f
    move-object v0, v1

    goto/16 :goto_6

    :cond_10
    move-object v0, v1

    goto :goto_a

    :cond_11
    move-object v0, v1

    goto :goto_8

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_0
        -0x30341611 -> :sswitch_2
        0x2f1ad612 -> :sswitch_1
        0x7643c6b5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/pm/ComponentInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ComponentInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    instance-of v1, p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;

    iget-object v0, p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ActivityInfoExt;->a:Ljava/util/List;

    .line 148
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    .line 147
    :cond_1
    instance-of v1, p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ServiceInfoExt;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ServiceInfoExt;

    iget-object v0, p0, Lcom/oasisfeng/greenify/utils/PackageManagerExt$ServiceInfoExt;->a:Ljava/util/List;

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

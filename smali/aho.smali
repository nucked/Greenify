.class public Laho;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 48
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 50
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 54
    :cond_1
    return-void
.end method

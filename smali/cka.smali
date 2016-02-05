.class public Lcka;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "echo -BOC-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcka;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-static {}, Lcjy;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcjy;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "Application attempted to run a shell command from the main thread"

    invoke-static {v1}, Lcjy;->a(Ljava/lang/String;)V

    .line 110
    new-instance v1, Lckp;

    const-string v2, "Application attempted to run a shell command from the main thread"

    invoke-direct {v1, v2}, Lckp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    const-string v1, "[%s%%] START"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcjy;->b(Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 118
    if-eqz p2, :cond_3

    .line 119
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    array-length v4, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v6, p2, v1

    .line 123
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 124
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_2
    const/4 v1, 0x0

    .line 128
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    new-array p2, v4, [Ljava/lang/String;

    .line 129
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    .line 131
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    .line 132
    goto :goto_1

    .line 137
    :cond_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 138
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    new-instance v6, Lckq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v1, v7, v3}, Lckq;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    .line 141
    new-instance v7, Lckq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "*"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz p3, :cond_4

    move-object v1, v3

    :goto_2
    invoke-direct {v7, v8, v9, v1}, Lckq;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    .line 145
    invoke-virtual {v6}, Lckq;->start()V

    .line 146
    invoke-virtual {v7}, Lckq;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 148
    :try_start_1
    array-length v8, p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_5

    aget-object v9, p1, v1

    .line 149
    const-string v10, "[%s+] %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcjy;->b(Ljava/lang/String;)V

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 151
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 141
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 153
    :cond_5
    const-string v1, "exit\n"

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 154
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 182
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Lckq;->join()V

    .line 183
    invoke-virtual {v7}, Lckq;->join()V

    .line 184
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 187
    invoke-static {p0}, Lckn;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_7

    .line 188
    const/4 v1, 0x0

    .line 198
    :goto_5
    const-string v2, "[%s%%] END"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcjy;->b(Ljava/lang/String;)V

    .line 199
    return-object v1

    .line 155
    :catch_0
    move-exception v1

    .line 156
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v8, "EPIPE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 164
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 190
    :catch_1
    move-exception v1

    .line 192
    const/4 v1, 0x0

    .line 196
    goto :goto_5

    .line 193
    :catch_2
    move-exception v1

    .line 195
    const/4 v1, 0x0

    goto :goto_5

    .line 179
    :catch_3
    move-exception v1

    goto :goto_4

    :cond_7
    move-object v1, v3

    goto :goto_5
.end method

.method protected static a(Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    if-nez p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 222
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    const-string v5, "uid="

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 225
    if-eqz p1, :cond_2

    const-string v1, "uid=0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 226
    :cond_3
    const-string v5, "-BOC-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_2
    move v1, v0

    .line 232
    goto :goto_1

    :cond_4
    move v2, v1

    .line 234
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

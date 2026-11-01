.class public Lcom/ss/android/socialbase/appdownloader/dq/p;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/appdownloader/dq/dq;
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    if-eqz p0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/mn/dq;->dq(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/mn/dq;

    move-result-object v5

    const-string v1, "v1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/o;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v5, p2}, Lcom/ss/android/socialbase/appdownloader/dq/o;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v1, "v2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/no;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v5, p2}, Lcom/ss/android/socialbase/appdownloader/dq/no;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-string v1, "v3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/ig;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v5, p2}, Lcom/ss/android/socialbase/appdownloader/dq/ig;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const-string v1, "o1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/mn;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v5, p2}, Lcom/ss/android/socialbase/appdownloader/dq/mn;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    return-object p1

    :cond_5
    const-string v1, "o2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/ia;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, v5, p2}, Lcom/ss/android/socialbase/appdownloader/dq/ia;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    return-object p1

    :cond_6
    const-string v1, "o3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "file_content_uri"

    invoke-virtual {p3, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDBJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/dq/kk;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/socialbase/appdownloader/dq/kk;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_7
    move-object v4, p0

    const-string p0, "custom"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/ss/android/socialbase/appdownloader/dq/ox;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/ss/android/socialbase/appdownloader/dq/ox;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p0

    :cond_8
    const-string p0, "vbi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p0

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadFileUriProvider(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/p;->o()Lcom/ss/android/socialbase/appdownloader/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/p;->p()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-static {p3, p0, v4, p1, p2}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(ILcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/mp;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v4, v5, p0}, Lcom/ss/android/socialbase/appdownloader/dq/mp;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    return-object p1

    :cond_9
    :goto_0
    return-object v0
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/mn/dq;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/ox;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "v1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/o;

    invoke-direct {p1, p0, p3, v4}, Lcom/ss/android/socialbase/appdownloader/dq/o;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "v2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/no;

    invoke-direct {p1, p0, p3, v4}, Lcom/ss/android/socialbase/appdownloader/dq/no;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "v3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/ig;

    invoke-direct {p1, p0, p3, v4}, Lcom/ss/android/socialbase/appdownloader/dq/ig;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->s()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "o1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/mn;

    invoke-direct {p1, p0, p3, v4}, Lcom/ss/android/socialbase/appdownloader/dq/mn;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->s()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "o2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/ia;

    invoke-direct {p1, p0, p3, v4}, Lcom/ss/android/socialbase/appdownloader/dq/ia;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "o3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/dq/kk;

    move-object v5, v4

    move-object v6, v4

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/dq/kk;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    :cond_7
    move-object v2, p0

    move-object v3, p3

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "custom"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/ox;

    invoke-direct {p1, v2, v3, v4, p2}, Lcom/ss/android/socialbase/appdownloader/dq/ox;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/iw/s;->p()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "vbi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/dq/mp;

    invoke-direct {p1, v2, v3, v4}, Lcom/ss/android/socialbase/appdownloader/dq/mp;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/mn/dq;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/dq/dq;->dq()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    :goto_1
    return v0
.end method

.class public Lcom/ss/android/downloadlib/addownload/compliance/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/compliance/d$dq;
    }
.end annotation


# instance fields
.field private dq:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/d$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/d;-><init>()V

    return-void
.end method

.method public static dq()Lcom/ss/android/downloadlib/addownload/compliance/d;
    .locals 1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/d$dq;->dq()Lcom/ss/android/downloadlib/addownload/compliance/d;

    move-result-object v0

    return-object v0
.end method

.method private dq(JJLjava/lang/String;)Z
    .locals 9

    const/4 v1, 0x7

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p5, "package"

    invoke-virtual {v0, p5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-wide v6, p3

    goto/16 :goto_2

    :cond_1
    new-instance v0, Lcom/ss/android/downloadlib/addownload/d/d;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/d/d;-><init>()V

    iput-wide p1, v0, Lcom/ss/android/downloadlib/addownload/d/d;->dq:J

    iput-wide p3, v0, Lcom/ss/android/downloadlib/addownload/d/d;->d:J

    const-string p1, "icon_url"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/downloadlib/addownload/d/d;->p:Ljava/lang/String;

    const-string p1, "app_name"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/downloadlib/addownload/d/d;->s:Ljava/lang/String;

    const-string p1, "package_name"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/downloadlib/addownload/d/d;->ox:Ljava/lang/String;

    const-string p1, "version_name"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/downloadlib/addownload/d/d;->iw:Ljava/lang/String;

    const-string p1, "developer_name"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/downloadlib/addownload/d/d;->mn:Ljava/lang/String;

    const-string p1, "policy_url"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/android/downloadlib/addownload/d/d;->kk:Ljava/lang/String;

    const-string p1, "permissions"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    if-ge p2, p5, :cond_2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/ss/android/downloadlib/addownload/d/d;->ia:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    const-string v5, "permission_name"

    invoke-virtual {p5, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "permission_desc"

    invoke-virtual {p5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v4, v5, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-wide v6, p3

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/ox;->dq()Lcom/ss/android/downloadlib/addownload/compliance/ox;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/compliance/ox;->dq(Lcom/ss/android/downloadlib/addownload/d/d;)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq()Lcom/ss/android/downloadlib/addownload/compliance/p;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/d;->dq()J

    move-result-wide v4

    iget-object v8, v0, Lcom/ss/android/downloadlib/addownload/d/d;->p:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v6, p3

    :try_start_3
    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq(JJLjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide v6, p3

    goto :goto_1

    :goto_2
    invoke-static {v1, v6, v7}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(IJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return v2

    :goto_3
    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p2

    const-string p3, "AdLpComplianceManager parseResponse"

    invoke-virtual {p2, p1, p3}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v1, v6, v7}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(IJ)V

    return v2
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/compliance/d;JJLjava/lang/String;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq(JJLjava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public d()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public d(J)V
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/iw;->dq()Lcom/ss/android/downloadlib/addownload/d/iw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/d/iw;->s(J)Lcom/ss/android/downloadlib/addownload/d/s;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/ia;->dq()Lcom/ss/android/downloadlib/ia;

    move-result-object v1

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/ia;->dq(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/s;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1}, Lcom/ss/android/downloadlib/addownload/s;->dq(ZZ)V

    return-void

    :cond_0
    const/16 v0, 0xb

    invoke-static {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(IJ)V

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object p1

    const-string p2, "startDownload handler null"

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/s/ox;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dq(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->dq(J)V

    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public dq(Lcom/ss/android/download/api/download/DownloadModel;)Z
    .locals 4

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ad_lp_show_app_dialog"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDeepLink()Lcom/ss/android/download/api/model/DeepLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/download/api/model/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->kk()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ad_allow_web_url_regex"

    const-string v3, ".+(www.chengzijianzhan.com|www.toutiaopage.com/tetris/page|ad.toutiao.com/tetris/page).+"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public dq(Lcom/ss/android/downloadlib/addownload/d/s;)Z
    .locals 14

    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "convert_id"

    invoke-static {v0, v3}, Lcom/ss/android/downloadlib/mn/mp;->dq(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(ILcom/ss/android/downloadlib/addownload/d/s;)V

    :cond_0
    move-wide v6, v3

    goto :goto_1

    :cond_1
    const/16 v0, 0x9

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(ILcom/ss/android/downloadlib/addownload/d/s;)V

    invoke-static {}, Lcom/ss/android/downloadlib/s/ox;->dq()Lcom/ss/android/downloadlib/s/ox;

    move-result-object v0

    const-string v3, "requestAppInfo getLogExtra null"

    invoke-virtual {v0, v3}, Lcom/ss/android/downloadlib/s/ox;->dq(Ljava/lang/String;)V

    move-wide v6, v1

    :goto_1
    iget-wide v8, p1, Lcom/ss/android/downloadlib/addownload/d/s;->dq:J

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/ox;->dq()Lcom/ss/android/downloadlib/addownload/compliance/ox;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/ss/android/downloadlib/addownload/compliance/ox;->dq(JJ)Lcom/ss/android/downloadlib/addownload/d/d;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    move-wide v11, v8

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq()Lcom/ss/android/downloadlib/addownload/compliance/p;

    move-result-object v8

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/d;->dq()J

    move-result-wide v9

    iget-object v13, v0, Lcom/ss/android/downloadlib/addownload/d/d;->p:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq(JJLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d/d;->dq()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/d;->dq(J)V

    const-string v0, "lp_app_dialog_try_show"

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/d/s;)V

    return v3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v4, v6, v1

    if-lez v4, :cond_3

    const-string v1, "convert_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/android/downloadlib/addownload/d/s;->d:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_6

    const/4 v0, 0x6

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->dq(ILcom/ss/android/downloadlib/addownload/d/s;)V

    const/4 p1, 0x0

    return p1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "https://apps.oceanengine.com/customer/api/app/pkg_info?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/ss/android/downloadlib/addownload/compliance/d$2;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/ss/android/downloadlib/addownload/compliance/d$2;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/d;JJ)V

    invoke-static {v4, p1}, Lcom/ss/android/downloadlib/mn/ox;->dq(Lcom/ss/android/downloadlib/mn/ox$dq;Ljava/lang/Object;)Lcom/ss/android/downloadlib/mn/ox;

    move-result-object p1

    new-instance v4, Lcom/ss/android/downloadlib/addownload/compliance/d$1;

    invoke-direct/range {v4 .. v9}, Lcom/ss/android/downloadlib/addownload/compliance/d$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/d;JJ)V

    invoke-virtual {p1, v4}, Lcom/ss/android/downloadlib/mn/ox;->dq(Lcom/ss/android/downloadlib/mn/ox$dq;)Lcom/ss/android/downloadlib/mn/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/mn/ox;->dq()V

    return v3
.end method

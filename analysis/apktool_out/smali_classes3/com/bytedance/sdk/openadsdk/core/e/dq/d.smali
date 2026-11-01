.class public Lcom/bytedance/sdk/openadsdk/core/e/dq/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d;,
        Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final dq:Ljava/lang/String;

.field private static ia:J

.field private static kk:J

.field private static final mn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ox:Ljava/lang/String;

.field private static final s:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;


# instance fields
.field private iw:Lcom/bykv/vk/openvk/api/proto/EventListener;

.field private p:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "next"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq:Ljava/lang/String;

    const-string v0, "tmp"

    invoke-static {v1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d:Ljava/lang/String;

    const-string v0, "conf"

    invoke-static {v1, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ox:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->mn:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e/d/d;->dq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arm64-v8a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "@64"

    goto :goto_0

    :cond_0
    const-string v1, "armeabi-v7a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "@32"

    goto :goto_0

    :cond_1
    const-string v1, "armeabi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "@armeabi"

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    const-string v1, "com.byted.live.lite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ox(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->p:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    :try_start_1
    const-string v3, "update.lock"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static d(I)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/pangle_p/com.byted.pangle/version-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static d(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->wp()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->wp()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->ia:I

    if-lt v0, v2, :cond_2

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->kk:I

    if-gt v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;I)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x12

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static dq(Landroid/content/Context;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d;
        }
    .end annotation

    move-object/from16 v0, p2

    if-eqz v0, :cond_16

    :try_start_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    return v0

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->wp()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x11

    return v0

    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ox(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x12

    return v0

    :cond_3
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->d:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(I)Z

    move-result v1

    const/16 v2, 0x15

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v0, 0x13

    return v0

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->iw(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ".conf"

    const/4 v5, 0x1

    const-string v6, "-"

    if-eqz v3, :cond_7

    :try_start_1
    sget v3, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    iget v7, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->d:I

    if-lt v3, v7, :cond_7

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->kk:I

    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->ia:I

    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->mn:Z

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    const/16 v0, 0xa

    return v0

    :cond_7
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->s:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq()Z

    move-result v3

    if-nez v3, :cond_8

    return v5

    :cond_8
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->s:Ljava/lang/String;

    invoke-static {v8}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->ia:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->kk:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_a
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, ".dex.zip"

    goto :goto_0

    :cond_b
    const-string v8, ".apk"

    :goto_0
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v9}, Lcom/bytedance/sdk/component/utils/s;->dq(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->iw:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->no:Ljava/lang/String;

    const/16 v0, 0x10

    return v0

    :cond_c
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->mn:Ljava/util/HashMap;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    return v2

    :cond_d
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_e

    const/16 v2, 0x19cf

    const/16 v12, 0x19cf

    goto :goto_1

    :cond_e
    const/4 v12, 0x0

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v10

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    iget v13, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->d:I

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->p:Ljava/lang/String;

    const-string v16, ""

    const-wide/16 v17, 0x0

    const/4 v15, 0x7

    invoke-virtual/range {v10 .. v18}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;J)V

    new-instance v2, Ljava/io/File;

    move-object/from16 v10, p1

    invoke-direct {v2, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/component/kk/dq;->p()Lcom/bytedance/sdk/component/kk/d/d;

    move-result-object v11

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->p:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10, v6}, Lcom/bytedance/sdk/component/kk/d/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sput-wide v12, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ia:J

    invoke-virtual {v11}, Lcom/bytedance/sdk/component/kk/d/d;->dq()Lcom/bytedance/sdk/component/kk/d;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->kk:J

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_f

    const/16 v0, 0xd

    return v0

    :cond_f
    invoke-static {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/bytedance/sdk/component/utils/s;->dq(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->iw:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->no:Ljava/lang/String;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->d:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->p(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)I

    move-result v2

    if-ge v1, v2, :cond_10

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->mn:Z

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x6

    return v0

    :cond_11
    const/16 v0, 0xf

    return v0

    :cond_12
    const/4 v0, 0x5

    return v0

    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d;

    if-eqz v6, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_14
    const-string v1, "no response"

    :goto_3
    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download file error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginUpdater"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d;

    if-eqz v1, :cond_15

    throw v0

    :cond_15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d;

    const/16 v2, 0xe

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_16
    :goto_4
    const/4 v0, 0x2

    return v0
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/e/dq/d;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    return-object v0
.end method

.method public static dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.byted.live.lite@64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.byted.live.lite@32"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.byted.live.lite@armeabi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "com.byted.live.lite"

    return-object p0
.end method

.method private dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)V
    .locals 12

    :try_start_0
    iget v0, p2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->o:I

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->fw()Lcom/bytedance/sdk/openadsdk/core/e/dq;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    move-object v9, p1

    const/16 v8, 0x14

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Landroid/content/Context;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;I)V
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    :goto_0
    move-object v9, p1

    move v8, v0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$d;->dq()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    const/16 v2, 0x3ec

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Ljava/lang/String;I)V

    goto :goto_0

    :goto_2
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x19cf

    const/16 v5, 0x19cf

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v3

    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->d:I

    iget-object v7, p2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->p:Ljava/lang/String;

    sget-wide p1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->kk:J

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ia:J

    sub-long v10, p1, v0

    invoke-virtual/range {v3 .. v11}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method private dq(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;",
            ">;)V"
        }
    .end annotation

    const-string v1, "__tt_pl_up_lock__"

    monitor-enter v1

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Landroid/content/Context;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_0
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;

    const-string v4, "pl download"

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/dq/d;Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v2

    const-string v3, ""

    const-string v6, ""

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/16 v4, 0x19cf

    const/4 v5, 0x0

    const/16 v7, 0xe

    invoke-virtual/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;J)V

    const-string v0, "PluginUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle file error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :goto_3
    :try_start_5
    monitor-exit v1

    return-void

    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Landroid/content/Context;)V

    throw p2

    :goto_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;I)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->iw:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    iget-object v2, v1, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v1

    iput-boolean p2, v1, Lg/cpq;->e:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x3ec

    :goto_2
    iput v3, v1, Lg/cpq;->d:I

    iput-object v0, v1, Lg/cpq;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lg/cpq;->h()Lg/gok;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->iw:Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-interface {v0, v2, p2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->no:Ljava/lang/String;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->mn:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->no:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->ox:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Download pl done, but install error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginUpdater"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static dq(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$3;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    return-void
.end method

.method private static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private dq(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "PluginUpdater"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "update.lock"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "create lock file failed"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->p:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const-string p1, "Acquire file lock failed"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->p:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->p:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Try get file lock failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private dq(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->fw()Lcom/bytedance/sdk/openadsdk/core/e/dq;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->dq(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/no;->ce()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    if-ne p1, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    move p2, p1

    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(I)Z

    move-result p1

    return p1
.end method

.method private static dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z
    .locals 1

    const-string v0, "com.byted.pangle"

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static dq(Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "PluginUpdater"

    const-string p1, "Write config failed;"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static iw(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ox(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ox:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ox(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "tt_pangle_bykv_file"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static ox(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;)V

    const-string v4, "package_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    const-string v4, "version_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->d:I

    const-string v4, "version_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->ox:Ljava/lang/String;

    const-string v4, "download_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->p:Ljava/lang/String;

    const-string v4, "sign"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->s:Ljava/lang/String;

    const-string v4, "min_version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->ia:I

    const-string v4, "max_version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->kk:I

    const-string v4, "plugin_update_network"

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->o:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static ox(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z
    .locals 4

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x19cf

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->d:I

    if-ne v0, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->wp()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "plugin_version"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->d:I

    if-ne v0, p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private static p(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)I
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x19cf

    return p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->wp()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->wp()Lorg/json/JSONObject;

    move-result-object v0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "plugin_version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private static p(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ox(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static s(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->ox(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->iw:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-void
.end method

.method public dq(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->iw:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, v0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/cpq;->e:Z

    iput p2, v0, Lg/cpq;->d:I

    iput-object p1, v0, Lg/cpq;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/cpq;->h()Lg/gok;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->iw:Lcom/bykv/vk/openvk/api/proto/EventListener;

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method

.method public dq(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;

    const-string v2, "updatePlugin"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/dq/d;Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v1}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/r/bl;
.super Ljava/lang/Object;


# static fields
.field private static d:I

.field private static dq:I

.field private static ia:I

.field private static iw:I

.field private static kk:I

.field private static mn:I

.field private static o:I

.field private static final ox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private static s:I


# instance fields
.field private final ig:I

.field private final jy:I

.field private final mp:I

.field private final no:I

.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "carousel_pos"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->jy:I

    const-string v0, "insert_ad_control"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->no:I

    const-string v0, "refresh_ad_control"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ig:I

    const-string v0, "refresh_ad_imp_max_time"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->q:I

    const-string v0, "force_refresh_ad_control"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->mp:I

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/bl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ig:I

    return p0
.end method

.method public static d()Z
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d(ILcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit16 p0, p0, 0x3e8

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget p1, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw:I

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/bl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->no:I

    return p0
.end method

.method public static dq(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "app_common_config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_b

    :try_start_0
    const-string v0, "insert_ad_control"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq:I

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    sput v1, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq:I

    :cond_1
    const-string v0, "insert_ad_req_num"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->d:I

    const-string v0, "insert_ad_toast_max_time"

    const/4 v3, 0x5

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->s:I

    const-string v0, "refresh_ad_control"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw:I

    if-ltz v0, :cond_2

    if-le v0, v1, :cond_3

    :cond_2
    sput v1, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw:I

    :cond_3
    const-string v0, "refresh_ad_req_num"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->mn:I

    const-string v0, "force_refresh_ad_control"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ia:I

    if-ltz v0, :cond_4

    if-le v0, v1, :cond_5

    :cond_4
    sput v1, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ia:I

    :cond_5
    const-string v0, "force_refresh_ad_pause_over_time"

    const/16 v3, 0x1388

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->kk:I

    const-string v0, "refresh_ad_reduce_time"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->o:I

    const-string v0, "insert_ad_pt_show_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_7

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v4, :cond_6

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    filled-new-array {v7, v6}, [I

    move-result-object v6

    sget-object v7, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox:Ljava/util/ArrayList;

    const/16 v5, 0xf

    filled-new-array {v3, v5}, [I

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v0, "insert_ad_vd_show_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_b

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v5, v4, :cond_9

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    filled-new-array {v5, v2}, [I

    move-result-object v2

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p:Ljava/util/ArrayList;

    filled-new-array {v3, v2}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1e

    const/16 v1, 0x28

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    return-void
.end method

.method public static dq()Z
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit16 p0, p0, 0x3e8

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget p1, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq:I

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static dq(ZI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v3, v2, v0

    if-lt p1, v3, :cond_0

    aget v2, v2, v1

    if-gt p1, v2, :cond_0

    return v1

    :cond_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v3, v2, v0

    if-lt p1, v3, :cond_2

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    return v1

    :cond_3
    return v0
.end method

.method public static ia()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->o:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static iw()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->s:I

    return v0
.end method

.method private static iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/bl;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->c()Lcom/bytedance/sdk/openadsdk/core/r/bl;

    move-result-object p0

    return-object p0
.end method

.method public static mn()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->kk:I

    return v0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/bl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->mp:I

    return p0
.end method

.method public static ox()Z
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ia:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget p1, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ia:I

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static p()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->d:I

    return v0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/bl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->jy:I

    return p0
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static s()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->mn:I

    return v0
.end method

.method public static s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/bl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->q:I

    return p0
.end method


# virtual methods
.method public d(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "carousel_pos"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->jy:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "insert_ad_control"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->no:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "refresh_ad_control"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ig:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "refresh_ad_imp_max_time"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->q:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "force_refresh_ad_control"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/bl;->mp:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

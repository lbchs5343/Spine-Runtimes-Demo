.class public Lcom/bytedance/sdk/openadsdk/core/r/kk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;
    }
.end annotation


# instance fields
.field private final cd:Ljava/lang/String;

.field private final d:[I

.field private final dq:[I

.field private e:Ljava/lang/String;

.field private final f:F

.field private final fw:I

.field private final gh:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final ia:F

.field private final ig:I

.field private final iw:F

.field private final jy:I

.field private k:I

.field private final kk:J

.field private kx:I

.field private le:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/d/p$dq;",
            ">;"
        }
    .end annotation
.end field

.field private final mn:F

.field private final mp:I

.field private final no:I

.field private final o:J

.field private final ox:[I

.field private final p:[I

.field private final q:F

.field private final r:Ljava/lang/String;

.field private final s:F

.field private wp:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->wp:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->kx:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->dq:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->d:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->p:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->ox:[I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->s:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->iw:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->mn(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->mn:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ia(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->ia:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->kk(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->kk:J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->o(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->o:J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->no(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->no:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ig(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->ig:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->mp(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->mp:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->q:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->q(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->cd:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->jy(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->gh:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->f(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->fw(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->r:Ljava/lang/String;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->jy:I

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->f:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->cd(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->fw:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->gh(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->le:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->r(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->k:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->i(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->wp:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->le(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->k(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->kx:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;Lcom/bytedance/sdk/openadsdk/core/r/kk$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/kk;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;)V

    return-void
.end method


# virtual methods
.method public dq()Lorg/json/JSONObject;
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->dq:[I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    array-length v5, v1

    if-ne v5, v2, :cond_0

    const-string v5, "ad_x"

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "ad_y"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->dq:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->d:[I

    if-eqz v1, :cond_1

    array-length v5, v1

    if-ne v5, v2, :cond_1

    const-string v5, "width"

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "height"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->d:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->ox:[I

    if-eqz v1, :cond_2

    array-length v5, v1

    if-ne v5, v2, :cond_2

    const-string v5, "button_x"

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "button_y"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->ox:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->p:[I

    if-eqz v1, :cond_3

    array-length v5, v1

    if-ne v5, v2, :cond_3

    const-string v2, "button_width"

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "button_height"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->p:[I

    aget v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->le:Landroid/util/SparseArray;

    if-eqz v3, :cond_5

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->le:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_5

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->le:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;

    if-eqz v3, :cond_4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "force"

    iget-wide v7, v3, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;->ox:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "mr"

    iget-wide v8, v3, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;->d:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "phase"

    iget v8, v3, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;->dq:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ts"

    iget-wide v8, v3, Lcom/bytedance/sdk/openadsdk/core/d/p$dq;->p:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "ftc"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->fw:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "info"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "down_x"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->s:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "down_y"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->iw:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "up_x"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->mn:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "up_y"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->ia:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "down_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->kk:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "up_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "toolType"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->no:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "deviceId"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->ig:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "source"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->mp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "density"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->q:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "densityDpi"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->jy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "scaleDensity"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->f:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ft"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "click_area_type"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->cd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "areaType"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->gh:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rectInfo"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "click_area_id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const-string v3, "if_shake"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->wp:I

    if-eq v1, v2, :cond_7

    const-string v3, "if_twist"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->kx:I

    if-eq v1, v2, :cond_8

    const-string v2, "dpa_position"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "dpa_pid"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/r/kk;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    return-object v0
.end method

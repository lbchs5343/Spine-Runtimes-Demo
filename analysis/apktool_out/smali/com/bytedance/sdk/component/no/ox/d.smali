.class public final enum Lcom/bytedance/sdk/component/no/ox/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/no/ox/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum dq:Lcom/bytedance/sdk/component/no/ox/d;

.field private static final synthetic ox:[Lcom/bytedance/sdk/component/no/ox/d;


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/no/ox/ox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/no/ox/d;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/no/ox/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bytedance/sdk/component/no/ox/d;

    aput-object v0, v1, v2

    sput-object v1, Lcom/bytedance/sdk/component/no/ox/d;->ox:[Lcom/bytedance/sdk/component/no/ox/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/no/ox/d;->d:Ljava/util/Map;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/no/ox/d;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/no/ox/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/no/ox/d;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/no/ox/d;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/no/ox/d;->ox:[Lcom/bytedance/sdk/component/no/ox/d;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/no/ox/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/no/ox/d;

    return-object v0
.end method


# virtual methods
.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/no/ox/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/ox/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/no/ox/ox;

    return-object p1
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/bytedance/sdk/component/no/ox/ox;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/component/no/ox/ox;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/no/ox/d;->d:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/no/ox/ox;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

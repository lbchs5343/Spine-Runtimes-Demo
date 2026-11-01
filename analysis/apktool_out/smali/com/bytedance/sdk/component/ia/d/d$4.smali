.class Lcom/bytedance/sdk/component/ia/d/d$4;
.super Lcom/bytedance/sdk/component/ia/d/s/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ia/d/d;->dq(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic iw:Lcom/bytedance/sdk/component/ia/d/d;

.field final synthetic ox:Z

.field final synthetic p:Lcom/bytedance/sdk/component/ia/dq/p;

.field final synthetic s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/ia/dq/p;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->iw:Lcom/bytedance/sdk/component/ia/d/d;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->dq:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->d:Ljava/util/List;

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->ox:Z

    iput-object p6, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->p:Lcom/bytedance/sdk/component/ia/dq/p;

    iput-object p7, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->s:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ia/d/s/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->iw:Lcom/bytedance/sdk/component/ia/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->d:Ljava/util/List;

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->ox:Z

    iget-object v4, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->p:Lcom/bytedance/sdk/component/ia/dq/p;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/component/ia/d/d$4;->s:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V

    return-void
.end method

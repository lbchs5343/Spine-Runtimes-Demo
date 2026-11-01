.class Lcom/bytedance/sdk/component/ia/d/iw/p;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private iw:I

.field private ox:Z

.field private p:I

.field private s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->ox:Z

    iput p4, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->p:I

    iput-object p5, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->s:Lorg/json/JSONObject;

    iput p6, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->iw:I

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->s:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->s:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->s:Lorg/json/JSONObject;

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->p:I

    return-void
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->ox:Z

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/p;->p:I

    return v0
.end method

.class Lcom/bytedance/msdk/s/ox/d$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JIIILjava/lang/String;IILcom/bytedance/msdk/core/no/d;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/dq/d;

.field final synthetic dq:Lcom/bytedance/msdk/s/p;

.field final synthetic ia:Ljava/lang/String;

.field final synthetic ig:Lorg/json/JSONObject;

.field final synthetic iw:I

.field final synthetic kk:I

.field final synthetic mn:I

.field final synthetic mp:Lcom/bytedance/msdk/s/ox/d;

.field final synthetic no:Lcom/bytedance/msdk/core/no/d;

.field final synthetic o:I

.field final synthetic ox:Lcom/bytedance/msdk/d/s;

.field final synthetic p:J

.field final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JIIILjava/lang/String;IILcom/bytedance/msdk/core/no/d;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/ox/d$11;->mp:Lcom/bytedance/msdk/s/ox/d;

    iput-object p2, p0, Lcom/bytedance/msdk/s/ox/d$11;->dq:Lcom/bytedance/msdk/s/p;

    iput-object p3, p0, Lcom/bytedance/msdk/s/ox/d$11;->d:Lcom/bytedance/msdk/api/dq/d;

    iput-object p4, p0, Lcom/bytedance/msdk/s/ox/d$11;->ox:Lcom/bytedance/msdk/d/s;

    iput-wide p5, p0, Lcom/bytedance/msdk/s/ox/d$11;->p:J

    iput p7, p0, Lcom/bytedance/msdk/s/ox/d$11;->s:I

    iput p8, p0, Lcom/bytedance/msdk/s/ox/d$11;->iw:I

    iput p9, p0, Lcom/bytedance/msdk/s/ox/d$11;->mn:I

    iput-object p10, p0, Lcom/bytedance/msdk/s/ox/d$11;->ia:Ljava/lang/String;

    iput p11, p0, Lcom/bytedance/msdk/s/ox/d$11;->kk:I

    iput p12, p0, Lcom/bytedance/msdk/s/ox/d$11;->o:I

    iput-object p13, p0, Lcom/bytedance/msdk/s/ox/d$11;->no:Lcom/bytedance/msdk/core/no/d;

    iput-object p14, p0, Lcom/bytedance/msdk/s/ox/d$11;->ig:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/bytedance/msdk/s/ox/d$11;->mp:Lcom/bytedance/msdk/s/ox/d;

    iget-object v1, p0, Lcom/bytedance/msdk/s/ox/d$11;->dq:Lcom/bytedance/msdk/s/p;

    iget-object v2, p0, Lcom/bytedance/msdk/s/ox/d$11;->d:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/s/ox/d$11;->ox:Lcom/bytedance/msdk/d/s;

    iget-wide v4, p0, Lcom/bytedance/msdk/s/ox/d$11;->p:J

    iget v6, p0, Lcom/bytedance/msdk/s/ox/d$11;->s:I

    iget v7, p0, Lcom/bytedance/msdk/s/ox/d$11;->iw:I

    iget v8, p0, Lcom/bytedance/msdk/s/ox/d$11;->mn:I

    iget-object v9, p0, Lcom/bytedance/msdk/s/ox/d$11;->ia:Ljava/lang/String;

    iget v10, p0, Lcom/bytedance/msdk/s/ox/d$11;->kk:I

    iget v11, p0, Lcom/bytedance/msdk/s/ox/d$11;->o:I

    iget-object v12, p0, Lcom/bytedance/msdk/s/ox/d$11;->no:Lcom/bytedance/msdk/core/no/d;

    iget-object v13, p0, Lcom/bytedance/msdk/s/ox/d$11;->ig:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v13}, Lcom/bytedance/msdk/s/ox/d;->dq(Lcom/bytedance/msdk/s/ox/d;Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JIIILjava/lang/String;IILcom/bytedance/msdk/core/no/d;Lorg/json/JSONObject;)V

    return-void
.end method

.class Lcom/bytedance/embedapplog/nh;
.super Lcom/bytedance/embedapplog/ji;


# instance fields
.field private final s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/ji;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/nh;->s:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/embedapplog/nh;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/embedapplog/m;->dq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

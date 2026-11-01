.class Lcom/bytedance/embedapplog/uh;
.super Lcom/bytedance/embedapplog/ji;


# instance fields
.field private final s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/ji;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/uh;->s:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/embedapplog/uh;->s:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sim_region"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/c;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

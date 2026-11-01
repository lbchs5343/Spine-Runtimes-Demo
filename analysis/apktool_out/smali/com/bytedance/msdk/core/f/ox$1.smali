.class Lcom/bytedance/msdk/core/f/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/f/ox;->dq(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cd:Lcom/bytedance/msdk/core/f/ox;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic fw:Z

.field final synthetic ia:Ljava/lang/String;

.field final synthetic ig:Ljava/lang/String;

.field final synthetic iw:Lorg/json/JSONObject;

.field final synthetic jy:Ljava/lang/String;

.field final synthetic kk:Ljava/lang/String;

.field final synthetic mn:Ljava/lang/String;

.field final synthetic mp:Lorg/json/JSONArray;

.field final synthetic no:Ljava/lang/String;

.field final synthetic o:Ljava/lang/String;

.field final synthetic ox:Lorg/json/JSONObject;

.field final synthetic p:Lorg/json/JSONObject;

.field final synthetic q:Ljava/lang/String;

.field final synthetic s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/f/ox;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/f/ox$1;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/msdk/core/f/ox$1;->d:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/msdk/core/f/ox$1;->ox:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/bytedance/msdk/core/f/ox$1;->p:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/bytedance/msdk/core/f/ox$1;->s:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/bytedance/msdk/core/f/ox$1;->iw:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/bytedance/msdk/core/f/ox$1;->mn:Ljava/lang/String;

    iput-object p9, p0, Lcom/bytedance/msdk/core/f/ox$1;->ia:Ljava/lang/String;

    iput-object p10, p0, Lcom/bytedance/msdk/core/f/ox$1;->kk:Ljava/lang/String;

    iput-object p11, p0, Lcom/bytedance/msdk/core/f/ox$1;->o:Ljava/lang/String;

    iput-object p12, p0, Lcom/bytedance/msdk/core/f/ox$1;->no:Ljava/lang/String;

    iput-object p13, p0, Lcom/bytedance/msdk/core/f/ox$1;->ig:Ljava/lang/String;

    iput-object p14, p0, Lcom/bytedance/msdk/core/f/ox$1;->mp:Lorg/json/JSONArray;

    iput-object p15, p0, Lcom/bytedance/msdk/core/f/ox$1;->q:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/ox$1;->jy:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/bytedance/msdk/core/f/ox$1;->f:Ljava/lang/String;

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/f/ox$1;->fw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->k()Lcom/bytedance/msdk/mn/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/mn/p;->q()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->dq(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v2, "is_trusteeship_monetize"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->d(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "etag"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->ox(Lcom/bytedance/msdk/core/f/ox;)J

    move-result-wide v1

    const-string v3, "max_age"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->p(Lcom/bytedance/msdk/core/f/ox;)J

    move-result-wide v1

    const-string v3, "max_expire_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->s(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ab_version"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->iw(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ab_params"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->mn(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->ia(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "transparent_params"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->kk(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v2, "if_test"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->o(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v2, "network_permission"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->no(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecpm_precision_level"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->ig(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch_primerit_level"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->mp(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_abtest"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module_control"

    iget-object v2, p0, Lcom/bytedance/msdk/core/f/ox$1;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->q(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tt_app_log_url"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->jy(Lcom/bytedance/msdk/core/f/ox;)J

    move-result-wide v1

    const-string v3, "break_request_times"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->f(Lcom/bytedance/msdk/core/f/ox;)J

    move-result-wide v1

    const-string v3, "break_request_hold_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->fw(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v2, "ex_info"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->cd(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v2, "if_enable_label"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->gh(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v2, "cpm_expire_time"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->d:Lorg/json/JSONObject;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "key_supervisor_feature"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->r(Lcom/bytedance/msdk/core/f/ox;)D

    move-result-wide v3

    double-to-float v1, v3

    const-string v3, "custom_adn_sample_ratio"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->i(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v3, "enable_label_return"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->le(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v3, "dynamic_policy_enable"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->k(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v3, "behavior_policy_enable"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->wp(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v3, "limit_p_a"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->e(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v3, "limit_p_r"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->kx(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v3, "enable_bid_result_return"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->h(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v3, "enable_bid_result_return_for_baidu"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->ji(Lcom/bytedance/msdk/core/f/ox;)I

    move-result v1

    const-string v3, "enable_bid_result_return_for_ks"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->ox:Lorg/json/JSONObject;

    const-string v3, "call_stack"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->p:Lorg/json/JSONObject;

    const-string v3, "custom_adn_feature"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->s:Lorg/json/JSONObject;

    const-string v3, "timeout_req"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->iw:Lorg/json/JSONObject;

    const-string v3, "is_callback"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v3, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->mn:Ljava/lang/String;

    const-string v2, "server_dist_host"

    if-eqz v1, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->mn:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/ia/bl;->iw(Ljava/lang/String;)V

    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->ia:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "adn_control_conf"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->kk:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "network_conf"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->o:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "label_outputs"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->no:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->no:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "label_group_infos"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->ig:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->ig:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "dynamic_rules"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->bl(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->cd:Lcom/bytedance/msdk/core/f/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/f/ox;->bl(Lcom/bytedance/msdk/core/f/ox;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v2, "ex_"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->mp:Lorg/json/JSONArray;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, "reward_again_styles"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->q:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v2, "dynamic_policy"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->jy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->jy:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "behavior_policy"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/bytedance/msdk/core/f/ox$1;->f:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/msdk/ia/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "inter_full_refresh_cfg"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v1, "is_config_from_assert"

    iget-boolean v2, p0, Lcom/bytedance/msdk/core/f/ox$1;->fw:Z

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Z)V

    const-string v1, "has_config_in_sp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Z)V

    return-void
.end method

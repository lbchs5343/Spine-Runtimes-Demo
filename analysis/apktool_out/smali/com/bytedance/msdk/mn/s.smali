.class public Lcom/bytedance/msdk/mn/s;
.super Ljava/lang/Object;


# direct methods
.method public static d()Lcom/bytedance/msdk/ia/bl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_sdk_app_common_settings_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public static dq()Lcom/bytedance/msdk/ia/bl;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/dq/dq;->q()Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public static dq(I)Lcom/bytedance/msdk/ia/bl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_sdk_rit_settings_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/bytedance/msdk/d/dq;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object p0

    return-object p0
.end method

.method public static ia()Lcom/bytedance/msdk/ia/bl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_sdk_new_settings_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public static iw()Lcom/bytedance/msdk/ia/bl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_sdk_gm_data_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public static kk()Lcom/bytedance/msdk/ia/bl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sp_gm_sdk_init_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public static mn()Lcom/bytedance/msdk/ia/bl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_sdk_settings_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public static ox()Lcom/bytedance/msdk/ia/bl;
    .locals 2

    const-string v0, "tt_sdk_mediation_mp_settings"

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public static p()Lcom/bytedance/msdk/ia/bl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_sdk_adn_init_settings_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

.method public static s()Lcom/bytedance/msdk/ia/bl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tt_sdk_rit_settings_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    return-object v0
.end method

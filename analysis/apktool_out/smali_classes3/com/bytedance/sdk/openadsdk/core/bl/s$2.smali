.class Lcom/bytedance/sdk/openadsdk/core/bl/s$2;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bl/s;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bl/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_0
    const-string p1, "settings"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Lcom/bytedance/sdk/component/kk/d;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ox()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    sget-boolean p2, Lcom/bytedance/sdk/openadsdk/core/op;->s:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;)Lcom/bytedance/sdk/openadsdk/core/bl/p;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/bl/p;->dq(Lorg/json/JSONObject;)V

    :cond_1
    const-string p2, "plugins"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lorg/json/JSONArray;)V

    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;)Lcom/bytedance/sdk/openadsdk/core/bl/p;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/bl/p;->d(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->ia()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->d(Z)Z

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->fw()Lcom/bytedance/sdk/openadsdk/core/e/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->s()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n/dq;->dq()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    const-string v0, "setting_saveData_failed"

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->ox()V

    :cond_4
    :goto_4
    return-void

    :catchall_2
    move-exception p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    const-string v0, "setting_decrypt"

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    const-string v0, "setting_parse"

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :try_start_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;)Lcom/bytedance/sdk/openadsdk/core/bl/p;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/p;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->jy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->d()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->wp()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3ef

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bl/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/bl/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/s;->dq(Lcom/bytedance/sdk/openadsdk/core/bl/s;)Lcom/bytedance/sdk/openadsdk/core/bl/p;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/p;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->jy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->d()V

    return-void
.end method

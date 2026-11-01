.class public Lcom/bytedance/msdk/ia/p/s;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/sdk/gromore/dq/d/dq;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/gromore/dq/d/dq;->e()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x2711

    const-class v3, Ljava/lang/Boolean;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/p/dq;->dq(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/gromore/dq/d/dq;->h()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x2713

    const-class v3, Ljava/util/Map;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onetap "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/ia/p/ox;->dq(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/gromore/dq/d/dq;->kx()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/p/d;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/gromore/dq/d/dq;->ji()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/msdk/ia/p/p;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method

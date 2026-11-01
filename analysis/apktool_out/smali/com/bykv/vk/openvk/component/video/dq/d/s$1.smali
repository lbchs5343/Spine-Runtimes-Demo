.class final Lcom/bykv/vk/openvk/component/video/dq/d/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/s;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/dq/ox;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v0, :cond_0

    const-string v0, "new cache created: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox()Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;->dq(Ljava/util/Collection;I)V

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v0, :cond_0

    const-string v0, "cache file removed, "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.class public abstract Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;
.super Ljava/lang/Object;


# instance fields
.field d:Lcom/bykv/vk/openvk/component/video/dq/d/s/s;

.field dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d()Z
.end method

.method public abstract dq()I
.end method

.method public dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->dq:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->dq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;

    iget-object v3, v2, Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;->dq:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public dq(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "HTTP Version Not Supported"

    return-object p1

    :pswitch_1
    const-string p1, "Gateway Timeout"

    return-object p1

    :pswitch_2
    const-string p1, "Service Unavailable"

    return-object p1

    :pswitch_3
    const-string p1, "Bad Gateway"

    return-object p1

    :pswitch_4
    const-string p1, "Not Implemented"

    return-object p1

    :pswitch_5
    const-string p1, "Internal Server Error"

    return-object p1

    :pswitch_6
    const-string p1, "Unsupported Media Type"

    return-object p1

    :pswitch_7
    const-string p1, "Request-URI Too Large"

    return-object p1

    :pswitch_8
    const-string p1, "Request Entity Too Large"

    return-object p1

    :pswitch_9
    const-string p1, "Precondition Failed"

    return-object p1

    :pswitch_a
    const-string p1, "Length Required"

    return-object p1

    :pswitch_b
    const-string p1, "Gone"

    return-object p1

    :pswitch_c
    const-string p1, "Conflict"

    return-object p1

    :pswitch_d
    const-string p1, "Request Time-Out"

    return-object p1

    :pswitch_e
    const-string p1, "Proxy Authentication Required"

    return-object p1

    :pswitch_f
    const-string p1, "Not Acceptable"

    return-object p1

    :pswitch_10
    const-string p1, "Method Not Allowed"

    return-object p1

    :pswitch_11
    const-string p1, "Not Found"

    return-object p1

    :pswitch_12
    const-string p1, "Forbidden"

    return-object p1

    :pswitch_13
    const-string p1, "Payment Required"

    return-object p1

    :pswitch_14
    const-string p1, "Unauthorized"

    return-object p1

    :pswitch_15
    const-string p1, "Bad Request"

    return-object p1

    :pswitch_16
    const-string p1, "Use Proxy"

    return-object p1

    :pswitch_17
    const-string p1, "Not Modified"

    return-object p1

    :pswitch_18
    const-string p1, "See Other"

    return-object p1

    :pswitch_19
    const-string p1, "Temporary Redirect"

    return-object p1

    :pswitch_1a
    const-string p1, "Moved Permanently"

    return-object p1

    :pswitch_1b
    const-string p1, "Multiple Choices"

    return-object p1

    :pswitch_1c
    const-string p1, "Partial Content"

    return-object p1

    :pswitch_1d
    const-string p1, "Reset Content"

    return-object p1

    :pswitch_1e
    const-string p1, "No Content"

    return-object p1

    :pswitch_1f
    const-string p1, "Non-Authoritative"

    return-object p1

    :pswitch_20
    const-string p1, "Accepted"

    return-object p1

    :pswitch_21
    const-string p1, "Created"

    return-object p1

    :pswitch_22
    const-string p1, "OK"

    return-object p1

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x190
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract iw()Ljava/lang/String;
.end method

.method public mn()Lcom/bykv/vk/openvk/component/video/dq/d/s/s;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/s/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/d/s/s;

    return-object v0
.end method

.method public abstract ox()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/dq/d/kk$d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Ljava/io/InputStream;
.end method

.method public abstract s()Ljava/lang/String;
.end method

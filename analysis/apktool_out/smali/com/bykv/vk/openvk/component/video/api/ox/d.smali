.class public Lcom/bykv/vk/openvk/component/video/api/ox/d;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:I

.field private ox:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq:I

    iput p2, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->d:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq:I

    iput p2, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->d:I

    iput-object p3, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->d:I

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq:I

    return v0
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox:Ljava/lang/String;

    return-void
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox:Ljava/lang/String;

    return-object v0
.end method

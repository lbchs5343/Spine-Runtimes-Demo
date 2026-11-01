.class public Lcom/bykv/vk/openvk/component/video/api/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:[Ljava/io/File;


# direct methods
.method public constructor <init>([Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/dq/dq;->dq:[Ljava/io/File;

    iput p2, p0, Lcom/bykv/vk/openvk/component/video/api/dq/dq;->d:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/dq/dq;->d:I

    return v0
.end method

.method public dq()[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/dq/dq;->dq:[Ljava/io/File;

    return-object v0
.end method

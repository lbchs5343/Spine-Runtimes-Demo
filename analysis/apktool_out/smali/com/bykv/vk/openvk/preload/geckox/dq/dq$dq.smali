.class final Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field dq:Ljava/lang/String;

.field ox:I

.field p:J

.field s:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->dq:Ljava/lang/String;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->d:Ljava/lang/String;

    iput p3, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->ox:I

    iput-wide p4, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->p:J

    iput-object p6, p0, Lcom/bykv/vk/openvk/preload/geckox/dq/dq$dq;->s:Ljava/io/File;

    return-void
.end method

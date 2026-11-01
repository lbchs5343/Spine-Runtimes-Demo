.class public abstract Lcom/bykv/vk/openvk/preload/geckox/iw/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field private dq:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/iw/dq/dq;->dq:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final d(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/iw/dq/dq;->dq:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/iw/dq/dq;->d(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public abstract dq(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final dq(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/iw/dq/dq;->dq:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/iw/dq/dq;->dq(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

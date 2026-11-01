.class final Lcom/bykv/vk/openvk/preload/dq/d/no$dq;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/dq/d/no$dq$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bykv/vk/openvk/preload/dq/d/no$dq$dq;

.field private final dq:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/no$dq$dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/no$dq$dq;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/no$dq;->d:Lcom/bykv/vk/openvk/preload/dq/d/no$dq$dq;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/no$dq;->dq:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/no$dq;->dq:Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public final write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/no$dq;->d:Lcom/bykv/vk/openvk/preload/dq/d/no$dq$dq;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/dq/d/no$dq$dq;->dq:[C

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/no$dq;->dq:Ljava/lang/Appendable;

    add-int/2addr p3, p2

    invoke-interface {p1, v0, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method

.class public Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;
.super Ljava/lang/Object;


# instance fields
.field private final d:J

.field private final dq:J

.field private final ox:I

.field private final p:J

.field private final s:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(JJIJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->dq:J

    iput-wide p3, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->d:J

    iput p5, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->ox:I

    iput-wide p6, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->p:J

    iput-object p8, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->s:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->d:J

    return-wide v0
.end method

.method public dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->dq:J

    return-wide v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->ox:I

    return v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->p:J

    return-wide v0
.end method

.method public s()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->s:Ljava/nio/ByteBuffer;

    return-object v0
.end method

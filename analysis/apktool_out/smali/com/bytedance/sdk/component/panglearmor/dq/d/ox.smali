.class public abstract Lcom/bytedance/sdk/component/panglearmor/dq/d/ox;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Ljava/io/RandomAccessFile;JJ)Lcom/bytedance/sdk/component/panglearmor/dq/d/d;
    .locals 0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/panglearmor/dq/d/ox;->dq(Ljava/nio/channels/FileChannel;JJ)Lcom/bytedance/sdk/component/panglearmor/dq/d/d;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/nio/channels/FileChannel;JJ)Lcom/bytedance/sdk/component/panglearmor/dq/d/d;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/bytedance/sdk/component/panglearmor/dq/d/p;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/panglearmor/dq/d/p;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    return-object v0
.end method

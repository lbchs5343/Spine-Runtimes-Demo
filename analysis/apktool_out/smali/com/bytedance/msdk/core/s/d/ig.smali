.class public Lcom/bytedance/msdk/core/s/d/ig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/msdk/core/s/d/ig;",
        ">;"
    }
.end annotation


# instance fields
.field private d:J

.field public dq:Lcom/bytedance/msdk/d/s;

.field private ox:Z

.field private p:Lcom/bytedance/msdk/api/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/d/s;JLcom/bytedance/msdk/api/dq/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/core/s/d/ig;->ox:Z

    iput-object p1, p0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    iput-wide p2, p0, Lcom/bytedance/msdk/core/s/d/ig;->d:J

    iput-object p4, p0, Lcom/bytedance/msdk/core/s/d/ig;->p:Lcom/bytedance/msdk/api/dq/d;

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/s/d/ig;->dq(Lcom/bytedance/msdk/core/s/d/ig;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/s/d/ig;->ox:Z

    return v0
.end method

.method public dq(Lcom/bytedance/msdk/core/s/d/ig;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    iget-object p1, p1, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/msdk/d/s;)I

    move-result p1

    return p1
.end method

.method public dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/s/d/ig;->d:J

    return-wide v0
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/s/d/ig;->ox:Z

    return-void
.end method

.method public ox()Lcom/bytedance/msdk/api/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/d/ig;->p:Lcom/bytedance/msdk/api/dq/d;

    return-object v0
.end method

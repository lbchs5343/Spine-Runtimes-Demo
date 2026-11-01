.class public final Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ox"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

.field private final ox:J

.field private final p:[Ljava/io/InputStream;

.field private final s:[J


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->ox:J

    iput-object p5, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->p:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->s:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;-><init>(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->p:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dq(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->p:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.class public Lcom/bytedance/sdk/component/kk/d;
.super Ljava/lang/Object;


# instance fields
.field final d:Ljava/lang/String;

.field final dq:I

.field private ia:Ljava/io/File;

.field final iw:J

.field private final kk:Z

.field mn:Lcom/bytedance/sdk/component/d/dq/no;

.field private o:[B

.field final ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final p:Ljava/lang/String;

.field final s:J


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/kk/d;->ia:Ljava/io/File;

    iput-object v0, p0, Lcom/bytedance/sdk/component/kk/d;->o:[B

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/kk/d;->kk:Z

    iput p2, p0, Lcom/bytedance/sdk/component/kk/d;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/kk/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/kk/d;->ox:Ljava/util/Map;

    iput-object p5, p0, Lcom/bytedance/sdk/component/kk/d;->p:Ljava/lang/String;

    iput-wide p6, p0, Lcom/bytedance/sdk/component/kk/d;->s:J

    iput-wide p8, p0, Lcom/bytedance/sdk/component/kk/d;->iw:J

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/kk/d;->dq:I

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/component/d/dq/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d;->mn:Lcom/bytedance/sdk/component/d/dq/no;

    return-void
.end method

.method public dq(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d;->ia:Ljava/io/File;

    return-void
.end method

.method public dq([B)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d;->o:[B

    return-void
.end method

.method public ia()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/kk/d;->kk:Z

    return v0
.end method

.method public iw()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/kk/d;->iw:J

    return-wide v0
.end method

.method public kk()J
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/component/kk/d;->s:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/kk/d;->iw:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public mn()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d;->ia:Ljava/io/File;

    return-object v0
.end method

.method public no()Lcom/bytedance/sdk/component/d/dq/no;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d;->mn:Lcom/bytedance/sdk/component/d/dq/no;

    return-object v0
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d;->o:[B

    return-object v0
.end method

.method public ox()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d;->ox:Ljava/util/Map;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/kk/d;->s:J

    return-wide v0
.end method

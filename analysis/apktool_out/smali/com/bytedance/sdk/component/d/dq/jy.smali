.class public Lcom/bytedance/sdk/component/d/dq/jy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/d/dq/jy$dq;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field public iw:Lcom/bytedance/sdk/component/d/dq/jy$dq;

.field public ox:Lcom/bytedance/sdk/component/d/dq/o;

.field public p:Ljava/lang/String;

.field public s:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/jy$dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/jy;->ox:Lcom/bytedance/sdk/component/d/dq/o;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/jy;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/dq/jy;->iw:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/o;[BLcom/bytedance/sdk/component/d/dq/jy$dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/jy;->ox:Lcom/bytedance/sdk/component/d/dq/o;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/jy;->s:[B

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/dq/jy;->iw:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/o;[BLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/jy$dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/jy;->ox:Lcom/bytedance/sdk/component/d/dq/o;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/dq/jy;->s:[B

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/dq/jy;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/d/dq/jy;->dq:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/component/d/dq/jy;->iw:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/jy;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/jy;

    sget-object v1, Lcom/bytedance/sdk/component/d/dq/jy$dq;->dq:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/component/d/dq/jy;-><init>(Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/jy$dq;)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/d/dq/o;[B)Lcom/bytedance/sdk/component/d/dq/jy;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/jy;

    sget-object v1, Lcom/bytedance/sdk/component/d/dq/jy$dq;->d:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/component/d/dq/jy;-><init>(Lcom/bytedance/sdk/component/d/dq/o;[BLcom/bytedance/sdk/component/d/dq/jy$dq;)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/d/dq/o;[BLjava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/jy;
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/jy;

    sget-object v5, Lcom/bytedance/sdk/component/d/dq/jy$dq;->ox:Lcom/bytedance/sdk/component/d/dq/jy$dq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/d/dq/jy;-><init>(Lcom/bytedance/sdk/component/d/dq/o;[BLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/jy$dq;)V

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/jy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/jy;->dq:Ljava/lang/String;

    return-object v0
.end method

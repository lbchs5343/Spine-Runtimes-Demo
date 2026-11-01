.class public Lcom/bytedance/sdk/component/widget/recycler/s$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public d:Z

.field public dq:I

.field public ox:Z

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$d;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$d;->ox:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s$d;->p:Z

    return-void
.end method

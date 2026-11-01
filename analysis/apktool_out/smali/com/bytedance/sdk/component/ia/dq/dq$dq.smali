.class public Lcom/bytedance/sdk/component/ia/dq/dq$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ia/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private dq:Lcom/bytedance/sdk/component/ia/dq/no;

.field private ia:Lcom/bytedance/sdk/component/ia/dq/iw;

.field private ig:Ljava/lang/String;

.field private iw:Z

.field private final kk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mn:Lcom/bytedance/sdk/component/ia/dq/p;

.field private mp:Landroid/content/Context;

.field private no:I

.field private o:I

.field private ox:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->o:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->no:I

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->ox:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object p0
.end method

.method public d(Z)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->iw:Z

    return-object p0
.end method

.method public dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->mp:Landroid/content/Context;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->d:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/iw;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->ia:Lcom/bytedance/sdk/component/ia/dq/iw;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/no;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq:Lcom/bytedance/sdk/component/ia/dq/no;

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/p;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->mn:Lcom/bytedance/sdk/component/ia/dq/p;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->ig:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/component/ia/dq/dq;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/ia/dq/dq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;-><init>(Lcom/bytedance/sdk/component/ia/dq/dq$1;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq:Lcom/bytedance/sdk/component/ia/dq/no;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/dq/no;)Lcom/bytedance/sdk/component/ia/dq/no;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->d:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->ox:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->d(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->p(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->iw:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;Z)Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->mn:Lcom/bytedance/sdk/component/ia/dq/p;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/dq/p;)Lcom/bytedance/sdk/component/ia/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->ia:Lcom/bytedance/sdk/component/ia/dq/iw;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/dq/iw;)Lcom/bytedance/sdk/component/ia/dq/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->ig:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->mp:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;Landroid/content/Context;)Landroid/content/Context;

    iget v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->no:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;I)I

    iget v1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->o:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq;->d(Lcom/bytedance/sdk/component/ia/dq/dq;I)I

    return-object v0
.end method

.method public ox(Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->p:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object p0
.end method

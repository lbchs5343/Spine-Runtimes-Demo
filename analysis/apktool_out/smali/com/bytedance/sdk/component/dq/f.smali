.class public Lcom/bytedance/sdk/component/dq/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/dq/f$dq;
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final dq:I

.field public final ia:Ljava/lang/String;

.field public final iw:Ljava/lang/String;

.field public final mn:Ljava/lang/String;

.field public final ox:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final s:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/dq/f$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/f$dq;->dq(Lcom/bytedance/sdk/component/dq/f$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/f$dq;->d(Lcom/bytedance/sdk/component/dq/f$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->ox:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/f$dq;->ox(Lcom/bytedance/sdk/component/dq/f$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/f$dq;->p(Lcom/bytedance/sdk/component/dq/f$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/f$dq;->s(Lcom/bytedance/sdk/component/dq/f$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->iw:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/f$dq;->iw(Lcom/bytedance/sdk/component/dq/f$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->mn:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/dq/f;->dq:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/dq/f$dq;->mn(Lcom/bytedance/sdk/component/dq/f$dq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/f;->ia:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/dq/f$dq;Lcom/bytedance/sdk/component/dq/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/dq/f;-><init>(Lcom/bytedance/sdk/component/dq/f$dq;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->ox:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/component/dq/f;->iw:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->mn:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/sdk/component/dq/f;->dq:I

    iput-object v0, p0, Lcom/bytedance/sdk/component/dq/f;->ia:Ljava/lang/String;

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/component/dq/f$dq;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/dq/f$dq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/dq/f$dq;-><init>(Lcom/bytedance/sdk/component/dq/f$1;)V

    return-object v0
.end method

.method public static dq(Ljava/lang/String;I)Lcom/bytedance/sdk/component/dq/f;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/dq/f;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/dq/f;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/dq/f;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/component/dq/f;->dq:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/bytedance/sdk/component/dq/f;->s:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "methodName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callbackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/f;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/f;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/dq/f;->d:Ljava/lang/String;

    const-string v2, ", "

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/r/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ox;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    }
.end annotation


# instance fields
.field public cd:I

.field public final d:F

.field public final dq:F

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/d/p$dq;",
            ">;"
        }
    .end annotation
.end field

.field public fw:Ljava/lang/String;

.field private gh:Lorg/json/JSONObject;

.field public final ia:I

.field public final ig:Ljava/lang/String;

.field public final iw:J

.field public final jy:Z

.field public final kk:I

.field public final mn:I

.field public final mp:Ljava/lang/String;

.field public final no:Ljava/lang/String;

.field public final o:I

.field public final ox:F

.field public final p:F

.field public final q:Ljava/lang/String;

.field public final s:J


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->cd:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->d:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->ox:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->p:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->s(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->s:J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->iw(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->iw:J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->mn(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->mn:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ia(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->ia:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->kk(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->kk:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->o(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->o:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->no(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->no:Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->f:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ig(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->jy:Z

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->mp(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->gh:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->q(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->ig:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->jy(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->mp:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->f(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->fw(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->fw:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->cd(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->cd:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;Lcom/bytedance/sdk/openadsdk/core/r/k$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/k;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)V

    return-void
.end method


# virtual methods
.method public dq()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->gh:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->gh:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k;->gh:Lorg/json/JSONObject;

    return-object v0
.end method

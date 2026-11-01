.class public Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/r/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private cd:Ljava/lang/String;

.field private d:J

.field protected dq:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/d/p$dq;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private fw:Lorg/json/JSONObject;

.field private gh:I

.field private ia:I

.field private ig:Ljava/lang/String;

.field private iw:F

.field private jy:Ljava/lang/String;

.field private kk:I

.field private mn:F

.field private mp:Ljava/lang/String;

.field private no:I

.field private o:I

.field private ox:J

.field private p:F

.field private q:Ljava/lang/String;

.field private s:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->gh:I

    return-void
.end method

.method public static synthetic cd(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->gh:I

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->iw:F

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->mn:F

    return p0
.end method

.method public static synthetic f(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->jy:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->cd:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->kk:I

    return p0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->f:Z

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d:J

    return-wide v0
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->o:I

    return p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ia:I

    return p0
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->fw:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ig:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->no:I

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->s:F

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p:F

    return p0
.end method

.method public static synthetic q(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->mp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox:J

    return-wide v0
.end method


# virtual methods
.method public d(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->s:F

    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->kk:I

    return-object p0
.end method

.method public d(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox:J

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->mp:Ljava/lang/String;

    return-object p0
.end method

.method public dq(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p:F

    return-object p0
.end method

.method public dq(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ia:I

    return-object p0
.end method

.method public dq(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d:J

    return-object p0
.end method

.method public dq(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/d/p$dq;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/r/k$dq;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq:Landroid/util/SparseArray;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ig:Ljava/lang/String;

    return-object p0
.end method

.method public dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->fw:Lorg/json/JSONObject;

    return-object p0
.end method

.method public dq(Z)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->f:Z

    return-object p0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/r/k;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/k;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/k$dq;Lcom/bytedance/sdk/openadsdk/core/r/k$1;)V

    return-object v0
.end method

.method public ox(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->iw:F

    return-object p0
.end method

.method public ox(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->o:I

    return-object p0
.end method

.method public ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->q:Ljava/lang/String;

    return-object p0
.end method

.method public p(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->mn:F

    return-object p0
.end method

.method public p(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->no:I

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->jy:Ljava/lang/String;

    return-object p0
.end method

.method public s(I)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->gh:I

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->cd:Ljava/lang/String;

    return-object p0
.end method

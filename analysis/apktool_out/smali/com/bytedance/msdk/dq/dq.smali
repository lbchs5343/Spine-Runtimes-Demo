.class public abstract Lcom/bytedance/msdk/dq/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/dq/dq$d;,
        Lcom/bytedance/msdk/dq/dq$dq;
    }
.end annotation


# instance fields
.field private bl:I

.field private cd:Ljava/lang/String;

.field protected d:Lcom/bytedance/msdk/core/no/no;

.field protected dq:Ljava/lang/String;

.field private e:Lcom/bytedance/msdk/core/no/kk;

.field private f:I

.field private fw:D

.field private gh:Ljava/lang/String;

.field private h:I

.field private i:J

.field private final ia:Ljava/lang/String;

.field private ig:Z

.field private volatile ir:J

.field private final iw:I

.field private ji:Ljava/lang/String;

.field private jy:I

.field private k:I

.field private final kk:Ljava/lang/String;

.field private kx:I

.field private le:I

.field private final mn:Ljava/lang/String;

.field private mp:Lcom/bytedance/msdk/dq/dq$dq;

.field private n:Z

.field private no:Z

.field private final o:Ljava/lang/String;

.field private op:I

.field protected ox:Lcom/bytedance/msdk/api/dq/d;

.field protected p:Lcom/bytedance/msdk/core/no/o;

.field private q:Ljava/lang/String;

.field private r:J

.field protected s:I

.field private wp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/bytedance/msdk/dq/dq;->iw:I

    const-string v0, "adload_ads"

    iput-object v0, p0, Lcom/bytedance/msdk/dq/dq;->mn:Ljava/lang/String;

    const-string v0, "adload_ad"

    iput-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ia:Ljava/lang/String;

    const-string v0, "failed"

    iput-object v0, p0, Lcom/bytedance/msdk/dq/dq;->kk:Ljava/lang/String;

    const-string v0, "ad_video_cache"

    iput-object v0, p0, Lcom/bytedance/msdk/dq/dq;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/dq;->no:Z

    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/dq;->ig:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/msdk/dq/dq;->ir:J

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    return-object p0
.end method

.method private d(Lcom/bytedance/msdk/d/s;)V
    .locals 5

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v0, p1, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;)V

    :cond_0
    sget-boolean p1, Lcom/bytedance/msdk/d/p;->d:Z

    const-string v0, "] AdType["

    const-string v1, "AdNetWorkName["

    const-string v2, "fill"

    const-string v3, "TTMediationSDK"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] AdUnitId["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    iget v1, p0, Lcom/bytedance/msdk/dq/dq;->s:I

    iget-object v2, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] \u89c6\u9891\u7f13\u5b58\u6210\u529f (loadSort="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->jy:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",showSort="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    iget v1, p0, Lcom/bytedance/msdk/dq/dq;->s:I

    iget-object v2, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] \u89c6\u9891\u7f13\u5b58\u6210\u529f "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/d/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/dq/dq;->d(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->mp:Lcom/bytedance/msdk/dq/dq$dq;

    return-object p0
.end method

.method private dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    return-object p3
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "pangle"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    const-string p0, "message:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-lez p1, :cond_1

    aget-object p0, p0, v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 v2, 0x2

    if-lt p1, v2, :cond_1

    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_6

    aget-char v4, p1, v3

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-gt v4, v5, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v4, p1

    sub-int/2addr v4, v0

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_8

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "gdt"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pangle"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    :goto_1
    const-string p0, "_"

    invoke-static {p1, p0, p2}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dq(ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x4e20

    move/from16 v3, p1

    if-ne v3, v1, :cond_0

    const-string v1, "load success"

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq;->p:Lcom/bytedance/msdk/core/no/o;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/bytedance/msdk/core/no/o;->iw:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_2
    iget v1, v0, Lcom/bytedance/msdk/dq/dq;->h:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    if-eqz p2, :cond_3

    iget-wide v1, v0, Lcom/bytedance/msdk/dq/dq;->ir:J

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/bytedance/msdk/dq/dq;->ir:J

    sub-long v5, v1, v5

    :cond_2
    move-wide v14, v5

    iget-wide v5, v0, Lcom/bytedance/msdk/dq/dq;->i:J

    iget-object v7, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget v8, v0, Lcom/bytedance/msdk/dq/dq;->le:I

    move-object/from16 v2, p2

    move/from16 v9, p3

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    invoke-static/range {v2 .. v15}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V

    :cond_3
    sget-boolean v1, Lcom/bytedance/msdk/d/p;->d:Z

    const-string v2, "] AdType["

    const-string v3, "AdNetWorkName["

    const-string v4, "fill"

    const-string v5, "TTMediationSDK"

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] AdUnitId["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v4

    iget v6, v0, Lcom/bytedance/msdk/dq/dq;->s:I

    iget-object v7, v0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v4, v6, v7}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] \u8bf7\u6c42\u6210\u529f (loadSort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/bytedance/msdk/dq/dq;->jy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",showSort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/bytedance/msdk/dq/dq;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v4

    iget v6, v0, Lcom/bytedance/msdk/dq/dq;->s:I

    iget-object v7, v0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v4, v6, v7}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] \u8bf7\u6c42\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    const-string v2, "request"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AdNetWorkName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] AdUnitId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] + AdType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    iget v2, p0, Lcom/bytedance/msdk/dq/dq;->s:I

    iget-object v3, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] \u5f00\u59cbadn\u8bf7\u6c42"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;Ljava/util/Map;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    new-instance p2, Lcom/bytedance/msdk/api/dq;

    invoke-direct {p2, p3}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;Z)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/dq;->ig:Z

    iget-boolean v1, p0, Lcom/bytedance/msdk/dq/dq;->no:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/dq;->no:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/msdk/dq/dq;->r:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/msdk/dq/dq;->i:J

    const-string v3, "failed"

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/util/List;Lcom/bytedance/msdk/api/dq;Z)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/dq;ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/msdk/dq/dq;->dq(ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/dq;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/d/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/dq/dq;->ox(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/util/List;Lcom/bytedance/msdk/api/dq;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/d/s;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/core/no/no;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    :goto_0
    move-object v8, v2

    move-wide v9, v4

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/bytedance/msdk/dq/dq$d;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v11, p5

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/msdk/dq/dq$d;-><init>(Lcom/bytedance/msdk/dq/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/util/List;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;JZ)V

    invoke-static {v2}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/dq/dq;->k:I

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/dq/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/dq/dq;->i:J

    return-wide v0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/dq/dq;->wp:I

    return p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/dq/dq;->le:I

    return p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/dq/dq;->bl:I

    return p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/dq/dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/dq/dq;->f:I

    return p0
.end method

.method private ox(Lcom/bytedance/msdk/d/s;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/msdk/dq/dq;->fw:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->i()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->d(D)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->le()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->ox(D)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->iw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->ia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->ox(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->kk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->dq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->s(I)V

    :cond_3
    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->f(I)V

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->jy:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->cd(I)V

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->f:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->fw(I)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->fw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->jy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->gh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->gh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->cd(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/dq/dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "waterfall_abtest"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/msdk/d/s;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/d/dq;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->q(I)V

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->k:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->ia(I)V

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->wp:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->kk(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->cd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->k:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->o(I)V

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->wp:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->no(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(I)V

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->s:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->iw(I)V

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->bl:I

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->jy(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->kk()I

    move-result v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->p(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->dq()I

    move-result v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->d(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    iget-object v3, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p1, v0, v3, v2}, Lcom/bytedance/msdk/ia/op;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->p:Lcom/bytedance/msdk/core/no/o;

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/bytedance/msdk/core/no/o;->d:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    goto :goto_5

    :cond_9
    move v2, v0

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "if_test"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/msdk/d/s;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->p:Lcom/bytedance/msdk/core/no/o;

    iget-object v0, v0, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    const-string v2, "server_bidding_extra"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/msdk/d/s;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->ia(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->p:Lcom/bytedance/msdk/core/no/o;

    iget-boolean v0, v0, Lcom/bytedance/msdk/core/no/o;->s:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->p(Z)V

    :cond_c
    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->e:Lcom/bytedance/msdk/core/no/kk;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->e:Lcom/bytedance/msdk/core/no/kk;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->d()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "extra_data_and_no_parse"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/msdk/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/dq/dq;->jy:I

    return p0
.end method

.method public static p()Z
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/e;->ox(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/ia/e;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/f/ox;->ig()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    return p0
.end method


# virtual methods
.method public cd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/ox;->ox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/msdk/core/no/no;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    return-object v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/bytedance/msdk/dq/dq;->ir:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/msdk/dq/dq;->ir:J

    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/d/s;

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/bytedance/msdk/d/s;->dq(J)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v2

    const/4 v6, 0x1

    if-nez v2, :cond_9

    iget v2, v0, Lcom/bytedance/msdk/dq/dq;->h:I

    const/4 v7, 0x3

    if-eq v2, v6, :cond_4

    if-ne v2, v7, :cond_9

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v8, 0x0

    const v9, 0xc3b4

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    iget v10, v0, Lcom/bytedance/msdk/dq/dq;->h:I

    invoke-virtual {v2, v10}, Lcom/bytedance/msdk/d/s;->f(I)V

    iget-object v10, v0, Lcom/bytedance/msdk/dq/dq;->gh:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/bytedance/msdk/d/s;->q(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    iget-object v11, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v2, v10, v11, v6}, Lcom/bytedance/msdk/ia/op;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Z)V

    iget-object v10, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v10, :cond_5

    iget v11, v0, Lcom/bytedance/msdk/dq/dq;->h:I

    if-eq v11, v6, :cond_6

    if-ne v11, v7, :cond_5

    :cond_6
    invoke-virtual {v10}, Lcom/bytedance/msdk/api/dq/d;->t()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v14, v10, v12

    if-lez v14, :cond_5

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v12

    cmpl-double v14, v10, v12

    if-lez v14, :cond_5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->ij()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v2, v0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/core/no/no;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    move-wide/from16 v24, v12

    :goto_2
    move-object/from16 v23, v8

    goto :goto_3

    :cond_7
    move-wide/from16 v24, v4

    goto :goto_2

    :goto_3
    new-instance v12, Lcom/bytedance/msdk/api/dq;

    invoke-static {v9}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v9, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    iget-object v13, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v14, v0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    iget v15, v0, Lcom/bytedance/msdk/dq/dq;->le:I

    iget v2, v0, Lcom/bytedance/msdk/dq/dq;->k:I

    iget v8, v0, Lcom/bytedance/msdk/dq/dq;->wp:I

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->r()Ljava/lang/String;

    move-result-object v18

    iget-wide v9, v0, Lcom/bytedance/msdk/dq/dq;->i:J

    move/from16 v16, v2

    move/from16 v17, v8

    move-wide/from16 v19, v9

    invoke-static/range {v12 .. v25}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_9

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-static {v9}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v8, v1, v2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;Z)V

    return-void

    :cond_9
    iget-boolean v1, v0, Lcom/bytedance/msdk/dq/dq;->no:Z

    if-eqz v1, :cond_a

    return-void

    :cond_a
    iput-boolean v6, v0, Lcom/bytedance/msdk/dq/dq;->no:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v0, Lcom/bytedance/msdk/dq/dq;->r:J

    sub-long/2addr v1, v4

    iput-wide v1, v0, Lcom/bytedance/msdk/dq/dq;->i:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, "adload_ads"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/util/List;Lcom/bytedance/msdk/api/dq;Z)V

    return-void
.end method

.method public dq()Lcom/bytedance/msdk/api/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object v0
.end method

.method public dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/u;
    .locals 2

    invoke-static {p1}, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->getCsjLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/u;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/u;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string v1, "ClassCastException\uff1aload ad fail loader is null"

    invoke-direct {p1, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-object v0

    :cond_1
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string v1, "ClassCastException\uff1aload ad fail loader is not TTAdNativeImpl"

    invoke-direct {p1, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-object v0
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final dq(Landroid/content/Context;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/o;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/core/no/no;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Lcom/bytedance/msdk/core/no/o;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/bytedance/msdk/dq/dq;->no:Z

    iput-boolean v3, v0, Lcom/bytedance/msdk/dq/dq;->ig:Z

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v5

    iput v5, v0, Lcom/bytedance/msdk/dq/dq;->kx:I

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bytedance/msdk/dq/dq;->cd:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v5

    iput v5, v0, Lcom/bytedance/msdk/dq/dq;->bl:I

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v5

    iput v5, v0, Lcom/bytedance/msdk/dq/dq;->s:I

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v5

    iput v5, v0, Lcom/bytedance/msdk/dq/dq;->jy:I

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v5

    iput v5, v0, Lcom/bytedance/msdk/dq/dq;->f:I

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v5

    iput-object v5, v0, Lcom/bytedance/msdk/dq/dq;->e:Lcom/bytedance/msdk/core/no/kk;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->q()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bytedance/msdk/dq/dq;->gh:Ljava/lang/String;

    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/bytedance/msdk/dq/dq;->p:Lcom/bytedance/msdk/core/no/o;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v6

    iput v6, v0, Lcom/bytedance/msdk/dq/dq;->h:I

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->kx()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/bytedance/msdk/dq/dq;->dq:Ljava/lang/String;

    move/from16 v9, p6

    iput v9, v0, Lcom/bytedance/msdk/dq/dq;->le:I

    const-string v6, "key_mediation_rit_req_type"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    iput v6, v0, Lcom/bytedance/msdk/dq/dq;->k:I

    const-string v6, "key_mediation_rit_req_type_src"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    iput v6, v0, Lcom/bytedance/msdk/dq/dq;->wp:I

    const-string v6, "key_is_from_developer_req"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v0, Lcom/bytedance/msdk/dq/dq;->n:Z

    const-string v6, "key_requestwfb_ms"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_3

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_3
    move-wide v13, v10

    goto :goto_4

    :cond_3
    const-wide/16 v10, -0x1

    goto :goto_3

    :goto_4
    const-string v6, "const_is_custom"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v17, 0x1

    goto :goto_5

    :cond_4
    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->n()Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, v0, Lcom/bytedance/msdk/dq/dq;->k:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    const/4 v6, 0x3

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    :goto_6
    iput v6, v0, Lcom/bytedance/msdk/dq/dq;->op:I

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->r()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v0, Lcom/bytedance/msdk/dq/dq;->n:Z

    iget v8, v0, Lcom/bytedance/msdk/dq/dq;->op:I

    iget v10, v0, Lcom/bytedance/msdk/dq/dq;->k:I

    iget v11, v0, Lcom/bytedance/msdk/dq/dq;->wp:I

    iget-object v12, v0, Lcom/bytedance/msdk/dq/dq;->p:Lcom/bytedance/msdk/core/no/o;

    if-eqz v12, :cond_6

    iget-boolean v3, v12, Lcom/bytedance/msdk/core/no/o;->s:Z

    move v15, v3

    goto :goto_7

    :cond_6
    const/4 v15, 0x0

    :goto_7
    const/16 v16, 0x0

    const/4 v12, 0x0

    invoke-static/range {v4 .. v16}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->iw()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->mn()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v3

    iput-wide v3, v0, Lcom/bytedance/msdk/dq/dq;->fw:D

    goto :goto_8

    :cond_8
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/bytedance/msdk/dq/dq;->fw:D

    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/bytedance/msdk/dq/dq;->r:J

    if-nez v17, :cond_9

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v3, "mintegral"

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "baidu"

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "admob"

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    :cond_a
    const-string v3, "\u5b50\u7ebf\u7a0bADN\u8bf7\u6c42\u5e7f\u544a\u5d29\u6e83"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    :goto_9
    new-instance v3, Lcom/bytedance/msdk/dq/dq$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/bytedance/msdk/dq/dq$1;-><init>(Lcom/bytedance/msdk/dq/dq;Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    :goto_a
    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/msdk/core/ox/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract dq(Landroid/content/Context;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/msdk/api/s;->dq(Landroid/view/View;)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;Z)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/api/p/dq/d/d/dq;)V
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->no()Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/api/p/dq/d/d/dq;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->no()Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/d/s;)V
    .locals 9

    iget-wide v0, p0, Lcom/bytedance/msdk/dq/dq;->ir:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/dq/dq;->ir:J

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->f(I)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->gh:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->q(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/d/s;->dq(J)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    iget-object v2, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/msdk/ia/op;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Z)V

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    if-eq v2, v0, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->t()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    const v2, 0xc3b4

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;Z)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/msdk/dq/dq;->no:Z

    if-eqz v1, :cond_3

    move-object v3, p0

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/dq;->no:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/msdk/dq/dq;->r:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/msdk/dq/dq;->i:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, "adload_ad"

    const/4 v6, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/util/List;Lcom/bytedance/msdk/api/dq;Z)V

    iget-object p1, v3, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    iget p1, v3, Lcom/bytedance/msdk/dq/dq;->s:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq;)V
    .locals 7

    iget-boolean v0, p0, Lcom/bytedance/msdk/dq/dq;->ig:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v2, "ad_video_cache"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/util/List;Lcom/bytedance/msdk/api/dq;Z)V

    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/d/s;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result p3

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p1, p3, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final dq(Lcom/bytedance/msdk/dq/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/dq;->mp:Lcom/bytedance/msdk/dq/dq$dq;

    return-void
.end method

.method public final dq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/msdk/api/p/dq/d/d/dq;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/api/p/dq/d/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/p/dq/d/d/dq;->no()Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/dq/dq;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/dq/dq;->no:Z

    return v0
.end method

.method public abstract fw()Ljava/lang/String;
.end method

.method public gh()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/f/ox;->ox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    return v0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->q:Ljava/lang/String;

    return-object v0
.end method

.method public iw()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/dq/dq;->ig:Z

    return v0
.end method

.method public final kk()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->e:Lcom/bytedance/msdk/core/no/kk;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mn()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mp()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->s:I

    return v0
.end method

.method public final no()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->e:Lcom/bytedance/msdk/core/no/kk;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->cd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->cd:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_"

    invoke-static {v0, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/dq/dq;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

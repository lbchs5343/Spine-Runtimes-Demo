.class public Lcom/bytedance/sdk/component/utils/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/i$ox;,
        Lcom/bytedance/sdk/component/utils/i$d;,
        Lcom/bytedance/sdk/component/utils/i$dq;
    }
.end annotation


# instance fields
.field private bl:F

.field private by:I

.field private final c:F

.field private cd:F

.field private ce:Lorg/json/JSONObject;

.field private cv:Lcom/bytedance/sdk/component/utils/i$ox;

.field private volatile d:J

.field private dc:Z

.field private dq:J

.field private ds:I

.field private final e:F

.field private er:Z

.field private f:Landroid/hardware/Sensor;

.field private fw:Landroid/hardware/Sensor;

.field private gh:I

.field private gx:I

.field private h:[F

.field private ha:F

.field private volatile i:J

.field private ia:F

.field private ig:Lcom/bytedance/sdk/component/utils/i$dq;

.field private ir:I

.field private iw:Z

.field private j:F

.field private ji:J

.field private jw:Landroid/content/Context;

.field private jy:Landroid/hardware/Sensor;

.field private volatile k:Z

.field private kk:F

.field private kx:F

.field private l:F

.field private volatile le:Z

.field private volatile mn:J

.field private mp:Lcom/bytedance/sdk/component/utils/i$d;

.field private n:F

.field private nh:Z

.field private no:Landroid/hardware/SensorManager;

.field private o:I

.field private ob:Z

.field private op:F

.field private ox:F

.field private p:F

.field private q:Landroid/hardware/Sensor;

.field private final r:J

.field private s:F

.field private t:I

.field private u:[F

.field private uh:I

.field private v:Z

.field private vf:F

.field private vw:I

.field private wn:Z

.field private wp:I

.field private xz:I

.field private yy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->dq:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->iw:Z

    const/high16 v1, 0x41500000    # 13.0f

    iput v1, p0, Lcom/bytedance/sdk/component/utils/i;->ia:F

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/bytedance/sdk/component/utils/i;->kk:F

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->o:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    iput-object v1, p0, Lcom/bytedance/sdk/component/utils/i;->mp:Lcom/bytedance/sdk/component/utils/i$d;

    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/bytedance/sdk/component/utils/i;->r:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/component/utils/i;->i:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->le:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->k:Z

    const v3, 0x3089705f    # 1.0E-9f

    iput v3, p0, Lcom/bytedance/sdk/component/utils/i;->e:F

    const/4 v3, 0x3

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/bytedance/sdk/component/utils/i;->h:[F

    iput-wide v1, p0, Lcom/bytedance/sdk/component/utils/i;->ji:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/component/utils/i;->bl:F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lcom/bytedance/sdk/component/utils/i;->n:F

    iput v1, p0, Lcom/bytedance/sdk/component/utils/i;->op:F

    const/4 v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/component/utils/i;->ir:I

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    iput v1, p0, Lcom/bytedance/sdk/component/utils/i;->c:F

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->er:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->wn:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->nh:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->ob:Z

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->uh:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->xz:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->yy:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->v:Z

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->ds:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->vw:I

    iput v1, p0, Lcom/bytedance/sdk/component/utils/i;->ha:F

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/utils/i;->dc:Z

    iput p2, p0, Lcom/bytedance/sdk/component/utils/i;->wp:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->jw:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cus:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "xgc_cus"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    :cond_0
    return-void
.end method

.method private d(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->kx:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_7

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v2, v2

    sub-float/2addr v2, v0

    const v0, 0x3089705f    # 1.0E-9f

    mul-float v2, v2, v0

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->h:[F

    const/4 v3, 0x0

    aget v4, v0, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v5, v3

    mul-float v6, v6, v2

    add-float/2addr v6, v4

    aput v6, v0, v3

    const/4 v4, 0x1

    aget v7, v0, v4

    aget v8, v5, v4

    mul-float v8, v8, v2

    add-float/2addr v8, v7

    aput v8, v0, v4

    const/4 v7, 0x2

    aget v8, v0, v7

    aget v5, v5, v7

    mul-float v5, v5, v2

    add-float/2addr v5, v8

    aput v5, v0, v7

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/i;->h:[F

    aget v2, v2, v4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v5, p0, Lcom/bytedance/sdk/component/utils/i;->h:[F

    aget v5, v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-boolean v6, p0, Lcom/bytedance/sdk/component/utils/i;->er:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/bytedance/sdk/component/utils/i;->wn:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/bytedance/sdk/component/utils/i;->j:F

    invoke-direct {p0, v0, v6}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v6, p0, Lcom/bytedance/sdk/component/utils/i;->nh:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/bytedance/sdk/component/utils/i;->vf:F

    invoke-direct {p0, v2, v6}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-boolean v6, p0, Lcom/bytedance/sdk/component/utils/i;->ob:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/bytedance/sdk/component/utils/i;->l:F

    invoke-direct {p0, v5, v6}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-eqz v5, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->h:[F

    aput v1, v0, v3

    aput v1, v0, v4

    aput v1, v0, v7

    goto :goto_3

    :cond_4
    iget v6, p0, Lcom/bytedance/sdk/component/utils/i;->kk:F

    invoke-direct {p0, v0, v6}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->kk:F

    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->kk:F

    invoke-direct {p0, v5, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->h:[F

    aput v1, v0, v3

    aput v1, v0, v4

    aput v1, v0, v7

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/bytedance/sdk/component/utils/i;->mn:J

    sub-long/2addr v0, v5

    iget-wide v5, p0, Lcom/bytedance/sdk/component/utils/i;->dq:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    invoke-interface {v0, v7}, Lcom/bytedance/sdk/component/utils/i$dq;->dq(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->mn:J

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->mp:Lcom/bytedance/sdk/component/utils/i$d;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/i;->h:[F

    aget v2, v1, v3

    aget v3, v1, v4

    aget v1, v1, v7

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/utils/i$d;->dq(FFF)V

    :cond_7
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->kx:F

    return-void
.end method

.method private d(ZLandroid/hardware/SensorEvent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 p2, 0x0

    aget p2, p1, p2

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(FI)I

    move-result p2

    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/component/utils/i;->dq(FI)I

    move-result v1

    const/4 v2, 0x2

    aget p1, p1, v2

    iget v2, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/component/utils/i;->dq(FI)I

    move-result p1

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/utils/i;->d(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(IIIZ)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->ig()V

    return-void

    :cond_1
    iget v2, p0, Lcom/bytedance/sdk/component/utils/i;->vw:I

    if-ne v2, v0, :cond_2

    iput p2, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iput v1, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    return-void

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    or-int/2addr p2, v0

    iput p2, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    or-int/2addr p2, v1

    iput p2, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    return-void
.end method

.method private d(FF)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(IIIZ)Z
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->ds:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    invoke-direct {p0, p1, p4}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p1

    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    invoke-direct {p0, p2, p4}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p2

    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p3

    goto :goto_0

    :cond_0
    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->uh:I

    invoke-direct {p0, p1, p4, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p1

    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->xz:I

    invoke-direct {p0, p2, p4, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p2

    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->yy:I

    invoke-direct {p0, p3, p4, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p3

    :goto_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    return v1

    :cond_3
    if-eqz p4, :cond_5

    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    invoke-direct {p0, p1, p4}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    invoke-direct {p0, p3, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v3

    :cond_5
    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->uh:I

    invoke-direct {p0, p1, p4, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iget p4, p0, Lcom/bytedance/sdk/component/utils/i;->xz:I

    invoke-direct {p0, p2, p1, p4}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->yy:I

    invoke-direct {p0, p3, p1, p2}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v3

    :cond_7
    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    if-eqz p4, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p1

    return p1

    :cond_8
    iget p3, p0, Lcom/bytedance/sdk/component/utils/i;->uh:I

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p1

    return p1

    :cond_9
    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    if-eqz p4, :cond_a

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p1

    return p1

    :cond_a
    iget p3, p0, Lcom/bytedance/sdk/component/utils/i;->xz:I

    invoke-direct {p0, p2, p1, p3}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p1

    return p1

    :cond_b
    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    if-eqz p4, :cond_c

    invoke-direct {p0, p3, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result p1

    return p1

    :cond_c
    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->yy:I

    invoke-direct {p0, p3, p1, p2}, Lcom/bytedance/sdk/component/utils/i;->dq(III)Z

    move-result p1

    return p1
.end method

.method private dq(D)F
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    :cond_0
    const-wide/high16 p1, 0x4049000000000000L    # 50.0

    :cond_1
    double-to-float p1, p1

    return p1
.end method

.method private dq(FFF)F
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private dq(FI)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/utils/i;->iw(F)I

    move-result p1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method private dq(FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float p1, p1, p4

    add-float/2addr p1, v2

    aput p1, v0, v1

    const/4 p1, 0x1

    aget v1, v0, p1

    mul-float p2, p2, p4

    add-float/2addr p2, v1

    aput p2, v0, p1

    const/4 p1, 0x2

    aget p2, v0, p1

    mul-float p3, p3, p4

    add-float/2addr p3, p2

    aput p3, v0, p1

    return-void
.end method

.method private dq(IIIZ)V
    .locals 0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->uh:I

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->xz:I

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->yy:I

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    if-nez p2, :cond_2

    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    :cond_2
    iput p2, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    if-nez p3, :cond_3

    iget p3, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    :cond_3
    iput p3, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    return-void
.end method

.method private dq(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->ji:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v2, v2, v7

    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v8, v0

    long-to-float v0, v8

    const v1, 0x3089705f    # 1.0E-9f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->bl:F

    const/4 v8, 0x0

    cmpl-float v9, v1, v8

    if-eqz v9, :cond_2

    invoke-direct {p0, v1, v4}, Lcom/bytedance/sdk/component/utils/i;->d(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->bl:F

    invoke-direct {p0, v1, v6}, Lcom/bytedance/sdk/component/utils/i;->d(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->bl:F

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/component/utils/i;->d(FF)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4, v6, v2, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(FFFF)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->ia()V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->ha:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/bytedance/sdk/component/utils/i;->op:F

    cmpg-float v1, v8, v1

    if-ltz v1, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->ia()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4, v6, v2, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(FFFF)V

    :goto_1
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->kk:F

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/utils/i;->p(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->mp:Lcom/bytedance/sdk/component/utils/i$d;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    aget v2, v1, v3

    aget v3, v1, v5

    aget v1, v1, v7

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/utils/i$d;->dq(FFF)V

    :cond_4
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->ji:J

    return-void
.end method

.method private dq(ZD)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->no()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->ig()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->i:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->k:Z

    double-to-float p1, p2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/utils/i;->s(F)V

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->k:Z

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->i:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1f4

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->le:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->mp()V

    :cond_2
    return-void
.end method

.method private dq(ZLandroid/hardware/SensorEvent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 p2, 0x0

    aget v0, p1, p2

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(FI)I

    move-result v0

    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/component/utils/i;->dq(FI)I

    move-result v2

    const/4 v3, 0x2

    aget p1, p1, v3

    iget v3, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    invoke-direct {p0, p1, v3}, Lcom/bytedance/sdk/component/utils/i;->dq(FI)I

    move-result p1

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/bytedance/sdk/component/utils/i;->d(IIIZ)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(IIIZ)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->ig()V

    return-void

    :cond_1
    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    or-int/2addr p2, v0

    iput p2, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->uh:I

    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->uh:I

    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    or-int/2addr p2, v2

    iput p2, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/bytedance/sdk/component/utils/i;->xz:I

    :goto_1
    iput v2, p0, Lcom/bytedance/sdk/component/utils/i;->xz:I

    iget p2, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    or-int/2addr p2, p1

    iput p2, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->yy:I

    :goto_2
    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->yy:I

    return-void
.end method

.method private dq(FF)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq(II)Z
    .locals 0

    or-int/2addr p1, p2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq(III)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    or-int/2addr p1, p3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq(ZZZZ)Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    aput v1, p1, v3

    aput v1, p1, v2

    aput v1, p1, v0

    return v2

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    aget p1, p1, v3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/utils/i;->iw(F)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    aget v4, v4, v2

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/component/utils/i;->iw(F)I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz p4, :cond_3

    iget-object v5, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    aget v5, v5, v0

    invoke-direct {p0, v5}, Lcom/bytedance/sdk/component/utils/i;->iw(F)I

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    aput v1, v6, v3

    aput v1, v6, v2

    aput v1, v6, v0

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    invoke-direct {p0, v4, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    invoke-direct {p0, v5, v0}, Lcom/bytedance/sdk/component/utils/i;->dq(II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->vw:I

    if-ne v0, v2, :cond_6

    if-nez p2, :cond_5

    if-nez p3, :cond_5

    if-eqz p4, :cond_7

    :cond_5
    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iput v4, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iput v5, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1, v4, v5, v3}, Lcom/bytedance/sdk/component/utils/i;->dq(IIIZ)V

    :cond_7
    :goto_3
    return v3

    :cond_8
    :goto_4
    invoke-direct {p0, p1, v4, v5, v2}, Lcom/bytedance/sdk/component/utils/i;->dq(IIIZ)V

    return v2
.end method

.method private ia()V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->ir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    :cond_0
    return-void
.end method

.method private ig()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/utils/i$dq;->dq(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->d:J

    return-void
.end method

.method private iw(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method private iw()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/i;->q:Landroid/hardware/Sensor;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->q:Landroid/hardware/Sensor;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/i;->q:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->kk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1
.end method

.method private kk()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->le:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->k:Z

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->uh:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->xz:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->yy:I

    return-void
.end method

.method private mn()Z
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/bytedance/sdk/component/utils/i;->gh:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/i;->jy:Landroid/hardware/Sensor;

    if-nez v2, :cond_1

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->jy:Landroid/hardware/Sensor;

    :cond_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/utils/i;->iw:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/i;->jy:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->gh:I

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->f:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->f:Landroid/hardware/Sensor;

    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->n:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/bytedance/sdk/component/utils/i;->gh:I

    if-eq v2, v4, :cond_5

    if-ne v2, v5, :cond_7

    :cond_5
    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->ha:F

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->fw:Landroid/hardware/Sensor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->fw:Landroid/hardware/Sensor;

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/i;->fw:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    move v1, v0

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/i;->f:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    move v1, v0

    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1
.end method

.method private mp()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/utils/i$dq;->dq(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->d:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->k:Z

    return-void
.end method

.method private no()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->cd:F

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->ia:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->t:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->gx:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->by:I

    return-void
.end method

.method private p(F)V
    .locals 9

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->gh:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    aget v1, v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    aget v4, v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/component/utils/i;->u:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-boolean v7, p0, Lcom/bytedance/sdk/component/utils/i;->er:Z

    if-eqz v7, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->wn:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->j:F

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/utils/i;->nh:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->vf:F

    invoke-direct {p0, v4, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-boolean v4, p0, Lcom/bytedance/sdk/component/utils/i;->ob:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/bytedance/sdk/component/utils/i;->l:F

    invoke-direct {p0, v5, v4}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-nez p1, :cond_4

    if-nez v1, :cond_4

    if-eqz v2, :cond_7

    :cond_4
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/bytedance/sdk/component/utils/i;->dq(ZZZZ)Z

    move-result v3

    goto :goto_4

    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v1

    invoke-direct {p0, v4, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result v2

    invoke-direct {p0, v5, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(FF)Z

    move-result p1

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(ZZZZ)Z

    move-result v3

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/component/utils/i;->mn:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bytedance/sdk/component/utils/i;->dq:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    invoke-interface {p1, v6}, Lcom/bytedance/sdk/component/utils/i$dq;->dq(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->mn:J

    :cond_8
    return-void
.end method

.method private s(F)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/component/utils/i;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->le:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->mp()V

    return-void

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->cd:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->le:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->mp()V

    :cond_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->kk:F

    return-void
.end method

.method public d(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/i;->f:Landroid/hardware/Sensor;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->f:Landroid/hardware/Sensor;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->f:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->gh:I

    return-void

    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->gh:I

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->wp:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->vw:I

    return-void

    :cond_1
    const-string v1, "double_direct_match"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->vw:I

    return-void
.end method

.method public dq(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->ia:F

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->o:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/utils/i$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->mp:Lcom/bytedance/sdk/component/utils/i$d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/utils/i$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/utils/i$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->cv:Lcom/bytedance/sdk/component/utils/i$ox;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 6

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->wp:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ce:Lorg/json/JSONObject;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->wn:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->nh:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->ob:Z

    goto :goto_0

    :cond_1
    const-string v1, "x_threshold"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->wn:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ce:Lorg/json/JSONObject;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/bytedance/sdk/component/utils/i;->dq(D)F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->j:F

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ce:Lorg/json/JSONObject;

    const-string v1, "y_threshold"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->nh:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ce:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/bytedance/sdk/component/utils/i;->dq(D)F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->vf:F

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ce:Lorg/json/JSONObject;

    const-string v1, "z_threshold"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->ob:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ce:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/component/utils/i;->dq(D)F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->l:F

    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->wn:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->nh:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->ob:Z

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->er:Z

    return-void
.end method

.method public dq(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " m:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/utils/i;->dc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " equ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xgcc"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/utils/i;->dc:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->jw:Landroid/content/Context;

    if-eqz p1, :cond_2

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    :cond_2
    return-void
.end method

.method public dq()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->no:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->v:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->wp:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->iw()Z

    move-result v0

    return v0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/i;->mn()Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->cv:Lcom/bytedance/sdk/component/utils/i$ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/utils/i$ox;->dq()V

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x2

    aget v7, v1, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/4 v8, 0x3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-eq v0, v4, :cond_f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_c

    const/16 v3, 0xa

    if-eq v0, v3, :cond_b

    const/16 p1, 0xf

    if-eq v0, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    aget p1, v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aget v0, v1, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aget v3, v1, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/bytedance/sdk/component/utils/i;->mp:Lcom/bytedance/sdk/component/utils/i$d;

    if-eqz v5, :cond_2

    aget v7, v1, v2

    aget v8, v1, v4

    aget v1, v1, v6

    invoke-interface {v5, v7, v8, v1}, Lcom/bytedance/sdk/component/utils/i$d;->dq(FFF)V

    :cond_2
    const/4 v1, 0x0

    cmpl-float v5, p1, v1

    if-nez v5, :cond_3

    cmpl-float v5, v0, v1

    if-nez v5, :cond_3

    cmpl-float v1, v3, v1

    if-nez v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/utils/i;->iw:Z

    if-nez v1, :cond_4

    iput-boolean v4, p0, Lcom/bytedance/sdk/component/utils/i;->iw:Z

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->ox:F

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->p:F

    iput v3, p0, Lcom/bytedance/sdk/component/utils/i;->s:F

    return-void

    :cond_4
    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->ox:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float p1, p1, v1

    iget v5, p0, Lcom/bytedance/sdk/component/utils/i;->p:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v1

    iget v5, p0, Lcom/bytedance/sdk/component/utils/i;->s:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v1

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/utils/i;->er:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/utils/i;->wn:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->j:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/utils/i;->nh:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->vf:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/utils/i;->ob:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->l:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    if-nez p1, :cond_8

    if-nez v0, :cond_8

    if-eqz v4, :cond_18

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    if-eqz p1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/bytedance/sdk/component/utils/i;->mn:J

    sub-long/2addr v0, v3

    iget-wide v3, p0, Lcom/bytedance/sdk/component/utils/i;->dq:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_18

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    invoke-interface {p1, v6}, Lcom/bytedance/sdk/component/utils/i$dq;->dq(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->mn:J

    iput-boolean v2, p0, Lcom/bytedance/sdk/component/utils/i;->iw:Z

    return-void

    :cond_9
    iget v1, p0, Lcom/bytedance/sdk/component/utils/i;->kk:F

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_a

    cmpl-float p1, v0, v1

    if-gtz p1, :cond_a

    cmpl-float p1, v3, v1

    if-lez p1, :cond_18

    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    if-eqz p1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/bytedance/sdk/component/utils/i;->mn:J

    sub-long/2addr v0, v3

    iget-wide v3, p0, Lcom/bytedance/sdk/component/utils/i;->dq:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_18

    iget-object p1, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    invoke-interface {p1, v6}, Lcom/bytedance/sdk/component/utils/i$dq;->dq(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/utils/i;->mn:J

    iput-boolean v2, p0, Lcom/bytedance/sdk/component/utils/i;->iw:Z

    return-void

    :cond_b
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v2

    aget v1, p1, v4

    aget p1, p1, v6

    float-to-double v2, v0

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->op:F

    return-void

    :cond_c
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->gh:I

    if-ne v0, v8, :cond_d

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/utils/i;->d(Landroid/hardware/SensorEvent;)V

    return-void

    :cond_d
    if-eq v0, v6, :cond_e

    if-ne v0, v3, :cond_18

    :cond_e
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(Landroid/hardware/SensorEvent;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/i;->ig:Lcom/bytedance/sdk/component/utils/i$dq;

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v11, p0, Lcom/bytedance/sdk/component/utils/i;->d:J

    sub-long/2addr v0, v11

    iget-wide v11, p0, Lcom/bytedance/sdk/component/utils/i;->dq:J

    cmp-long v13, v0, v11

    if-gtz v13, :cond_10

    goto/16 :goto_3

    :cond_10
    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->o:I

    if-eq v0, v4, :cond_16

    if-eq v0, v6, :cond_14

    if-eq v0, v8, :cond_12

    invoke-direct {p0, v3, v5, v7}, Lcom/bytedance/sdk/component/utils/i;->dq(FFF)F

    move-result p1

    float-to-double v0, p1

    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->ia:F

    float-to-double v5, p1

    cmpl-double p1, v0, v5

    if-lez p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(ZD)V

    return-void

    :cond_12
    float-to-double v0, v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v0

    float-to-double v0, v7

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v3, p0, Lcom/bytedance/sdk/component/utils/i;->ia:F

    float-to-double v5, v3

    cmpl-double v3, v0, v5

    if-lez v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/component/utils/i;->dq(ZLandroid/hardware/SensorEvent;)V

    return-void

    :cond_14
    float-to-double v0, v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v0

    float-to-double v0, v7

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v3, p0, Lcom/bytedance/sdk/component/utils/i;->ia:F

    float-to-double v5, v3

    cmpl-double v3, v0, v5

    if-lez v3, :cond_15

    const/4 v2, 0x1

    :cond_15
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/component/utils/i;->d(ZLandroid/hardware/SensorEvent;)V

    return-void

    :cond_16
    float-to-double v0, v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v0

    float-to-double v0, v7

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget p1, p0, Lcom/bytedance/sdk/component/utils/i;->ia:F

    float-to-double v5, p1

    cmpl-double p1, v0, v5

    if-lez p1, :cond_17

    const/4 v2, 0x1

    :cond_17
    invoke-direct {p0, v2, v0, v1}, Lcom/bytedance/sdk/component/utils/i;->dq(ZD)V

    :cond_18
    :goto_3
    return-void
.end method

.method public ox()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->v:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    return-void
.end method

.method public ox(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->cd:F

    return-void
.end method

.method public ox(Lorg/json/JSONObject;)V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/utils/i;->wp:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->ds:I

    iput v0, p0, Lcom/bytedance/sdk/component/utils/i;->vw:I

    return-void

    :cond_1
    const-string v1, "double_direct_conf"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/component/utils/i;->ds:I

    const-string v1, "double_direct_match"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/utils/i;->vw:I

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->v:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/i;->le:Z

    return v0
.end method

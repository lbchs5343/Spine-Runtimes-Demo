.class public final Lcom/bytedance/sdk/component/ox/d/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/p$dq;
    }
.end annotation


# static fields
.field public static final d:Lcom/bytedance/sdk/component/ox/d/p;

.field public static final dq:Lcom/bytedance/sdk/component/ox/d/p;


# instance fields
.field private final ia:Z

.field private final ig:I

.field private final iw:I

.field private final jy:Z

.field private final kk:Z

.field private final mn:I

.field private final mp:Z

.field private final no:I

.field private final o:Z

.field ox:Ljava/lang/String;

.field private final p:Z

.field private final q:Z

.field private final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/p$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/p$dq;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p$dq;->dq()Lcom/bytedance/sdk/component/ox/d/p$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p$dq;->ox()Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/p;->dq:Lcom/bytedance/sdk/component/ox/d/p;

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/p$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/d/p$dq;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p$dq;->d()Lcom/bytedance/sdk/component/ox/d/p$dq;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/ox/d/p$dq;->dq(ILjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ox/d/p$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/p$dq;->ox()Lcom/bytedance/sdk/component/ox/d/p;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/d/p;->d:Lcom/bytedance/sdk/component/ox/d/p;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/p$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/p$dq;->dq:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->p:Z

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/p$dq;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->s:Z

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/p$dq;->ox:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->iw:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->mn:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->kk:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->o:Z

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/p$dq;->p:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->no:I

    iget v0, p1, Lcom/bytedance/sdk/component/ox/d/p$dq;->s:I

    iput v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->ig:I

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/p$dq;->iw:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->mp:Z

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/d/p$dq;->mn:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->q:Z

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ox/d/p$dq;->ia:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/p;->jy:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/p;->p:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/p;->s:Z

    iput p3, p0, Lcom/bytedance/sdk/component/ox/d/p;->iw:I

    iput p4, p0, Lcom/bytedance/sdk/component/ox/d/p;->mn:I

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/ox/d/p;->ia:Z

    iput-boolean p6, p0, Lcom/bytedance/sdk/component/ox/d/p;->kk:Z

    iput-boolean p7, p0, Lcom/bytedance/sdk/component/ox/d/p;->o:Z

    iput p8, p0, Lcom/bytedance/sdk/component/ox/d/p;->no:I

    iput p9, p0, Lcom/bytedance/sdk/component/ox/d/p;->ig:I

    iput-boolean p10, p0, Lcom/bytedance/sdk/component/ox/d/p;->mp:Z

    iput-boolean p11, p0, Lcom/bytedance/sdk/component/ox/d/p;->q:Z

    iput-boolean p12, p0, Lcom/bytedance/sdk/component/ox/d/p;->jy:Z

    iput-object p13, p0, Lcom/bytedance/sdk/component/ox/d/p;->ox:Ljava/lang/String;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/d/cd;)Lcom/bytedance/sdk/component/ox/d/p;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd;->dq()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v6, v1, :cond_12

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/component/ox/d/cd;->dq(I)Ljava/lang/String;

    move-result-object v2

    const/16 v22, 0x1

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/component/ox/d/cd;->d(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cache-Control"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v8, :cond_0

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    move-object v8, v4

    goto :goto_2

    :cond_1
    const-string v5, "Pragma"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_1

    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_11

    const-string v5, "=,;"

    invoke-static {v4, v2, v5}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->dq(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x2c

    if-eq v3, v0, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->dq(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    const-string v3, "\""

    invoke-static {v4, v0, v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->dq(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3
    const-string v3, ",;"

    invoke-static {v4, v0, v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->dq(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v3, v5

    const/4 v0, 0x0

    :goto_5
    const-string v5, "no-cache"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v9, 0x1

    :cond_5
    :goto_6
    move-object/from16 v0, p0

    move v2, v3

    goto :goto_3

    :cond_6
    const-string v5, "no-store"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    const-string v5, "max-age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->d(Ljava/lang/String;I)I

    move-result v11

    goto :goto_6

    :cond_8
    const-string v5, "s-maxage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->d(Ljava/lang/String;I)I

    move-result v12

    goto :goto_6

    :cond_9
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v14, 0x1

    goto :goto_6

    :cond_b
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v15, 0x1

    goto :goto_6

    :cond_c
    const-string v5, "max-stale"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->d(Ljava/lang/String;I)I

    move-result v16

    goto :goto_6

    :cond_d
    const-string v5, "min-fresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lcom/bytedance/sdk/component/ox/d/dq/ox/s;->d(Ljava/lang/String;I)I

    move-result v17

    goto :goto_6

    :cond_e
    const/4 v5, -0x1

    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v18, 0x1

    goto :goto_6

    :cond_f
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v19, 0x1

    goto :goto_6

    :cond_10
    const-string v0, "immutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v20, 0x1

    goto/16 :goto_6

    :cond_11
    const/4 v5, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_12
    if-nez v7, :cond_13

    const/16 v21, 0x0

    goto :goto_7

    :cond_13
    move-object/from16 v21, v8

    :goto_7
    new-instance v8, Lcom/bytedance/sdk/component/ox/d/p;

    invoke-direct/range {v8 .. v21}, Lcom/bytedance/sdk/component/ox/d/p;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v8
.end method

.method private no()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->p:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->s:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->iw:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->iw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->mn:I

    if-eq v1, v3, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->mn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->ia:Z

    if-eqz v1, :cond_4

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->kk:Z

    if-eqz v1, :cond_5

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->o:Z

    if-eqz v1, :cond_6

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->no:I

    if-eq v1, v3, :cond_7

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->no:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->ig:I

    if-eq v1, v3, :cond_8

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->ig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->mp:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->q:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/p;->jy:Z

    if-eqz v1, :cond_b

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    return-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->s:Z

    return v0
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->p:Z

    return v0
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->ig:I

    return v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->o:Z

    return v0
.end method

.method public kk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->mp:Z

    return v0
.end method

.method public mn()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->no:I

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->jy:Z

    return v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->iw:I

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->ia:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->kk:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->ox:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/p;->no()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/p;->ox:Ljava/lang/String;

    return-object v0
.end method

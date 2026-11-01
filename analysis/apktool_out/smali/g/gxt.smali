.class public final Lg/gxt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/etl;


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/gxt;->d:Ljava/lang/Object;

    iput-object p1, p0, Lg/gxt;->c:Ljava/lang/Object;

    const/4 v0, -0x1

    const-string v1, "access_total_times"

    invoke-static {p1, v0, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lg/gxt;->a:I

    const-string v1, "TrineaAndroidCommon"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "access_success_times"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lg/gxt;->b:I

    const-string v1, "access_sleep_time"

    invoke-static {p1, v0, v1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    iget v3, p0, Lg/gxt;->a:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    iget v4, p0, Lg/gxt;->b:I

    int-to-float v4, v4

    int-to-float v3, v3

    const v5, 0x3f666666    # 0.9f

    mul-float v3, v3, v5

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    const/16 v3, 0x32

    if-lt v0, v3, :cond_1

    move v2, v0

    :cond_1
    iput v2, p0, Lg/gxt;->f:I

    invoke-static {p1, v2, v1}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lg/brr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/gxt;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lg/gxt;->a:I

    iput v0, p0, Lg/gxt;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/gxt;->d:Ljava/lang/Object;

    iput-object p1, p0, Lg/gxt;->c:Ljava/lang/Object;

    return-void
.end method

.method public static i(Ljava/util/ArrayList;Ljava/util/List;)Ljava/lang/String;
    .locals 14

    invoke-static {p1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Lg/gpu;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lg/gpu;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_6

    const/4 v1, 0x1

    move-object v1, v8

    move-wide v3, v10

    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v6, v8}, Lg/gpu;->o(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v10

    int-to-double v12, v9

    div-double/2addr v10, v12

    :goto_2
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-gez v9, :cond_4

    move-object v1, v8

    move-wide v3, v10

    goto :goto_1

    :cond_9
    :goto_3
    invoke-static {}, Lg/byh;->bc()Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, ","

    invoke-static {p0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    :cond_a
    :goto_4
    return-object v1
.end method


# virtual methods
.method public e(II)V
    .locals 4

    iget v0, p0, Lg/gxt;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lg/gxt;->a:I

    if-lt p1, v0, :cond_0

    iget v2, p0, Lg/gxt;->b:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int/2addr v2, p2

    iput v2, p0, Lg/gxt;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lg/gxt;->a:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/gxt;->j()V

    iput p1, p0, Lg/gxt;->a:I

    iput p2, p0, Lg/gxt;->b:I

    iput v1, p0, Lg/gxt;->f:I

    return-void
.end method

.method public g(II)V
    .locals 3

    iget v0, p0, Lg/gxt;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lg/gxt;->a:I

    if-lt v0, p1, :cond_0

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    iget v0, p0, Lg/gxt;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lg/gxt;->b:I

    iput p1, p0, Lg/gxt;->a:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/gxt;->j()V

    iput p1, p0, Lg/gxt;->a:I

    iput p2, p0, Lg/gxt;->b:I

    iput v1, p0, Lg/gxt;->f:I

    return-void
.end method

.method public h(IILjava/lang/Object;)V
    .locals 5

    iget v0, p0, Lg/gxt;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lg/gxt;->a:I

    iget v2, p0, Lg/gxt;->b:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_0

    add-int v3, p1, p2

    if-lt v3, v0, :cond_0

    iget-object v4, p0, Lg/gxt;->d:Ljava/lang/Object;

    if-ne v4, p3, :cond_0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lg/gxt;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lg/gxt;->a:I

    sub-int/2addr p1, p2

    iput p1, p0, Lg/gxt;->b:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/gxt;->j()V

    iput p1, p0, Lg/gxt;->a:I

    iput p2, p0, Lg/gxt;->b:I

    iput-object p3, p0, Lg/gxt;->d:Ljava/lang/Object;

    iput v1, p0, Lg/gxt;->f:I

    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lg/gxt;->c:Ljava/lang/Object;

    check-cast v0, Lg/etl;

    iget v1, p0, Lg/gxt;->f:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lg/gxt;->a:I

    iget v2, p0, Lg/gxt;->b:I

    iget-object v3, p0, Lg/gxt;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lg/etl;->h(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lg/gxt;->a:I

    iget v2, p0, Lg/gxt;->b:I

    invoke-interface {v0, v1, v2}, Lg/etl;->g(II)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lg/gxt;->a:I

    iget v2, p0, Lg/gxt;->b:I

    invoke-interface {v0, v1, v2}, Lg/etl;->e(II)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/gxt;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lg/gxt;->f:I

    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lg/gxt;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    if-eqz p1, :cond_0

    iget p1, p0, Lg/gxt;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/gxt;->b:I

    const-string v1, "access_success_times"

    invoke-static {v0, p1, v1}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    iget p1, p0, Lg/gxt;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/gxt;->a:I

    const-string v1, "access_total_times"

    invoke-static {v0, p1, v1}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

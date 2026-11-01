.class public final Lg/lv;
.super Lg/fdk;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public final c:Z

.field public final synthetic d:Lg/auf;


# direct methods
.method public constructor <init>(Lg/auf;ZZ)V
    .locals 0

    iput-object p1, p0, Lg/lv;->d:Lg/auf;

    const-string p1, "log"

    invoke-direct {p0, p1}, Lg/fdk;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lg/lv;->b:Z

    iput-boolean p3, p0, Lg/lv;->c:Z

    return-void
.end method


# virtual methods
.method public final e(Lg/dpa;Ljava/util/List;)Lg/gey;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const-string v4, "log"

    invoke-static {v3, v4, v2}, Lg/byh;->bf(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Lg/gey;->o:Lg/gdz;

    iget-object v7, v0, Lg/lv;->d:Lg/auf;

    if-ne v4, v3, :cond_0

    iget-object v3, v7, Lg/auf;->c:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Lg/bgb;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v1, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v1

    invoke-interface {v1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-boolean v11, v0, Lg/lv;->b:Z

    iget-boolean v12, v0, Lg/lv;->c:Z

    const/4 v8, 0x3

    invoke-virtual/range {v7 .. v12}, Lg/bgb;->e(ILjava/lang/String;Ljava/util/List;ZZ)V

    return-object v6

    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gey;

    iget-object v5, v1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v5, Lg/ffr;

    iget-object v8, v1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v8, Lg/ffr;

    invoke-virtual {v5, v1, v4}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v4

    invoke-interface {v4}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lg/byh;->az(D)I

    move-result v4

    const/4 v5, 0x5

    const/4 v9, 0x2

    if-eq v4, v9, :cond_4

    const/4 v10, 0x3

    if-eq v4, v10, :cond_3

    if-eq v4, v5, :cond_2

    const/4 v11, 0x6

    if-eq v4, v11, :cond_1

    const/4 v12, 0x3

    goto :goto_0

    :cond_1
    const/4 v12, 0x2

    goto :goto_0

    :cond_2
    const/4 v12, 0x5

    goto :goto_0

    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x4

    const/4 v12, 0x4

    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    invoke-virtual {v8, v1, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    invoke-interface {v3}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v9, :cond_5

    iget-object v1, v7, Lg/auf;->c:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lg/bgb;

    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-boolean v15, v0, Lg/lv;->b:Z

    iget-boolean v1, v0, Lg/lv;->c:Z

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lg/bgb;->e(ILjava/lang/String;Ljava/util/List;ZZ)V

    return-object v6

    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v9, v3, :cond_6

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/gey;

    invoke-virtual {v8, v1, v3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v3

    invoke-interface {v3}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, v7, Lg/auf;->c:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lg/bgb;

    iget-boolean v15, v0, Lg/lv;->b:Z

    iget-boolean v1, v0, Lg/lv;->c:Z

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lg/bgb;->e(ILjava/lang/String;Ljava/util/List;ZZ)V

    return-object v6
.end method

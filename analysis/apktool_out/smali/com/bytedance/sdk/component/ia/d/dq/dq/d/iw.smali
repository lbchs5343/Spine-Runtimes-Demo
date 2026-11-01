.class public Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;
.super Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;


# instance fields
.field protected d:Lcom/bytedance/sdk/component/ia/dq/s;

.field protected ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/content/Context;

.field private s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/d/p/d/dq;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->ox()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/s;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->ox()Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    :cond_1
    return-void
.end method

.method private static dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static dq(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string v0, " IN "

    goto :goto_0

    :cond_0
    const-string v0, " NOT IN "

    :goto_0
    if-eqz p3, :cond_1

    const-string p3, " OR "

    goto :goto_1

    :cond_1
    const-string p3, " AND "

    :goto_1
    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v2, v1, p2

    if-nez v2, :cond_2

    div-int v2, v1, p2

    goto :goto_2

    :cond_2
    div-int v2, v1, p2

    add-int/lit8 v2, v2, 0x1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_4

    mul-int v5, v4, p2

    add-int v6, v5, p2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-string v7, "\',\'"

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v6, "(\'"

    invoke-static {v3, p0, v0, v6, v5}, Lg/awf;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "\')"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "(\'\')"

    invoke-static {p0, v0, p2}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dq(IJ)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    const-string v1, "gen_time <? OR retry >?"

    invoke-static {p2, p3, v1, p1, v0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d;->delete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)I

    return-void
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "CREATE TABLE IF NOT EXISTS "

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)"

    invoke-static {v0, p0, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private p(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/d;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET retry = retry+1 WHERE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const-string v3, "id"

    invoke-static {v3, v0, v1, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    return-void
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ALTER TABLE "

    const-string v1, " ADD COLUMN encrypt INTEGER default 0"

    invoke-static {v0, p0, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public delete(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/d;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->kk(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const-string v3, "id"

    invoke-static {v3, v0, v1, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, p1, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq(Ljava/util/List;)V

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "list is empty"

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->d()Lcom/bytedance/sdk/component/ia/dq/iw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/iw;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(ILjava/lang/String;I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v3, "ad_extra_data"

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/component/ia/d/d/dq;->dq(ILandroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/s;)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " query db max :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " limit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const-wide/16 v6, 0x64

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move-wide v4, v6

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " DESC limit "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    move-result-object v8

    const-string v5, "id"

    const-string v6, "value"

    const-string v9, "encrypt"

    const-string v10, "retry"

    move-object v11, v9

    filled-new-array {v5, v6, v11, v10}, [Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    iget-object v15, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    move-object v12, v10

    const/4 v10, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 p1, v4

    move-object/from16 v4, v16

    move-object/from16 v2, v17

    invoke-static/range {v7 .. v15}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_c

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v13

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v15, v12, :cond_2

    invoke-interface {v13, v14}, Lcom/bytedance/sdk/component/ia/dq/p;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v18, v13

    goto/16 :goto_6

    :cond_2
    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v8, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v15, 0x64

    if-le v9, v15, :cond_5

    :cond_4
    move-object/from16 v8, p1

    goto/16 :goto_8

    :cond_5
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v15, :cond_6

    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "retry_count"

    invoke-virtual {v15, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "db_rd"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v13

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v15, v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v8, p1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v18, v13

    goto :goto_3

    :cond_6
    move-object/from16 v18, v13

    :goto_4
    new-instance v12, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;

    invoke-direct {v12, v0, v9}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox()B

    move-result v0

    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->dq(B)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d()B

    move-result v0

    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;->d(B)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v9, v12, v0, v8}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/ia/d/p/dq/dq;Lcom/bytedance/sdk/component/ia/dq/s;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v8, p1

    :try_start_4
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_5
    move-object/from16 p1, v8

    move-object/from16 v13, v18

    const/4 v12, 0x1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v9}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    :goto_7
    move/from16 v2, p3

    goto :goto_9

    :goto_8
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iget-object v0, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox(Ljava/util/List;)Ljava/lang/String;

    iget-object v0, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    move/from16 v2, p3

    if-eq v2, v11, :cond_8

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    :cond_8
    const-wide/32 v2, 0x240c8400

    invoke-virtual {v1, v8, v10, v2, v3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(Ljava/util/List;IJ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_7

    :goto_9
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iget-object v3, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox(Ljava/util/List;)Ljava/lang/String;

    iget-object v3, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->ox:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_9
    if-eq v2, v11, :cond_a

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    :cond_a
    const-wide/32 v2, 0x240c8400

    invoke-virtual {v1, v8, v10, v2, v3}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(Ljava/util/List;IJ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_b
    throw v0

    :cond_c
    move-object/from16 v8, p1

    :catch_1
    :cond_d
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " query db actually size :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-object v8
.end method

.method public dq(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->d()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;IJ)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->p(Ljava/util/List;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->ox(Lcom/bytedance/sdk/component/ia/dq/d;)Z

    move-result p1

    return p1
.end method

.method public ox()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ox(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const-string v3, "id"

    invoke-static {v3, p1, v1, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->dq(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->gh()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/iw;->d:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ia/d/dq/dq/d/d;->dq(Ljava/util/List;)V

    return-object v0
.end method

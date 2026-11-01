.class public Lcom/bytedance/embedapplog/vw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/vw$dq;,
        Lcom/bytedance/embedapplog/vw$d;
    }
.end annotation


# static fields
.field static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/embedapplog/ds;",
            ">;"
        }
    .end annotation
.end field

.field public static final dq:[I

.field private static final iw:[Lcom/bytedance/embedapplog/ds;

.field static final ox:[Lcom/bytedance/embedapplog/vw$d;


# instance fields
.field private mn:Ljava/lang/String;

.field private final p:Lcom/bytedance/embedapplog/le;

.field private final s:Lcom/bytedance/embedapplog/vw$dq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/bytedance/embedapplog/vw;->dq:[I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/bytedance/embedapplog/vw;->d:Ljava/util/HashMap;

    new-instance v1, Lcom/bytedance/embedapplog/bu;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/bu;-><init>()V

    invoke-static {v1}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/ds;)V

    new-instance v1, Lcom/bytedance/embedapplog/jw;

    invoke-direct {v1, v0}, Lcom/bytedance/embedapplog/jw;-><init>(Z)V

    invoke-static {v1}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/ds;)V

    new-instance v1, Lcom/bytedance/embedapplog/ws;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/ws;-><init>()V

    invoke-static {v1}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/ds;)V

    new-instance v1, Lcom/bytedance/embedapplog/fd;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/fd;-><init>()V

    invoke-static {v1}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/ds;)V

    new-instance v1, Lcom/bytedance/embedapplog/ha;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/ha;-><init>()V

    new-instance v2, Lcom/bytedance/embedapplog/dc;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v3}, Lcom/bytedance/embedapplog/dc;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v3, Lcom/bytedance/embedapplog/cv;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, ""

    invoke-direct {v3, v6, v5}, Lcom/bytedance/embedapplog/cv;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v5, 0x3

    new-array v6, v5, [Lcom/bytedance/embedapplog/ds;

    aput-object v1, v6, v4

    aput-object v2, v6, v0

    const/4 v1, 0x2

    aput-object v3, v6, v1

    sput-object v6, Lcom/bytedance/embedapplog/vw;->iw:[Lcom/bytedance/embedapplog/ds;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v6, v2

    invoke-static {v3}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/ds;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/embedapplog/vw$d;

    invoke-direct {v2}, Lcom/bytedance/embedapplog/vw$d;-><init>()V

    new-instance v3, Lcom/bytedance/embedapplog/vw$d;

    invoke-direct {v3}, Lcom/bytedance/embedapplog/vw$d;-><init>()V

    new-instance v6, Lcom/bytedance/embedapplog/vw$d;

    invoke-direct {v6}, Lcom/bytedance/embedapplog/vw$d;-><init>()V

    new-array v5, v5, [Lcom/bytedance/embedapplog/vw$d;

    aput-object v2, v5, v4

    aput-object v3, v5, v0

    aput-object v6, v5, v1

    sput-object v5, Lcom/bytedance/embedapplog/vw;->ox:[Lcom/bytedance/embedapplog/vw$d;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/embedapplog/le;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/embedapplog/vw$dq;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/le;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const-string v4, "bd_embed_tea_agent.db"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/bytedance/embedapplog/vw$dq;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/vw;->s:Lcom/bytedance/embedapplog/vw$dq;

    iput-object p1, p0, Lcom/bytedance/embedapplog/vw;->p:Lcom/bytedance/embedapplog/le;

    return-void
.end method

.method private d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM page WHERE session_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "=\'"

    goto :goto_0

    :cond_0
    const-string p2, "!=\'"

    :goto_0
    const-string v1, "\'"

    invoke-static {p2, p1, v1, v0}, Lg/awf;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I
    .locals 12

    invoke-static {}, Lcom/bytedance/embedapplog/vw$d;->dq()V

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-ge v0, p1, :cond_0

    aput-object v11, p6, v0

    aput-wide v9, p7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    move v4, v0

    const/16 v3, 0xc8

    :cond_1
    :goto_1
    if-lez v3, :cond_2

    sget-object p1, Lcom/bytedance/embedapplog/vw;->iw:[Lcom/bytedance/embedapplog/ds;

    array-length p1, p1

    if-ge v4, p1, :cond_2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/embedapplog/vw;->dq(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IIZ[Lorg/json/JSONArray;[JI)V

    aget-object p1, v6, v4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    sub-int/2addr v3, p1

    sget-object v0, Lcom/bytedance/embedapplog/vw;->ox:[Lcom/bytedance/embedapplog/vw$d;

    aget-object v0, v0, v4

    iput p1, v0, Lcom/bytedance/embedapplog/vw$d;->ox:I

    if-lez v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v6, p6

    add-int/lit8 p1, v4, 0x1

    :goto_2
    array-length p2, v6

    if-ge p1, p2, :cond_3

    aput-object v11, v6, p1

    aput-wide v9, p7, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return v4
.end method

.method private dq(JI)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE pack SET _fail="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " WHERE _id="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dq(Lcom/bytedance/embedapplog/ds;Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/ds;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p1, "=\'"

    goto :goto_0

    :cond_0
    const-string p1, "!=\'"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND event_type=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' ORDER BY _id LIMIT "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dq(Ljava/lang/String;ILjava/lang/String;ZJ)Ljava/lang/String;
    .locals 2

    const-string v0, "DELETE FROM "

    const-string v1, " WHERE session_id"

    invoke-static {v0, p1, v1}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p4, :cond_0

    const-string p4, "=\'"

    goto :goto_0

    :cond_0
    const-string p4, "!=\'"

    :goto_0
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' AND event_type=\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' AND _id<="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dq(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM page WHERE session_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "=\'"

    goto :goto_0

    :cond_0
    const-string v1, "!=\'"

    :goto_0
    const-string v2, "\' ORDER BY "

    invoke-static {v1, p1, v2, v0}, Lg/awf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz p2, :cond_1

    const-string p1, "session_id,"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    const-string p2, "duration DESC LIMIT 500"

    invoke-static {v0, p1, p2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dq(Lcom/bytedance/embedapplog/jw;ZLcom/bytedance/embedapplog/ws;Lcom/bytedance/embedapplog/bu;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object/from16 v5, p5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v7, 0x3e8

    const/4 v11, 0x0

    :try_start_0
    iget-object v12, v2, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-direct {v1, v12, v3}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v13, Ljava/util/HashMap;

    const/16 v14, 0x8

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v14, 0x0

    move-object/from16 v17, v11

    move-object/from16 v18, v17

    const-wide/16 v15, 0x0

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v0, v12}, Lcom/bytedance/embedapplog/bu;->dq(Landroid/database/Cursor;)I

    sget-boolean v14, Lcom/bytedance/embedapplog/jo;->d:Z

    if-eqz v14, :cond_1

    const-string v14, "queryPage, "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_1
    iget-object v9, v0, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/bu;->o()Z

    move-result v10

    const/4 v14, 0x1

    if-nez v10, :cond_4

    iget-object v10, v0, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v14

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v9, v0, Lcom/bytedance/embedapplog/bu;->ig:J

    cmp-long v20, v9, v7

    if-ltz v20, :cond_3

    add-long/2addr v15, v9

    goto :goto_3

    :cond_3
    add-long/2addr v15, v7

    :goto_3
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/ds;->iw()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v9, v0, Lcom/bytedance/embedapplog/bu;->r:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v0, Lcom/bytedance/embedapplog/bu;->r:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v10, v0, Lcom/bytedance/embedapplog/ds;->iw:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v9

    goto :goto_6

    :cond_4
    if-eqz v9, :cond_6

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v9, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-lez v9, :cond_5

    iget-object v9, v0, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    invoke-virtual {v13, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v9, v0, Lcom/bytedance/embedapplog/bu;->q:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iput-wide v7, v0, Lcom/bytedance/embedapplog/bu;->ig:J

    add-long/2addr v15, v7

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/ds;->iw()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_7
    if-eqz v14, :cond_8

    iget-object v0, v2, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/bytedance/embedapplog/vw;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object/from16 v0, v17

    move-object/from16 v5, v18

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v17, v11

    :goto_5
    move-object/from16 v18, v17

    const-wide/16 v15, 0x0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v12, v11

    move-object/from16 v17, v12

    goto :goto_5

    :goto_6
    :try_start_5
    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v12, :cond_9

    goto :goto_4

    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_d

    cmp-long v9, v15, v7

    if-lez v9, :cond_a

    move-wide v7, v15

    :cond_a
    iput-wide v7, v4, Lcom/bytedance/embedapplog/ws;->ig:J

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    iput-object v3, v4, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    iget-wide v9, v2, Lcom/bytedance/embedapplog/ds;->d:J

    add-long/2addr v9, v7

    invoke-virtual {v4, v9, v10}, Lcom/bytedance/embedapplog/ds;->dq(J)V

    goto :goto_8

    :cond_b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/embedapplog/ds;->dq(J)V

    :goto_8
    iget-wide v7, v2, Lcom/bytedance/embedapplog/ds;->s:J

    iput-wide v7, v4, Lcom/bytedance/embedapplog/ds;->s:J

    iget-object v3, v2, Lcom/bytedance/embedapplog/ds;->iw:Ljava/lang/String;

    iput-object v3, v4, Lcom/bytedance/embedapplog/ds;->iw:Ljava/lang/String;

    iget-object v3, v2, Lcom/bytedance/embedapplog/ds;->mn:Ljava/lang/String;

    iput-object v3, v4, Lcom/bytedance/embedapplog/ds;->mn:Ljava/lang/String;

    iget-object v3, v2, Lcom/bytedance/embedapplog/ds;->ia:Ljava/lang/String;

    iput-object v3, v4, Lcom/bytedance/embedapplog/ds;->ia:Ljava/lang/String;

    iget-wide v7, v4, Lcom/bytedance/embedapplog/ds;->d:J

    iput-wide v7, v4, Lcom/bytedance/embedapplog/ws;->mp:J

    invoke-static {}, Lcom/bytedance/embedapplog/e;->p()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/bytedance/embedapplog/ds;->ox:J

    iput-object v11, v4, Lcom/bytedance/embedapplog/ws;->q:Ljava/lang/String;

    iget-object v3, v2, Lcom/bytedance/embedapplog/jw;->jy:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v0, v2, Lcom/bytedance/embedapplog/jw;->jy:Ljava/lang/String;

    iput-object v0, v4, Lcom/bytedance/embedapplog/ws;->q:Ljava/lang/String;

    goto :goto_9

    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iput-object v0, v4, Lcom/bytedance/embedapplog/ws;->q:Ljava/lang/String;

    iput-object v5, v4, Lcom/bytedance/embedapplog/ds;->iw:Ljava/lang/String;

    :cond_d
    :goto_9
    return-object v6

    :catchall_4
    move-exception v0

    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
.end method

.method private dq(Lcom/bytedance/embedapplog/jw;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p1, Lcom/bytedance/embedapplog/jw;->mp:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/embedapplog/vw;->p:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/c;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/bytedance/embedapplog/jw;->ig:I

    iget-object v1, p0, Lcom/bytedance/embedapplog/vw;->p:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/le;->s()Lcom/bytedance/embedapplog/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/c;->d()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, p2}, Lcom/bytedance/embedapplog/yo;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v1, "app_version"

    iget-object v2, p1, Lcom/bytedance/embedapplog/jw;->mp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version_code"

    iget p1, p1, Lcom/bytedance/embedapplog/jw;->ig:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_1
    return-object p2
.end method

.method private dq(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IIZ[Lorg/json/JSONArray;[JI)V
    .locals 11

    sget-object v0, Lcom/bytedance/embedapplog/vw;->iw:[Lcom/bytedance/embedapplog/ds;

    aget-object v2, v0, p4

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    move/from16 v4, p5

    move/from16 v6, p8

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/ds;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0xc8

    if-gt p2, p3, :cond_2

    invoke-virtual {v2, p1}, Lcom/bytedance/embedapplog/ds;->dq(Landroid/database/Cursor;)I

    sget-object p3, Lcom/bytedance/embedapplog/vw;->ox:[Lcom/bytedance/embedapplog/vw$d;

    aget-object p3, p3, p4

    invoke-static {p3, v2}, Lcom/bytedance/embedapplog/vw$d;->dq(Lcom/bytedance/embedapplog/vw$d;Lcom/bytedance/embedapplog/ds;)V

    sget-boolean p3, Lcom/bytedance/embedapplog/jo;->d:Z

    if-eqz p3, :cond_0

    const-string p3, "queryEvent, "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v8}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v8, p1

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/bytedance/embedapplog/ds;->iw()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v7, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-wide v0, v2, Lcom/bytedance/embedapplog/ds;->dq:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p3, v0, v9

    if-lez p3, :cond_1

    move-wide v9, v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p2, v0

    :goto_2
    :try_start_2
    invoke-static {p2}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    aput-object v7, p6, p4

    aput-wide v9, p7, p4

    return-void

    :catchall_2
    move-exception v0

    move-object p1, v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method private static dq(Lcom/bytedance/embedapplog/ds;)V
    .locals 2

    sget-object v0, Lcom/bytedance/embedapplog/vw;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/ds;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/fd;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[JLjava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/embedapplog/jw;",
            "Lcom/bytedance/embedapplog/fd;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Lorg/json/JSONArray;",
            "[J",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/fd;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packCurrentData, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;)Z

    move-result v8

    iget-object v3, p2, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/embedapplog/vw;->dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v9

    move-object v6, v7

    const/4 v10, 0x0

    if-nez v8, :cond_0

    invoke-direct {p0, v6}, Lcom/bytedance/embedapplog/vw;->dq([J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v8, :cond_1

    move-object v2, p2

    goto :goto_0

    :cond_1
    move-object v2, v10

    :goto_0
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v0, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/embedapplog/fd;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    sget-object v0, Lcom/bytedance/embedapplog/vw;->iw:[Lcom/bytedance/embedapplog/ds;

    array-length v0, v0

    if-lt v9, v0, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/embedapplog/ds;->mn()Lcom/bytedance/embedapplog/ds;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/fd;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/fd;->o()[B

    move-object/from16 v1, p7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v8, p3

    :goto_1
    move-object v2, p4

    :goto_2
    move v1, v9

    goto :goto_4

    :cond_3
    move-object v0, p3

    :goto_3
    const/4 v1, 0x1

    move-object v2, p4

    invoke-virtual {p0, v0, v1, p4, v1}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/fd;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move-object v8, v0

    goto :goto_2

    :goto_4
    sget-object v0, Lcom/bytedance/embedapplog/vw;->iw:[Lcom/bytedance/embedapplog/ds;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v3, p2, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/embedapplog/vw;->dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v9

    move-object v6, v7

    invoke-direct {p0, v6}, Lcom/bytedance/embedapplog/vw;->dq([J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, p2

    goto :goto_5

    :cond_4
    move-object v2, v10

    :goto_5
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object/from16 v5, p5

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/embedapplog/fd;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    goto :goto_3

    :cond_5
    move-object v0, v8

    goto :goto_1

    :cond_6
    return-void
.end method

.method private dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/fd;Lcom/bytedance/embedapplog/bu;Lcom/bytedance/embedapplog/ws;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[J)V
    .locals 21

    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "packHistoryData, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/jw;ZLcom/bytedance/embedapplog/ws;Lcom/bytedance/embedapplog/bu;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v8

    move-object v11, v1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v11, Lcom/bytedance/embedapplog/jw;->q:Z

    iget-object v3, v11, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/embedapplog/vw;->dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v1

    iget-boolean v2, v11, Lcom/bytedance/embedapplog/jw;->q:Z

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v15, v11

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move-object v15, v2

    :goto_1
    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    move-object/from16 v14, p1

    move-object/from16 v13, p3

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    invoke-virtual/range {v13 .. v20}, Lcom/bytedance/embedapplog/fd;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move-object v7, v8

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v10}, Lcom/bytedance/embedapplog/fd;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    :goto_2
    move-object/from16 v13, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v13, v12, v2, v12}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/fd;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    :goto_3
    sget-object v3, Lcom/bytedance/embedapplog/vw;->iw:[Lcom/bytedance/embedapplog/ds;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, v11, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/embedapplog/vw;->dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v1

    invoke-direct {v0, v7}, Lcom/bytedance/embedapplog/vw;->dq([J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v14, p1

    move-object/from16 v18, p7

    move-object/from16 v19, v7

    invoke-virtual/range {v13 .. v20}, Lcom/bytedance/embedapplog/fd;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    goto :goto_2

    :cond_3
    move-object/from16 v13, p3

    move-object/from16 v2, p6

    goto :goto_3

    :cond_4
    return-void
.end method

.method private dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lcom/bytedance/embedapplog/bu;Lcom/bytedance/embedapplog/fd;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;[J)V
    .locals 14

    move-object/from16 v1, p2

    move-object/from16 v6, p7

    const-string v0, "packLostData, "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/bytedance/embedapplog/jw;->r:Z

    move-object/from16 v9, p5

    iput-object v6, v9, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/jw;ZLcom/bytedance/embedapplog/ws;Lcom/bytedance/embedapplog/bu;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v10

    move-object v11, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object/from16 v2, p6

    move-object/from16 v7, p9

    move-object v3, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/embedapplog/vw;->dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v1

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v11, Lcom/bytedance/embedapplog/jw;->q:Z

    invoke-direct {p0, v7}, Lcom/bytedance/embedapplog/vw;->dq([J)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, v11, Lcom/bytedance/embedapplog/jw;->q:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v2, p6

    goto :goto_6

    :cond_2
    :goto_1
    iget-boolean v0, v11, Lcom/bytedance/embedapplog/jw;->q:Z

    if-nez v0, :cond_3

    move-object/from16 v2, p3

    goto :goto_2

    :cond_3
    move-object v2, v13

    :goto_2
    if-nez v0, :cond_4

    move-object v4, v10

    :goto_3
    move-object v3, v2

    move-object v0, v9

    move v9, v1

    goto :goto_5

    :cond_4
    :goto_4
    move-object v4, v13

    goto :goto_3

    :goto_5
    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/embedapplog/fd;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    move-object/from16 v2, p6

    invoke-virtual {p0, v0, v8, v2, v12}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/fd;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move v1, v9

    move-object v9, v0

    :goto_6
    sget-object v0, Lcom/bytedance/embedapplog/vw;->iw:[Lcom/bytedance/embedapplog/ds;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/embedapplog/vw;->dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v1

    invoke-direct {p0, v7}, Lcom/bytedance/embedapplog/vw;->dq([J)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v13

    goto :goto_4

    :cond_5
    return-void
.end method

.method private dq(Lorg/json/JSONObject;ZLcom/bytedance/embedapplog/fd;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    move-object/from16 v8, p3

    sget-object v9, Lcom/bytedance/embedapplog/vw;->dq:[I

    array-length v10, v9

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_2

    aget v5, v9, v11

    const/4 v0, 0x3

    new-array v6, v0, [Lorg/json/JSONArray;

    new-array v7, v0, [J

    const/4 v1, 0x0

    iget-object v3, v8, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    move-object v0, p0

    move v4, p2

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/embedapplog/vw;->dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v1

    invoke-direct {p0, v7}, Lcom/bytedance/embedapplog/vw;->dq([J)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move v12, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move v7, v5

    move-object v5, v6

    move-object v6, v0

    move-object v1, p1

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/embedapplog/fd;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JI)V

    move-object v8, v6

    move-object v6, v5

    move v5, v7

    move-object v7, v8

    move-object v8, v0

    const/4 v0, 0x1

    move v4, p2

    move-object/from16 v2, p4

    invoke-virtual {p0, v8, p2, v2, v0}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/fd;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move v1, v12

    :goto_2
    sget-object v0, Lcom/bytedance/embedapplog/vw;->iw:[Lcom/bytedance/embedapplog/ds;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v3, v8, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/embedapplog/vw;->dq(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ZI[Lorg/json/JSONArray;[J)I

    move-result v1

    invoke-direct {p0, v7}, Lcom/bytedance/embedapplog/vw;->dq([J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v4, p2

    move-object/from16 v2, p4

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dq(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "needLaunch, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/embedapplog/vw;->mn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/embedapplog/vw;->mn:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/embedapplog/vw;->mn:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq([J)Z
    .locals 7

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    aget-wide v1, p1, v3

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    cmp-long p1, v1, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v3
.end method


# virtual methods
.method public dq()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/fd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/bytedance/embedapplog/vw;->d:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/fd;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/embedapplog/vw;->s:Lcom/bytedance/embedapplog/vw$dq;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM pack ORDER BY _id DESC LIMIT 8"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/ds;->mn()Lcom/bytedance/embedapplog/ds;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/fd;

    invoke-virtual {v1, v3}, Lcom/bytedance/embedapplog/fd;->dq(Landroid/database/Cursor;)I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v3, v2

    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    const-string v1, "queryPack, "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public declared-synchronized dq(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/fd;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/bytedance/embedapplog/vw;->d:Ljava/util/HashMap;

    const-string v2, "launch"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/embedapplog/jw;

    const-string v2, "terminate"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/bytedance/embedapplog/ws;

    const-string v2, "page"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/bytedance/embedapplog/bu;

    const-string v2, "pack"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/bytedance/embedapplog/fd;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v0, 0x3

    const/4 v2, 0x0

    :try_start_1
    new-array v6, v0, [Lorg/json/JSONArray;

    new-array v7, v0, [J

    iget-object v0, v1, Lcom/bytedance/embedapplog/vw;->s:Lcom/bytedance/embedapplog/vw$dq;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "SELECT * FROM launch ORDER BY _id LIMIT 5"

    invoke-virtual {v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    iget-object v0, v1, Lcom/bytedance/embedapplog/vw;->p:Lcom/bytedance/embedapplog/le;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/le;->mn()Lcom/bytedance/embedapplog/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/e;->dq()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/e;->d()Z

    move-result v0

    move-object/from16 v2, p1

    const-wide v16, 0x7fffffffffffffffL

    const-wide/high16 v18, -0x8000000000000000L

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v3, v11}, Lcom/bytedance/embedapplog/jw;->dq(Landroid/database/Cursor;)I

    iget-object v2, v3, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    iput-object v2, v4, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-direct {v1, v3, v2}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/jw;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v20

    const-wide/high16 v21, -0x8000000000000000L

    iget-object v13, v3, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    xor-int/lit8 v13, v0, 0x1

    :try_start_4
    iput-boolean v13, v3, Lcom/bytedance/embedapplog/jw;->q:Z

    move-object/from16 v2, v20

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/embedapplog/vw;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/fd;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[JLjava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    move-object v13, v8

    move-object v2, v9

    move-object v9, v7

    move-object v7, v5

    move-object v8, v6

    move-object v5, v10

    const-wide v23, 0x7fffffffffffffffL

    move-object v6, v4

    move-object v4, v2

    move-object v2, v1

    move-object/from16 v1, p0

    :goto_1
    const/4 v10, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v7, v5

    move-object v13, v8

    :goto_2
    move-object/from16 v1, p0

    :goto_3
    move-object v2, v11

    goto/16 :goto_6

    :cond_0
    move-object v13, v8

    move-object v2, v9

    move-object/from16 v1, v20

    const-wide v23, 0x7fffffffffffffffL

    move-object v9, v7

    move-object v7, v5

    :try_start_5
    iget-wide v14, v3, Lcom/bytedance/embedapplog/ds;->dq:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    cmp-long v5, v14, v16

    if-gez v5, :cond_1

    move-wide/from16 v16, v14

    :cond_1
    cmp-long v5, v14, v18

    if-lez v5, :cond_2

    move-wide/from16 v18, v14

    :cond_2
    move-object v8, v6

    move-object v5, v10

    move-object v6, v2

    move-object v2, v1

    move-object/from16 v1, p0

    :try_start_6
    invoke-direct/range {v1 .. v9}, Lcom/bytedance/embedapplog/vw;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/fd;Lcom/bytedance/embedapplog/bu;Lcom/bytedance/embedapplog/ws;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[J)V

    move-object/from16 v25, v6

    move-object v6, v4

    move-object/from16 v4, v25

    goto :goto_1

    :goto_4
    invoke-direct {v1, v2, v10, v6, v7}, Lcom/bytedance/embedapplog/vw;->dq(Lorg/json/JSONObject;ZLcom/bytedance/embedapplog/fd;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v10, v5

    move-object v5, v7

    move-object v7, v9

    move-object v9, v4

    move-object v4, v6

    move-object v6, v8

    move-object v8, v13

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v7, v5

    move-object v13, v8

    goto :goto_3

    :cond_3
    move-object v13, v8

    const-wide/high16 v21, -0x8000000000000000L

    const-wide v23, 0x7fffffffffffffffL

    move-object v8, v6

    move-object v6, v4

    move-object v4, v9

    move-object v9, v7

    move-object v7, v5

    move-object v5, v10

    cmp-long v0, v16, v23

    if-eqz v0, :cond_4

    cmp-long v0, v18, v21

    if-eqz v0, :cond_4

    const-string v0, "DELETE FROM launch WHERE _id>=? AND _id<=?"

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v10, 0x5

    if-ge v0, v10, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v10, v9

    move-object v9, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/embedapplog/vw;->dq(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/jw;Lcom/bytedance/embedapplog/ws;Lcom/bytedance/embedapplog/bu;Lcom/bytedance/embedapplog/fd;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;[J)V

    move-object v4, v6

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0, v4, v7}, Lcom/bytedance/embedapplog/vw;->dq(Lorg/json/JSONObject;ZLcom/bytedance/embedapplog/fd;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    invoke-static {v7}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v7, v5

    move-object v13, v8

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v13, v8

    move-object v7, v2

    :goto_6
    :try_start_9
    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v2, :cond_6

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :goto_7
    monitor-exit p0

    return-object v13

    :catchall_9
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_7

    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_8

    :catchall_a
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    invoke-static {v7}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3

    :goto_9
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0
.end method

.method public dq(Lcom/bytedance/embedapplog/fd;ZLandroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 11

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/bytedance/embedapplog/vw;->s:Lcom/bytedance/embedapplog/vw$dq;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_1
    :goto_1
    const-wide/16 v2, 0x0

    if-eqz p4, :cond_3

    const-string p4, "pack"

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/embedapplog/ds;->d(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p3, p4, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long p4, v4, v2

    if-gez p4, :cond_3

    iget-object p1, p1, Lcom/bytedance/embedapplog/fd;->gh:Lcom/bytedance/embedapplog/jw;

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v1, :cond_8

    invoke-static {p3}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_3
    :try_start_1
    iget-wide v9, p1, Lcom/bytedance/embedapplog/fd;->f:J

    cmp-long p4, v9, v2

    if-lez p4, :cond_4

    const-string v5, "event"

    iget v6, p1, Lcom/bytedance/embedapplog/ds;->o:I

    iget-object v7, p1, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    move-object v4, p0

    move v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;ILjava/lang/String;ZJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v8, p2

    :goto_2
    iget-wide v9, p1, Lcom/bytedance/embedapplog/fd;->cd:J

    cmp-long p2, v9, v2

    if-lez p2, :cond_5

    const-string v5, "eventv3"

    iget v6, p1, Lcom/bytedance/embedapplog/ds;->o:I

    iget-object v7, p1, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;ILjava/lang/String;ZJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    iget-wide v9, p1, Lcom/bytedance/embedapplog/fd;->i:J

    cmp-long p2, v9, v2

    if-lez p2, :cond_6

    const-string v5, "event_misc"

    iget v6, p1, Lcom/bytedance/embedapplog/ds;->o:I

    iget-object v7, p1, Lcom/bytedance/embedapplog/ds;->p:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;ILjava/lang/String;ZJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    if-eqz v1, :cond_8

    invoke-static {p3}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :goto_3
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_8

    invoke-static {p3}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_9

    invoke-static {p3}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_9
    throw p1
.end method

.method public dq(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/ds;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/embedapplog/vw;->s:Lcom/bytedance/embedapplog/vw$dq;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/embedapplog/ds;

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/ds;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4}, Lcom/bytedance/embedapplog/ds;->d(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v6, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/bytedance/embedapplog/ds;->dq:J

    const-string v6, "event"

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/ds;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :cond_1
    const-string v6, "eventv3"

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/ds;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v6, v5, Lcom/bytedance/embedapplog/jw;

    if-eqz v6, :cond_0

    check-cast v5, Lcom/bytedance/embedapplog/jw;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_1
    move-exception p1

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_2
    move-exception p1

    invoke-static {v1}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public dq(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/fd;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/fd;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/fd;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setResult, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/embedapplog/fd;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/bytedance/embedapplog/ds;->d:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x337f9800

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/vw;->s:Lcom/bytedance/embedapplog/vw$dq;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/embedapplog/fd;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v0, v4}, Lcom/bytedance/embedapplog/vw;->dq(Lcom/bytedance/embedapplog/fd;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-string v4, "DELETE FROM pack WHERE _id=?"

    iget-wide v5, v3, Lcom/bytedance/embedapplog/ds;->dq:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/embedapplog/fd;

    iget-object v3, p2, Lcom/bytedance/embedapplog/fd;->gh:Lcom/bytedance/embedapplog/jw;

    if-eqz v3, :cond_5

    invoke-direct {p0, v1}, Lcom/bytedance/embedapplog/vw;->dq(Ljava/lang/String;)Z

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v3, p2, Lcom/bytedance/embedapplog/ds;->dq:J

    iget v5, p2, Lcom/bytedance/embedapplog/fd;->mp:I

    add-int/2addr v5, v2

    iput v5, p2, Lcom/bytedance/embedapplog/fd;->mp:I

    invoke-direct {p0, v3, v4, v5}, Lcom/bytedance/embedapplog/vw;->dq(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_2
    move-exception p1

    :goto_5
    :try_start_4
    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v1}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_3
    move-exception p1

    invoke-static {v1}, Lcom/bytedance/embedapplog/yo;->dq(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

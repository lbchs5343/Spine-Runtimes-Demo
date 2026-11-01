.class public final Lg/dbb;
.super Lg/os;
.source "SourceFile"


# instance fields
.field public final g:Lg/fmk;

.field public final h:Lg/cvk;

.field public final j:Lg/cvk;

.field public final k:Lg/gyy;

.field public l:Lg/ake;

.field public final m:Ljava/util/ArrayList;

.field public volatile n:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lg/cyg;)V
    .locals 2

    invoke-direct {p0, p1}, Lg/os;-><init>(Lg/cyg;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/dbb;->m:Ljava/util/ArrayList;

    new-instance v0, Lg/fmk;

    iget-object v1, p1, Lg/cyg;->ab:Lg/czz;

    invoke-direct {v0, v1}, Lg/fmk;-><init>(Lg/czz;)V

    iput-object v0, p0, Lg/dbb;->g:Lg/fmk;

    new-instance v0, Lg/gyy;

    invoke-direct {v0, p0}, Lg/gyy;-><init>(Lg/dbb;)V

    iput-object v0, p0, Lg/dbb;->k:Lg/gyy;

    new-instance v0, Lg/cvk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/cvk;-><init>(Lg/dbb;Lg/cyg;I)V

    iput-object v0, p0, Lg/dbb;->h:Lg/cvk;

    new-instance v0, Lg/cvk;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lg/cvk;-><init>(Lg/dbb;Lg/cyg;I)V

    iput-object v0, p0, Lg/dbb;->j:Lg/cvk;

    return-void
.end method

.method public static o(Lg/dbb;Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v0, p0, Lg/dbb;->l:Lg/ake;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lg/dbb;->l:Lg/ake;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, p1, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/dbb;->an()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final al(Lg/ake;Lg/exk;Lg/afh;)V
    .locals 30

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lg/acn;->_e()V

    invoke-virtual/range {p0 .. p0}, Lg/os;->zza()V

    move-object/from16 v4, p0

    iget-object v0, v4, Lg/bgf;->z:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg/cyg;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lg/cyg;->z:Lg/bgm;

    const/16 v7, 0x64

    const/16 v0, 0x64

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x3e9

    if-ge v9, v10, :cond_1c

    if-ne v0, v7, :cond_1c

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lg/cyg;->an()Lg/efm;

    move-result-object v11

    const-string v12, "Error reading entries from local database"

    const-string v13, "rowid"

    iget-object v0, v11, Lg/bgf;->z:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lg/cyg;

    invoke-virtual {v11}, Lg/acn;->_e()V

    iget-boolean v0, v11, Lg/efm;->h:Z

    if-eqz v0, :cond_0

    move-object/from16 v29, v5

    move/from16 v19, v9

    const/4 v15, 0x0

    const/16 v16, 0x64

    goto/16 :goto_28

    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v11, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    const/16 v16, 0x64

    const-string v7, "google_app_measurement_local.db"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v7, 0x5

    const/4 v4, 0x5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_14

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v11}, Lg/efm;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_23
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    if-nez v18, :cond_1

    :try_start_1
    iput-boolean v7, v11, Lg/efm;->h:Z

    move-object/from16 v29, v5

    move/from16 v19, v9

    :goto_2
    const/4 v15, 0x0

    goto/16 :goto_28

    :catchall_0
    move-exception v0

    move-object/from16 v5, v18

    goto/16 :goto_1c

    :catch_0
    move-exception v0

    move-object/from16 v29, v5

    :goto_3
    move/from16 v19, v9

    move-object/from16 v5, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    goto/16 :goto_1e

    :catch_1
    move-object/from16 v29, v5

    :catch_2
    move/from16 v19, v9

    move-object/from16 v5, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    goto/16 :goto_1f

    :catch_3
    move-exception v0

    move-object/from16 v29, v5

    :goto_4
    move/from16 v19, v9

    move-object/from16 v5, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    goto/16 :goto_20

    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v19, "messages"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v20

    const-string v21, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v22

    const-string v25, "rowid desc"

    const-string v26, "1"

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    const-wide/16 v27, -0x1

    if-eqz v0, :cond_2

    move-object/from16 v29, v5

    const/4 v5, 0x0

    :try_start_4
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_5
    move/from16 v19, v9

    move-object/from16 v5, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    goto/16 :goto_1a

    :cond_2
    move-object/from16 v29, v5

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_1f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1d
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-wide/from16 v19, v27

    :goto_6
    cmp-long v0, v19, v27

    if-eqz v0, :cond_3

    :try_start_7
    const-string v0, "rowid<?"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    aput-object v5, v7, v17
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v21, v0

    move-object/from16 v22, v7

    goto :goto_7

    :cond_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_7
    :try_start_8
    const-string v0, "type"

    const-string v5, "entry"

    filled-new-array {v13, v0, v5}, [Ljava/lang/String;

    move-result-object v20

    const-string v19, "messages"

    const-string v25, "rowid asc"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1d
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-object/from16 v7, v18

    :goto_8
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_19
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_a

    move/from16 v18, v8

    const/4 v8, 0x0

    :try_start_a
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_18
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_16
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v8, 0x1

    :try_start_b
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_13
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const/4 v8, 0x2

    move/from16 v19, v9

    :try_start_c
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    array-length v0, v9
    :try_end_d
    .catch Lg/csj; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v20, v5

    const/4 v5, 0x0

    :try_start_e
    invoke-virtual {v8, v9, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lg/ctf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ctf;
    :try_end_e
    .catch Lg/csj; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_4

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f .. :try_end_f} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_4
    :goto_9
    const/4 v8, 0x0

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    goto/16 :goto_16

    :catch_6
    move-exception v0

    :goto_a
    const/4 v8, 0x0

    goto/16 :goto_17

    :catch_7
    :goto_b
    const/4 v8, 0x0

    goto/16 :goto_18

    :catch_8
    move-exception v0

    :goto_c
    const/4 v8, 0x0

    goto/16 :goto_19

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_d

    :catch_9
    move-object/from16 v20, v5

    :catch_a
    :try_start_10
    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Failed to load event from local database"

    invoke-virtual {v0, v5}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    goto :goto_9

    :goto_d
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    throw v0

    :catchall_5
    move-exception v0

    move-object/from16 v20, v5

    goto/16 :goto_16

    :catch_b
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_a

    :catch_c
    move-object/from16 v20, v5

    goto :goto_b

    :catch_d
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_c

    :cond_5
    move-object/from16 v20, v5

    const/4 v5, 0x1

    if-ne v0, v5, :cond_6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    array-length v0, v9

    const/4 v8, 0x0

    invoke-virtual {v5, v9, v8, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lg/cmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cmd;
    :try_end_12
    .catch Lg/csj; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_e

    :catchall_6
    move-exception v0

    goto :goto_f

    :catch_e
    :try_start_14
    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v8, "Failed to load user property from local database"

    invoke-virtual {v0, v8}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_4

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :goto_f
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_6
    if-ne v0, v8, :cond_7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    array-length v0, v9
    :try_end_16
    .catch Lg/csj; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    const/4 v8, 0x0

    :try_start_17
    invoke-virtual {v5, v9, v8, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lg/bou;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bou;
    :try_end_17
    .catch Lg/csj; {:try_start_17 .. :try_end_17} :catch_12
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_18} :catch_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_18 .. :try_end_18} :catch_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_10

    :catch_f
    move-exception v0

    goto/16 :goto_17

    :catch_10
    move-exception v0

    goto/16 :goto_19

    :catchall_7
    move-exception v0

    goto :goto_11

    :catchall_8
    move-exception v0

    const/4 v8, 0x0

    goto :goto_11

    :catch_11
    const/4 v8, 0x0

    :catch_12
    :try_start_19
    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v9, "Failed to load conditional user property from local database"

    invoke-virtual {v0, v9}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_9

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :goto_11
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_7
    const/4 v8, 0x0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_8

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v5, "Skipping app launch break"

    invoke-virtual {v0, v5}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_12

    :cond_8
    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Unknown record type in local database"

    invoke-virtual {v0, v5}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_9
    :goto_12
    move/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_8

    :catch_13
    move-exception v0

    move-object/from16 v20, v5

    :goto_13
    move/from16 v19, v9

    goto/16 :goto_a

    :catch_14
    move-object/from16 v20, v5

    :goto_14
    move/from16 v19, v9

    goto/16 :goto_b

    :catch_15
    move-exception v0

    move-object/from16 v20, v5

    :goto_15
    move/from16 v19, v9

    goto/16 :goto_c

    :catch_16
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v19, v9

    goto :goto_17

    :catch_17
    move-object/from16 v20, v5

    move/from16 v19, v9

    goto :goto_18

    :catch_18
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v19, v9

    goto :goto_19

    :cond_a
    move-object/from16 v20, v5

    move/from16 v18, v8

    move/from16 v19, v9

    const/4 v8, 0x0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v5, "messages"

    const-string v9, "rowid <= ?"

    invoke-virtual {v7, v5, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v5}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1a .. :try_end_1a} :catch_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto/16 :goto_28

    :goto_16
    move-object/from16 v15, v20

    goto/16 :goto_27

    :catch_19
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v18, v8

    goto :goto_13

    :goto_17
    move-object/from16 v5, v20

    goto/16 :goto_21

    :catch_1a
    move-object/from16 v20, v5

    move/from16 v18, v8

    goto :goto_14

    :catch_1b
    :goto_18
    move-object/from16 v5, v20

    goto/16 :goto_23

    :catch_1c
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v18, v8

    goto :goto_15

    :goto_19
    move-object/from16 v5, v20

    goto/16 :goto_25

    :catchall_9
    move-exception v0

    move-object/from16 v7, v18

    move-object v5, v7

    goto :goto_1c

    :catch_1d
    move-exception v0

    move/from16 v19, v9

    move-object/from16 v7, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    move-object v5, v7

    goto :goto_1e

    :catch_1e
    move/from16 v19, v9

    move-object/from16 v7, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    move-object v5, v7

    goto :goto_1f

    :catch_1f
    move-exception v0

    move/from16 v19, v9

    move-object/from16 v7, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    move-object v5, v7

    goto :goto_20

    :catchall_a
    move-exception v0

    move-object/from16 v29, v5

    goto/16 :goto_5

    :catchall_b
    move-exception v0

    move-object/from16 v29, v5

    move/from16 v19, v9

    move-object/from16 v5, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1a
    if-eqz v7, :cond_c

    :try_start_1b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    :catchall_c
    move-exception v0

    goto :goto_1c

    :catch_20
    move-exception v0

    goto :goto_1e

    :catch_21
    move-exception v0

    goto :goto_20

    :cond_c
    :goto_1b
    throw v0
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1b .. :try_end_1b} :catch_21
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1b .. :try_end_1b} :catch_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_20
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    :goto_1c
    move-object v7, v5

    :goto_1d
    const/4 v15, 0x0

    goto/16 :goto_27

    :goto_1e
    move-object v7, v5

    const/4 v5, 0x0

    goto :goto_21

    :catch_22
    :goto_1f
    move-object v7, v5

    const/4 v5, 0x0

    goto :goto_23

    :goto_20
    move-object v7, v5

    const/4 v5, 0x0

    goto :goto_25

    :catchall_d
    move-exception v0

    const/4 v7, 0x0

    goto :goto_1d

    :catch_23
    move-exception v0

    move-object/from16 v29, v5

    move/from16 v18, v8

    move/from16 v19, v9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_21
    if-eqz v7, :cond_d

    :try_start_1c
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_d
    iget-object v9, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v9}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v9, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v9, v0, v12}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    iput-boolean v9, v11, Lg/efm;->h:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    if-eqz v5, :cond_e

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v7, :cond_11

    goto :goto_24

    :goto_22
    move-object v15, v5

    goto :goto_27

    :catch_24
    move-object/from16 v29, v5

    move/from16 v18, v8

    move/from16 v19, v9

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_23
    int-to-long v8, v4

    :try_start_1d
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v7, :cond_11

    :goto_24
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_26

    :catchall_e
    move-exception v0

    goto :goto_22

    :catch_25
    move-exception v0

    move-object/from16 v29, v5

    move/from16 v18, v8

    move/from16 v19, v9

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_25
    :try_start_1e
    iget-object v8, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v8}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v8, v8, Lg/bgm;->b:Lg/dvb;

    invoke-virtual {v8, v0, v12}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    iput-boolean v8, v11, Lg/efm;->h:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    if-eqz v5, :cond_10

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v7, :cond_11

    goto :goto_24

    :cond_11
    :goto_26
    add-int/lit8 v8, v18, 0x1

    move/from16 v9, v19

    move-object/from16 v5, v29

    const/4 v7, 0x5

    goto/16 :goto_1

    :goto_27
    if-eqz v15, :cond_12

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_13
    throw v0

    :cond_14
    move-object/from16 v29, v5

    move/from16 v19, v9

    iget-object v0, v14, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v4, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v4}, Lg/dvb;->h(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    move-object/from16 v29, v5

    move/from16 v19, v9

    :goto_28
    if-eqz v15, :cond_16

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    goto :goto_29

    :cond_16
    const/4 v4, 0x0

    :goto_29
    const/16 v5, 0x64

    if-eqz v2, :cond_17

    if-ge v4, v5, :cond_17

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_2a
    if-ge v8, v7, :cond_1b

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/exk;

    instance-of v9, v0, Lg/ctf;

    if-eqz v9, :cond_18

    :try_start_1f
    check-cast v0, Lg/ctf;

    invoke-interface {v1, v0, v3}, Lg/ake;->n(Lg/ctf;Lg/afh;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_26

    goto :goto_2b

    :catch_26
    move-exception v0

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v6, Lg/bgm;->b:Lg/dvb;

    const-string v11, "Failed to send event to the service"

    invoke-virtual {v9, v0, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2b

    :cond_18
    instance-of v9, v0, Lg/cmd;

    if-eqz v9, :cond_19

    :try_start_20
    check-cast v0, Lg/cmd;

    invoke-interface {v1, v0, v3}, Lg/ake;->d(Lg/cmd;Lg/afh;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v6, Lg/bgm;->b:Lg/dvb;

    const-string v11, "Failed to send user property to the service"

    invoke-virtual {v9, v0, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2b

    :cond_19
    instance-of v9, v0, Lg/bou;

    if-eqz v9, :cond_1a

    :try_start_21
    check-cast v0, Lg/bou;

    invoke-interface {v1, v0, v3}, Lg/ake;->s(Lg/bou;Lg/afh;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_28

    goto :goto_2b

    :catch_28
    move-exception v0

    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v9, v6, Lg/bgm;->b:Lg/dvb;

    const-string v11, "Failed to send conditional user property to the service"

    invoke-virtual {v9, v0, v11}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2b

    :cond_1a
    invoke-static {v6}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v6, Lg/bgm;->b:Lg/dvb;

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v0, v9}, Lg/dvb;->h(Ljava/lang/String;)V

    :goto_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_1b
    add-int/lit8 v9, v19, 0x1

    move v0, v4

    move-object/from16 v5, v29

    const/16 v7, 0x64

    move-object/from16 v4, p0

    goto/16 :goto_0

    :cond_1c
    return-void
.end method

.method public final am()V
    .locals 4

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/dbb;->k:Lg/gyy;

    iget-object v1, v0, Lg/gyy;->c:Lg/cfu;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lg/gyy;->c:Lg/cfu;

    invoke-virtual {v1}, Lg/adw;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/gyy;->c:Lg/cfu;

    invoke-virtual {v1}, Lg/adw;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lg/gyy;->c:Lg/cfu;

    invoke-virtual {v1}, Lg/adw;->disconnect()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lg/gyy;->c:Lg/cfu;

    :try_start_0
    invoke-static {}, Lg/aoy;->m()Lg/aoy;

    move-result-object v0

    iget-object v2, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->v:Landroid/content/Context;

    iget-object v3, p0, Lg/dbb;->k:Lg/gyy;

    invoke-virtual {v0, v2, v3}, Lg/aoy;->s(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lg/dbb;->l:Lg/ake;

    return-void
.end method

.method public final an()V
    .locals 9

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    invoke-virtual {p0}, Lg/dbb;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lg/dbb;->ao()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v0}, Lg/dsd;->s()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->v:Landroid/content/Context;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.measurement.START"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->v:Landroid/content/Context;

    const-string v2, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v8, p0, Lg/dbb;->k:Lg/gyy;

    iget-object v0, v8, Lg/gyy;->a:Lg/dbb;

    invoke-virtual {v0}, Lg/acn;->_e()V

    iget-object v0, v8, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v2, v0, Lg/cyg;->v:Landroid/content/Context;

    invoke-static {}, Lg/aoy;->m()Lg/aoy;

    move-result-object v1

    monitor-enter v8

    :try_start_0
    iget-boolean v0, v8, Lg/gyy;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, v8, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lg/gyy;->a:Lg/dbb;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Using local app measurement service"

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v8, Lg/gyy;->b:Z

    iget-object v0, v8, Lg/gyy;->a:Lg/dbb;

    iget-object v5, v0, Lg/dbb;->k:Lg/gyy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v6, 0x81

    invoke-virtual/range {v1 .. v7}, Lg/aoy;->u(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    monitor-exit v8

    return-void

    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lg/dbb;->k:Lg/gyy;

    invoke-virtual {v0}, Lg/gyy;->d()V

    return-void
.end method

.method public final ao()Z
    .locals 7

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/dbb;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_service"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    invoke-virtual {v4}, Lg/cyg;->at()Lg/fqh;

    move-result-object v4

    invoke-virtual {v4}, Lg/os;->zza()V

    iget v4, v4, Lg/fqh;->m:I

    if-ne v4, v1, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_2
    iget-object v4, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->c:Lg/dvb;

    const-string v5, "Checking service availability"

    invoke-virtual {v4, v5}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v4, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->m:Lg/dkq;

    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    sget-object v5, Lg/gna;->i:Lg/gna;

    iget-object v4, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->v:Landroid/content/Context;

    const v6, 0xbdfcb8

    invoke-virtual {v5, v4, v6}, Lg/gna;->l(Landroid/content/Context;I)I

    move-result v4

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    const/16 v0, 0x9

    if-eq v4, v0, :cond_4

    const/16 v0, 0x12

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Unexpected service status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Service invalid"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v1, "Service disabled"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->o:Lg/dvb;

    const-string v5, "Service container out of date"

    invoke-virtual {v4, v5}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v4, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/cyg;

    iget-object v4, v4, Lg/cyg;->m:Lg/dkq;

    invoke-static {v4}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v4}, Lg/dkq;->ay()I

    move-result v4

    const/16 v5, 0x4423

    if-ge v4, v5, :cond_7

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    move v3, v1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v4, "Service missing"

    invoke-virtual {v0, v4}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lg/dvb;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    if-nez v3, :cond_b

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v0}, Lg/dsd;->s()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/bgf;->_e()V

    invoke-virtual {v0}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_5
    move v1, v3

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/dbb;->n:Ljava/lang/Boolean;

    :cond_d
    iget-object v0, p0, Lg/dbb;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()V
    .locals 6

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    iget-object v2, p0, Lg/dbb;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Processing queued up service tasks"

    invoke-virtual {v1, v3, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v4, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v4}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v4, v4, Lg/bgm;->b:Lg/dvb;

    const-string v5, "Task exception while flushing queue"

    invoke-virtual {v4, v3, v5}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lg/dbb;->j:Lg/cvk;

    invoke-virtual {v0}, Lg/emo;->i()V

    return-void
.end method

.method public final q(Z)Lg/afh;
    .locals 37

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lg/cyg;->at()Lg/fqh;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v6, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v6}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v6, v6, Lg/gmr;->s:Lg/dkh;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v17, v5

    goto/16 :goto_5

    :cond_1
    iget-object v0, v0, Lg/cyg;->b:Lg/gmr;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v0, Lg/gmr;->s:Lg/dkh;

    iget-object v6, v0, Lg/dkh;->b:Ljava/lang/Object;

    check-cast v6, Lg/gmr;

    invoke-virtual {v6}, Lg/bgf;->_e()V

    invoke-virtual {v6}, Lg/bgf;->_e()V

    iget-object v7, v0, Lg/dkh;->b:Ljava/lang/Object;

    check-cast v7, Lg/gmr;

    invoke-virtual {v7}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v7

    iget-object v8, v0, Lg/dkh;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-nez v9, :cond_2

    invoke-virtual {v0}, Lg/dkh;->f()V

    move-wide v7, v3

    goto :goto_1

    :cond_2
    iget-object v9, v6, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v9, Lg/cyg;

    iget-object v9, v9, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    :goto_1
    iget-wide v9, v0, Lg/dkh;->c:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    :goto_2
    move-object v0, v5

    goto :goto_4

    :cond_3
    add-long/2addr v9, v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_4

    invoke-virtual {v0}, Lg/dkh;->f()V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v7

    iget-object v8, v0, Lg/dkh;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v8, v0, Lg/dkh;->e:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v8, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v0}, Lg/dkh;->f()V

    if-eqz v7, :cond_6

    cmp-long v0, v8, v3

    if-gtz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v0, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    :goto_3
    sget-object v0, Lg/gmr;->a:Landroid/util/Pair;

    :goto_4
    if-eqz v0, :cond_0

    sget-object v6, Lg/gmr;->a:Landroid/util/Pair;

    if-ne v0, v6, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v7, ":"

    invoke-static {v6, v7, v0}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_5
    invoke-virtual {v2}, Lg/acn;->_e()V

    new-instance v6, Lg/afh;

    invoke-virtual {v2}, Lg/fqh;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lg/fqh;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lg/os;->zza()V

    iget-object v9, v2, Lg/fqh;->p:Ljava/lang/String;

    invoke-virtual {v2}, Lg/os;->zza()V

    iget v0, v2, Lg/fqh;->u:I

    int-to-long v10, v0

    invoke-virtual {v2}, Lg/os;->zza()V

    iget-object v0, v2, Lg/fqh;->j:Ljava/lang/String;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v12, v2, Lg/fqh;->j:Ljava/lang/String;

    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lg/cyg;

    iget-object v14, v13, Lg/cyg;->e:Lg/dsd;

    iget-object v15, v13, Lg/cyg;->m:Lg/dkq;

    move-wide/from16 v18, v3

    iget-object v3, v13, Lg/cyg;->z:Lg/bgm;

    iget-object v4, v13, Lg/cyg;->v:Landroid/content/Context;

    iget-object v5, v13, Lg/cyg;->b:Lg/gmr;

    invoke-virtual {v14}, Lg/dsd;->n()V

    invoke-virtual {v2}, Lg/os;->zza()V

    invoke-virtual {v2}, Lg/acn;->_e()V

    iget-wide v0, v2, Lg/fqh;->g:J

    move-wide/from16 v20, v0

    cmp-long v0, v20, v18

    if-nez v0, :cond_c

    invoke-static {v15}, Lg/cyg;->ai(Lg/bgf;)V

    iget-object v0, v15, Lg/bgf;->z:Ljava/lang/Object;

    const/16 p1, 0x0

    move-object v1, v0

    check-cast v1, Lg/cyg;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lg/bgf;->_e()V

    invoke-static {v0}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v22, v6

    invoke-static {}, Lg/dkq;->ap()Ljava/security/MessageDigest;

    move-result-object v6

    const-wide/16 v23, -0x1

    if-nez v6, :cond_8

    iget-object v0, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Could not get MD5 instance"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    move-object/from16 v25, v4

    move-object/from16 v26, v7

    :goto_6
    move-wide/from16 v0, v23

    goto/16 :goto_a

    :cond_8
    if-eqz v20, :cond_b

    :try_start_0
    invoke-virtual {v15, v4, v0}, Lg/dkq;->cc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v4}, Lg/chk;->c(Landroid/content/Context;)Lg/ccb;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v25, v4

    :try_start_1
    iget-object v4, v1, Lg/cyg;->v:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v26, v7

    const/16 v7, 0x40

    :try_start_2
    invoke-virtual {v0, v7, v4}, Lg/ccb;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_9

    array-length v4, v0

    if-lez v4, :cond_9

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lg/dkq;->u([B)J

    move-result-wide v23

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_9
    iget-object v0, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->g:Lg/dvb;

    const-string v4, "Could not get signatures"

    invoke-virtual {v0, v4}, Lg/dvb;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_7
    move-object/from16 v26, v7

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v25, v4

    goto :goto_7

    :cond_a
    move-object/from16 v25, v4

    move-object/from16 v26, v7

    move-wide/from16 v23, v18

    goto :goto_6

    :goto_8
    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v4, "Package name not found"

    invoke-virtual {v1, v0, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    move-wide/from16 v0, v18

    goto :goto_a

    :cond_b
    move-object/from16 v25, v4

    move-object/from16 v26, v7

    goto :goto_9

    :goto_a
    iput-wide v0, v2, Lg/fqh;->g:J

    :goto_b
    move-wide/from16 v6, v18

    goto :goto_c

    :cond_c
    move-object/from16 v25, v4

    move-object/from16 v22, v6

    move-object/from16 v26, v7

    const/16 p1, 0x0

    move-wide/from16 v0, v20

    goto :goto_b

    :goto_c
    invoke-virtual {v13}, Lg/cyg;->as()Z

    move-result v18

    invoke-static {v5}, Lg/cyg;->ai(Lg/bgf;)V

    iget-boolean v4, v5, Lg/gmr;->c:Z

    move-wide/from16 v19, v6

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    invoke-virtual {v2}, Lg/acn;->_e()V

    invoke-virtual {v13}, Lg/cyg;->as()Z

    move-result v7

    if-nez v7, :cond_d

    :goto_d
    move-wide/from16 v23, v0

    :goto_e
    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_d
    sget-object v7, Lg/axm;->a:Lg/axm;

    iget-object v7, v7, Lg/axm;->b:Lg/dvf;

    invoke-interface {v7}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/dzb;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lg/gad;->ar:Lg/tw;

    const/4 v6, 0x0

    invoke-virtual {v14, v6, v7}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v3, v3, Lg/bgm;->c:Lg/dvb;

    const-string v6, "Disabled IID for tests."

    invoke-virtual {v3, v6}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_d

    :cond_e
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    if-nez v6, :cond_f

    goto :goto_d

    :cond_f
    move-wide/from16 v23, v0

    const/4 v7, 0x1

    :try_start_4
    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, p1

    const-string v1, "getInstance"

    invoke-virtual {v6, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v25, v1, p1

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v0, :cond_10

    move-object v6, v7

    goto :goto_f

    :cond_10
    :try_start_5
    const-string v1, "getFirebaseInstanceId"

    invoke-virtual {v6, v1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v6, v0

    goto :goto_f

    :catch_3
    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v3, Lg/bgm;->h:Lg/dvb;

    const-string v1, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_e

    :catch_4
    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v3, Lg/bgm;->j:Lg/dvb;

    const-string v1, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_e

    :catch_5
    move-wide/from16 v23, v0

    nop

    goto :goto_e

    :goto_f
    iget-wide v0, v13, Lg/cyg;->ah:J

    iget-object v3, v5, Lg/gmr;->ap:Lg/fou;

    move v7, v4

    invoke-virtual {v3}, Lg/fou;->f()J

    move-result-wide v3

    cmp-long v25, v3, v19

    if-nez v25, :cond_11

    goto :goto_10

    :cond_11
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_10
    invoke-virtual {v2}, Lg/os;->zza()V

    iget v3, v2, Lg/fqh;->m:I

    const-string v4, "google_analytics_adid_collection_enabled"

    invoke-virtual {v14, v4}, Lg/dsd;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_11

    :cond_12
    move-wide/from16 v27, v19

    move/from16 v19, v7

    move-object/from16 v7, v26

    const/16 v26, 0x0

    goto :goto_12

    :cond_13
    :goto_11
    move-wide/from16 v27, v19

    move/from16 v19, v7

    move-object/from16 v7, v26

    const/16 v26, 0x1

    :goto_12
    invoke-virtual {v5}, Lg/bgf;->_e()V

    invoke-virtual {v5}, Lg/gmr;->ar()Landroid/content/SharedPreferences;

    move-result-object v4

    move-wide/from16 v29, v0

    const-string v0, "deferred_analytics_collection"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2}, Lg/os;->zza()V

    iget-object v1, v2, Lg/fqh;->r:Ljava/lang/String;

    const-string v4, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v14, v4}, Lg/dsd;->h(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_14

    const/4 v4, 0x0

    :goto_13
    move/from16 v20, v0

    move-object/from16 v25, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v21, 0x1

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_13

    :goto_14
    iget-wide v0, v2, Lg/fqh;->q:J

    move-wide/from16 v31, v0

    iget-object v0, v2, Lg/fqh;->l:Ljava/util/List;

    invoke-virtual {v5}, Lg/gmr;->as()Lg/rs;

    move-result-object v1

    invoke-virtual {v1}, Lg/rs;->f()Ljava/lang/String;

    move-result-object v34

    iget-object v1, v2, Lg/fqh;->n:Ljava/lang/String;

    if-nez v1, :cond_16

    sget-object v1, Lg/gad;->bt:Lg/tw;

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v1}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v15}, Lg/cyg;->ai(Lg/bgf;)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v15}, Lg/dkq;->av()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v15, Ljava/math/BigInteger;

    move-object/from16 v33, v0

    const/4 v0, 0x1

    invoke-direct {v15, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v15, v0, v1

    const-string v1, "%032x"

    invoke-static {v5, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lg/fqh;->n:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v33, v0

    const-string v0, ""

    iput-object v0, v2, Lg/fqh;->n:Ljava/lang/String;

    goto :goto_15

    :cond_16
    move-object/from16 v33, v0

    :goto_15
    iget-object v0, v2, Lg/fqh;->n:Ljava/lang/String;

    invoke-static {}, Lg/eur;->c()V

    sget-object v1, Lg/gad;->az:Lg/tw;

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v1}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Lg/acn;->_e()V

    iget-wide v14, v2, Lg/fqh;->h:J

    cmp-long v1, v14, v27

    if-nez v1, :cond_17

    move-object/from16 v35, v0

    goto :goto_16

    :cond_17
    iget-object v1, v13, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v35, v0

    iget-wide v0, v2, Lg/fqh;->h:J

    sub-long/2addr v13, v0

    iget-object v0, v2, Lg/fqh;->k:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-wide/32 v0, 0x5265c00

    cmp-long v5, v13, v0

    if-lez v5, :cond_18

    iget-object v0, v2, Lg/fqh;->s:Ljava/lang/String;

    if-nez v0, :cond_18

    invoke-virtual {v2}, Lg/fqh;->w()V

    :cond_18
    :goto_16
    iget-object v0, v2, Lg/fqh;->k:Ljava/lang/String;

    if-nez v0, :cond_19

    invoke-virtual {v2}, Lg/fqh;->w()V

    :cond_19
    iget-object v5, v2, Lg/fqh;->k:Ljava/lang/String;

    :goto_17
    move-object/from16 v36, v5

    move/from16 v27, v20

    move-object/from16 v20, v6

    move-object/from16 v6, v22

    goto :goto_18

    :cond_1a
    move-object/from16 v35, v0

    goto :goto_17

    :goto_18
    const-wide/16 v21, 0x0

    move-wide/from16 v15, v23

    move-wide/from16 v23, v29

    move-wide/from16 v30, v31

    move-object/from16 v32, v33

    const/16 v33, 0x0

    const-wide/32 v13, 0x11d28

    move-object/from16 v29, v4

    move-object/from16 v28, v25

    move/from16 v25, v3

    invoke-direct/range {v6 .. v36}, Lg/afh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final r(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v0

    new-instance v1, Lg/eax;

    const/16 v2, 0x12

    invoke-direct {v1, p0, p1, v0, v2}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Ljava/lang/Runnable;)V
    .locals 7

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/dbb;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v1, p0, Lg/dbb;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    iget-object p1, v0, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lg/dvb;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/dbb;->j:Lg/cvk;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lg/emo;->j(J)V

    invoke-virtual {p0}, Lg/dbb;->an()V

    return-void
.end method

.method public final t(Lg/bou;)V
    .locals 7

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lg/cyg;->an()Lg/efm;

    move-result-object v0

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v2, v1, Lg/cyg;->m:Lg/dkq;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-static {p1}, Lg/dkq;->w(Landroid/os/Parcelable;)[B

    move-result-object v2

    array-length v3, v2

    const/high16 v4, 0x20000

    if-le v3, v4, :cond_0

    iget-object v0, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->a:Lg/dvb;

    const-string v1, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lg/efm;->l(I[B)Z

    move-result v0

    move v4, v0

    :goto_0
    new-instance v5, Lg/bou;

    invoke-direct {v5, p1}, Lg/bou;-><init>(Lg/bou;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lg/dbb;->q(Z)Lg/afh;

    move-result-object v3

    new-instance v1, Lg/edg;

    const/4 v6, 0x2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lg/edg;-><init>(Lg/dbb;Lg/afh;ZLg/exk;I)V

    invoke-virtual {p0, v1}, Lg/dbb;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/dbb;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    iget-object v0, p0, Lg/dbb;->l:Lg/ake;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 4

    invoke-virtual {p0}, Lg/acn;->_e()V

    invoke-virtual {p0}, Lg/os;->zza()V

    invoke-virtual {p0}, Lg/dbb;->ao()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->m:Lg/dkq;

    invoke-static {v0}, Lg/cyg;->ai(Lg/bgf;)V

    invoke-virtual {v0}, Lg/dkq;->ay()I

    move-result v0

    sget-object v2, Lg/gad;->bg:Lg/tw;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public final x()V
    .locals 3

    invoke-virtual {p0}, Lg/acn;->_e()V

    iget-object v0, p0, Lg/dbb;->g:Lg/fmk;

    iget-object v1, v0, Lg/fmk;->c:Ljava/lang/Object;

    check-cast v1, Lg/cvb;

    check-cast v1, Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lg/fmk;->b:J

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lg/gad;->an:Lg/tw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/tw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lg/dbb;->h:Lg/cvk;

    invoke-virtual {v2, v0, v1}, Lg/emo;->j(J)V

    return-void
.end method

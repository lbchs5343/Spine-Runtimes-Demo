.class public final Lg/fdc;
.super Lg/gdx;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v3, "duplicatelog"

    const-string v5, "path=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :catch_1
    sget-object p1, Lg/eca;->c:Landroid/content/Context;

    :goto_0
    if-lez p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lg/aak;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lg/aak;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lg/fdc;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lg/gdx;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    :try_start_0
    const-string p2, "delete from duplicatelog where _id in (select _id from duplicatelog order by insert_time desc limit 1000 offset 500)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lg/eca;->c:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lg/aak;

    invoke-virtual {p0, p1, p2}, Lg/fdc;->insert(Landroid/database/sqlite/SQLiteDatabase;Lg/aak;)V

    return-void
.end method

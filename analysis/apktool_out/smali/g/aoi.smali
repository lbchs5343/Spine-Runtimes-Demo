.class public final synthetic Lg/aoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/avy;
.implements Lg/bwb;
.implements Lg/ghx;
.implements Lg/avn;
.implements Lg/dbd;
.implements Lg/ery;
.implements Lg/cbr;
.implements Lg/bqq;
.implements Lg/hs;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/aoi;->a:I

    iput-object p2, p0, Lg/aoi;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _bj(Lg/anf;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lg/anf;->l(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation_failed"

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "error"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public _bq(Lg/hed;Lg/cfm;)Z
    .locals 5

    iget-object v0, p0, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/guv;

    iget-object v3, v2, Lg/guv;->a:Lg/fza;

    invoke-interface {p2}, Lg/cfm;->x()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2, v2, v3}, Lg/gbo;->a(Lg/cfm;Lg/guv;Lg/fza;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t wrap try/catch for region: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/ebh;->bs(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lg/aga;)Lg/fgd;
    .locals 7

    iget-object v0, p0, Lg/aoi;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p1, Lg/aga;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object p1, p1, Lg/aga;->c:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lg/dsg;

    const-string p1, "callback"

    invoke-static {v4, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    new-instance v1, Lg/exq;

    const/4 v5, 0x1

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lg/exq;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/dsg;ZZ)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 1

    iget-object p1, p0, Lg/aoi;->b:Ljava/lang/Object;

    check-cast p1, Lg/gwf;

    iget-object v0, p1, Lg/gwf;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lg/gwf;->l(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lg/xa;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lg/aoi;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public f(Lg/evf;ILandroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v0, Lg/duo;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p1, Lg/evf;->f:Ljava/lang/Object;

    check-cast p2, Lg/cdx;

    invoke-interface {p2}, Lg/cdx;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p1, Lg/evf;->f:Ljava/lang/Object;

    check-cast p2, Lg/cdx;

    invoke-interface {p2}, Lg/cdx;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v2

    :goto_0
    const-string v2, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    new-instance p2, Landroid/content/ClipData;

    iget-object p1, p1, Lg/evf;->f:Ljava/lang/Object;

    check-cast p1, Lg/cdx;

    invoke-interface {p1}, Lg/cdx;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-interface {p1}, Lg/cdx;->c()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v2, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/16 v2, 0x1f

    const/4 v4, 0x2

    if-lt v1, v2, :cond_2

    new-instance v1, Lg/emr;

    invoke-direct {v1, p2, v4}, Lg/emr;-><init>(Landroid/content/ClipData;I)V

    goto :goto_1

    :cond_2
    new-instance v1, Lg/euf;

    invoke-direct {v1}, Lg/euf;-><init>()V

    iput-object p2, v1, Lg/euf;->j:Landroid/content/ClipData;

    iput v4, v1, Lg/euf;->f:I

    :goto_1
    invoke-interface {p1}, Lg/cdx;->e()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v1, p1}, Lg/atd;->e(Landroid/net/Uri;)V

    invoke-interface {v1, p3}, Lg/atd;->setExtras(Landroid/os/Bundle;)V

    invoke-interface {v1}, Lg/atd;->build()Lg/dui;

    move-result-object p1

    invoke-static {v0, p1}, Lg/goi;->k(Landroid/view/View;Lg/dui;)Lg/dui;

    move-result-object p1

    if-nez p1, :cond_3

    return v3

    :catch_0
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lg/eje;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v0, Lg/ghn;

    new-instance v1, Lg/cul;

    invoke-direct {v1, p1, v0}, Lg/cul;-><init>(Lg/eje;Lg/ghn;)V

    new-instance p1, Lg/bht;

    invoke-direct {p1, v1}, Lg/bht;-><init>(Lg/and;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lg/fyw;->ag(ZZLg/era;)Lg/edw;

    const-string p1, "Deferred.asListenableFuture"

    return-object p1
.end method

.method public h(JLjava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lg/aoi;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lg/bnl;->u(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x1

    :try_start_0
    new-array p2, p2, [Ljava/nio/file/CopyOption;

    invoke-static {}, Lg/cnh;->c()Ljava/nio/file/StandardCopyOption;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p3, p1, p2}, Lg/cnh;->r(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p2

    invoke-static {p1}, Lg/cnh;->z(Ljava/nio/file/Path;)V

    new-instance p1, Lg/gck;

    const-string p3, "Resource file save error"

    invoke-direct {p1, p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public i()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lg/aoi;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lg/aoi;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lg/efs;

    iget-object v0, v4, Lg/efs;->c:Lg/ahy;

    check-cast v0, Lg/cga;

    new-instance v5, Lg/kf;

    const/16 v6, 0x1d

    invoke-direct {v5, v6}, Lg/kf;-><init>(I)V

    invoke-virtual {v0, v5}, Lg/cga;->j(Lg/fbg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ku;

    iget-object v6, v4, Lg/efs;->d:Lg/ahe;

    invoke-virtual {v6, v5, v2, v3}, Lg/ahe;->d(Lg/ku;IZ)V

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_0
    check-cast v4, Lg/dwp;

    iget-object v0, v4, Lg/dwp;->f:Lg/gv;

    check-cast v0, Lg/cga;

    invoke-virtual {v0}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v3, "DELETE FROM log_event_dropped"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lg/cga;->f:Lg/cqi;

    invoke-interface {v0}, Lg/cqi;->l()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_1
    check-cast v4, Lg/ahy;

    check-cast v4, Lg/cga;

    iget-object v0, v4, Lg/cga;->f:Lg/cqi;

    invoke-interface {v0}, Lg/cqi;->l()J

    move-result-wide v0

    iget-object v5, v4, Lg/cga;->c:Lg/gnn;

    iget-wide v5, v5, Lg/gnn;->b:J

    sub-long/2addr v0, v5

    invoke-virtual {v4}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v6, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    int-to-long v8, v6

    sget-object v6, Lg/gwo;->MESSAGE_TOO_OLD:Lg/gwo;

    invoke-virtual {v4, v8, v9, v6, v7}, Lg/cga;->l(JLg/gwo;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, "events"

    const-string v2, "timestamp_ms < ?"

    invoke-virtual {v5, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_2
    check-cast v4, Lg/gv;

    check-cast v4, Lg/cga;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lg/dwq;->a:I

    new-instance v0, Lg/duw;

    invoke-direct {v0, v2, v3}, Lg/duw;-><init>(IZ)V

    iput-object v1, v0, Lg/duw;->h:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg/duw;->d:Ljava/lang/Object;

    iput-object v1, v0, Lg/duw;->e:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lg/duw;->f:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-virtual {v4}, Lg/cga;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_5
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Lg/gkn;

    const/4 v6, 0x5

    invoke-direct {v3, v4, v1, v0, v6}, Lg/gkn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lg/cga;->h(Landroid/database/Cursor;Lg/fbg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dwq;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_3
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lg/dzh;)Lg/fks;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v2, Lg/cov;

    iget-object v3, v0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v3, Ljava/net/URL;

    const-string v4, "CctTransportBackend"

    invoke-static {v4}, Lg/baf;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    const-string v9, "Making request to: %s"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v5, v2, Lg/cov;->g:I

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "User-Agent"

    const-string v9, "datatransport/3.1.8 android/"

    invoke-virtual {v3, v5, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Encoding"

    const-string v9, "gzip"

    invoke-virtual {v3, v5, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "application/json"

    const-string v11, "Content-Type"

    invoke-virtual {v3, v11, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Accept-Encoding"

    invoke-virtual {v3, v10, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string v12, "X-Goog-Api-Key"

    invoke-virtual {v3, v12, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lg/fgn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v15, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v15, v14}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v2, v2, Lg/cov;->c:Lg/emr;

    iget-object v0, v0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Lg/aeq;

    const/16 v22, 0x0

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v16, Lg/dag;

    iget-object v2, v2, Lg/emr;->n:Ljava/lang/Object;

    check-cast v2, Lg/tu;

    iget-object v10, v2, Lg/tu;->f:Ljava/util/HashMap;

    iget-object v12, v2, Lg/tu;->g:Ljava/util/HashMap;

    iget-object v13, v2, Lg/tu;->h:Lg/ehz;

    iget-boolean v2, v2, Lg/tu;->e:Z

    move/from16 v21, v2

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Lg/dag;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;Lg/ehz;Z)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Lg/dag;->j(Ljava/lang/Object;)Lg/dag;

    invoke-virtual {v2}, Lg/dag;->m()V

    iget-object v0, v2, Lg/dag;->g:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v14, :cond_2

    :try_start_4
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lg/fgn; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    :goto_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Lg/baf;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v22

    const-string v2, "Status Code: %d"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    const-string v2, "Content-Type: %s"

    invoke-virtual {v3, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lg/baf;->ax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Content-Encoding: %s"

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lg/baf;->ax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_b

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_b

    const/16 v2, 0x133

    if-ne v0, v2, :cond_4

    goto :goto_7

    :cond_4
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_5

    new-instance v2, Lg/fks;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, Lg/fks;-><init>(ILjava/net/URL;J)V

    return-object v2

    :cond_5
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4}, Lg/gdf;->b(Ljava/io/BufferedReader;)Lg/gdf;

    move-result-object v4

    iget-wide v4, v4, Lg/gdf;->a:J

    new-instance v6, Lg/fks;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4, v5}, Lg/fks;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    return-object v6

    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    if-eqz v2, :cond_a

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v3

    :cond_b
    :goto_7
    const-string v2, "Location"

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lg/fks;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lg/fks;-><init>(ILjava/net/URL;J)V

    return-object v3

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :goto_8
    move-object v2, v0

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_8

    :goto_9
    :try_start_b
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    :try_start_c
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_b
    if-eqz v14, :cond_c

    :try_start_d
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    throw v2
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lg/fgn; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :goto_d
    const-string v2, "Couldn\'t encode request, returning with 400"

    invoke-static {v4, v2, v0}, Lg/baf;->bd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lg/fks;

    const/16 v2, 0x190

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v2, v7, v5, v6}, Lg/fks;-><init>(ILjava/net/URL;J)V

    goto :goto_f

    :goto_e
    const-string v2, "Couldn\'t open connection, returning with 500"

    invoke-static {v4, v2, v0}, Lg/baf;->bd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lg/fks;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v7, v5, v6}, Lg/fks;-><init>(ILjava/net/URL;J)V

    :goto_f
    return-object v0
.end method

.method public k(Landroid/view/View;Lg/anp;)Lg/anp;
    .locals 9

    iget v0, p0, Lg/aoi;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v0, Lg/frf;

    const/16 v1, 0x287

    iget-object v2, p2, Lg/anp;->b:Lg/dif;

    invoke-virtual {v2, v1}, Lg/dif;->i(I)Lg/oi;

    move-result-object v1

    iget v2, v0, Lg/frf;->c:I

    iget-boolean v3, v0, Lg/frf;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget v5, v1, Lg/oi;->c:I

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v2, v5

    iget v5, v0, Lg/frf;->e:I

    iget-boolean v6, v0, Lg/frf;->b:Z

    if-eqz v6, :cond_1

    iget v6, v1, Lg/oi;->d:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v5, v6

    iget v6, v0, Lg/frf;->f:I

    if-eqz v3, :cond_2

    iget v7, v1, Lg/oi;->e:I

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    add-int/2addr v6, v7

    iget v0, v0, Lg/frf;->a:I

    if-eqz v3, :cond_3

    iget v4, v1, Lg/oi;->b:I

    :cond_3
    add-int/2addr v0, v4

    invoke-virtual {p1, v2, v5, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :pswitch_0
    iget-object v0, p0, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v0, Lg/efx;

    iget-object v1, p2, Lg/anp;->b:Lg/dif;

    const/16 v2, 0x287

    invoke-virtual {v1, v2}, Lg/dif;->i(I)Lg/oi;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lg/dif;->i(I)Lg/oi;

    move-result-object v4

    iget v4, v4, Lg/oi;->b:I

    iget v5, v2, Lg/oi;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v7, v2, Lg/oi;->e:I

    iget v8, v2, Lg/oi;->b:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Lg/dif;->h(I)Z

    move-result p1

    iput-boolean p1, v0, Lg/efx;->bf:Z

    invoke-virtual {v0}, Lg/efx;->bm()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_4

    new-instance p1, Lg/bru;

    invoke-direct {p1, p2}, Lg/bru;-><init>(Lg/anp;)V

    goto :goto_3

    :cond_4
    const/16 v0, 0x1f

    if-lt p1, v0, :cond_5

    new-instance p1, Lg/ghh;

    invoke-direct {p1, p2}, Lg/ghh;-><init>(Lg/anp;)V

    goto :goto_3

    :cond_5
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_6

    new-instance p1, Lg/yd;

    invoke-direct {p1, p2}, Lg/yd;-><init>(Lg/anp;)V

    goto :goto_3

    :cond_6
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_7

    new-instance p1, Lg/bbb;

    invoke-direct {p1, p2}, Lg/bbb;-><init>(Lg/anp;)V

    goto :goto_3

    :cond_7
    new-instance p1, Lg/gjd;

    invoke-direct {p1, p2}, Lg/gjd;-><init>(Lg/anp;)V

    :goto_3
    iget p2, v2, Lg/oi;->c:I

    iget v0, v2, Lg/oi;->d:I

    const/4 v1, 0x0

    invoke-static {p2, v0, v7, v1}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p2

    const/16 v0, 0x207

    invoke-virtual {p1, v0, p2}, Lg/ecs;->a(ILg/oi;)V

    sget-object p2, Lg/oi;->a:Lg/oi;

    invoke-virtual {p1, v3, p2}, Lg/ecs;->a(ILg/oi;)V

    invoke-virtual {p1}, Lg/ecs;->g()Lg/anp;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lg/cro;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile n:Lorg/json/JSONObject;

.field public static final o:Lg/hy;

.field public static p:Z

.field public static q:Lg/cuf;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/hy;

    const-string v1, "CLOSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/cro;->o:Lg/hy;

    return-void
.end method

.method public static aa(Landroid/app/Activity;Lg/ert;)V
    .locals 2

    sput-object p1, Lg/bli;->n:Lg/ert;

    iget-object v0, p1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {p0, v0}, Lg/acr;->av(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "fail_accessibility_not_in_scope"

    iget-object p1, p1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120225

    invoke-static {p0, p1}, Lg/gm;->f(Landroid/content/Context;I)V

    sput-object v1, Lg/bli;->n:Lg/ert;

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lg/afo;->ao(Landroid/content/Context;Z)Z

    move-result p0

    if-nez p0, :cond_1

    sput-object v1, Lg/bli;->n:Lg/ert;

    :cond_1
    return-void
.end method

.method public static ab(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lg/bfc;->o(Ljava/io/Closeable;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v1}, Lg/bfc;->o(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static final ac(Landroidx/work/impl/WorkDatabase;Lg/flk;Lg/pc;)V
    .locals 5

    const-string v0, "workDatabase"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lg/pc;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lg/grj;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p2}, Lg/eko;->b(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/pc;

    iget-object v2, v2, Lg/pc;->h:Ljava/util/List;

    const-string v3, "current.work"

    invoke-static {v2, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dze;

    iget-object v4, v4, Lg/dze;->b:Lg/fkj;

    iget-object v4, v4, Lg/fkj;->r:Lg/bho;

    invoke-virtual {v4}, Lg/bho;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Count overflow has happened."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    add-int/2addr v0, v3

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    invoke-static {v1, p2}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object p2

    iget-object p0, p0, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Lg/gac;->al()V

    invoke-virtual {p0, p2}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_7
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p2}, Lg/fcg;->p()V

    iget p0, p1, Lg/flk;->k:I

    add-int p1, v1, v0

    if-gt p1, p0, :cond_8

    :goto_4
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, ";\nalready enqueued count: "

    const-string v2, ";\ncurrent enqueue operation count: "

    const-string v3, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    invoke-static {p0, v1, v3, p2, v2}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    invoke-static {p0, v0, p2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p2}, Lg/fcg;->p()V

    throw p1
.end method

.method public static ad(Landroid/content/Context;)V
    .locals 12

    invoke-static {}, Lg/fnp;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120547

    goto :goto_0

    :cond_0
    const v0, 0x7f120548

    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    const v3, 0x7f12054a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "message_is_html"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lg/fml;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120078

    goto :goto_1

    :cond_1
    const v0, 0x7f120079

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    const-string v3, "adUnitId"

    invoke-static {v0}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg/fnp;->p()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    const v0, 0x7f06004e

    :goto_3
    new-instance v4, Lg/dao;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const v5, 0x7f120082

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lg/fnp;->p()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, -0x1

    goto :goto_4

    :cond_4
    const v6, 0x7f0600a2

    :goto_4
    new-instance v7, Lg/dvt;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lg/dvt;-><init>(Landroid/content/Context;I)V

    const v8, 0x7f120084

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    check-cast p0, Landroid/app/Activity;

    new-instance v9, Lg/gqo;

    invoke-direct {v9}, Lg/gqo;-><init>()V

    iget-object v10, v9, Lg/gqo;->f:Landroid/widget/TextView;

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {v9, v6, v7, v8}, Lg/gqo;->x(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    const/16 v6, 0x8

    iput v6, v9, Lg/gqo;->h:I

    iget-object v7, v9, Lg/gqo;->l:Landroid/widget/TextView;

    if-eqz v7, :cond_6

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {v9, v3, v2, v2}, Lg/gqo;->z(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    iget-object v3, v9, Lg/gqo;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {v9, v0, v4, v5}, Lg/gqo;->y(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    iput-object v2, v9, Lg/gqo;->e:Lg/du;

    iput v11, v9, Lg/gqo;->m:I

    invoke-static {p0, v9, v1, v11}, Lg/kj;->t(Landroid/app/Activity;Lg/cqo;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static ae(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    const-string v0, "TrineaAndroidCommon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static af(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    const-string v0, "TrineaAndroidCommon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public static ag(Ljava/lang/String;)Lg/ja;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lg/cro;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lg/ja;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lg/ja;-><init>(I)V

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/ja;->a:Ljava/lang/Object;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lg/ja;->b:Ljava/lang/Object;

    const-string v1, "dump_file"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "encrypt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/ja;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ah(Ljava/lang/Object;)Lg/gey;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lg/gey;->i:Lg/hee;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lg/bsa;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    new-instance v0, Lg/hbz;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    new-instance v0, Lg/hbz;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    new-instance v0, Lg/hbz;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    new-instance v0, Lg/bbk;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lg/bbk;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_9

    new-instance v0, Lg/byt;

    invoke-direct {v0}, Lg/byt;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lg/cro;->ah(Ljava/lang/Object;)Lg/gey;

    move-result-object v3

    if-eqz v2, :cond_6

    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lg/byt;->a(Ljava/lang/String;Lg/gey;)V

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_b

    new-instance v0, Lg/gwa;

    invoke-direct {v0}, Lg/gwa;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lg/cro;->ah(Ljava/lang/Object;)Lg/gey;

    move-result-object v1

    invoke-virtual {v0}, Lg/gwa;->s()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lg/gwa;->r(ILg/gey;)V

    goto :goto_1

    :cond_a
    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ai(Lg/aqu;)Lg/gey;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lg/gey;->o:Lg/gdz;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lg/aqu;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lg/aqu;->b()Lg/cwe;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/aqu;

    invoke-static {v2}, Lg/cro;->ai(Lg/aqu;)Lg/gey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/aqu;->g()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lg/fud;

    invoke-direct {v0, v1, p0}, Lg/fud;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type found. Cannot convert entity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Lg/aqu;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lg/bbk;

    invoke-virtual {p0}, Lg/aqu;->f()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/bbk;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_4
    new-instance p0, Lg/bbk;

    invoke-direct {p0, v2}, Lg/bbk;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lg/aqu;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lg/hbz;

    invoke-virtual {p0}, Lg/aqu;->d()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_6
    new-instance p0, Lg/hbz;

    invoke-direct {p0, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lg/aqu;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lg/bsa;

    invoke-virtual {p0}, Lg/aqu;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    sget-object p0, Lg/gey;->p:Lg/bsa;

    return-object p0
.end method

.method public static aj(Landroid/content/Intent;)Lg/cgg;
    .locals 2

    sget-object v0, Lg/cro;->q:Lg/cuf;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    const-string v0, "ts"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lg/cgg;

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance p0, Lg/cgg;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lg/cgg;-><init>(IIZ)V

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "TrineaAndroidCommon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static al(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static final am(Ljava/util/List;Lg/fkj;)Lg/fkj;
    .locals 14

    move-object v0, p1

    const-string v1, "schedulers"

    invoke-static {p0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "workSpec"

    invoke-static {p1, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lg/fkj;->g:Lg/dwa;

    const-string v2, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    invoke-virtual {v1, v2}, Lg/dwa;->e(Ljava/lang/String;)Z

    move-result v1

    iget-object v3, v0, Lg/fkj;->g:Lg/dwa;

    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Lg/dwa;->e(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v0, Lg/fkj;->g:Lg/dwa;

    const-string v5, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v4, v5}, Lg/dwa;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v1, v0, Lg/fkj;->u:Ljava/lang/String;

    new-instance v3, Lg/evf;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lg/evf;-><init>(I)V

    iget-object v4, v3, Lg/evf;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    iget-object v5, v0, Lg/fkj;->g:Lg/dwa;

    const-string v6, "data"

    invoke-static {v5, v6}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Lg/dwa;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lg/evf;->r(Ljava/util/HashMap;)V

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/dwa;

    invoke-direct {v1, v4}, Lg/dwa;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v1}, Lg/bff;->k(Lg/dwa;)[B

    const/4 v12, 0x0

    const v13, 0xffffeb

    move-object v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v0 .. v13}, Lg/fkj;->y(Lg/fkj;Ljava/lang/String;Lg/gys;Ljava/lang/String;Lg/dwa;IJIIJII)Lg/fkj;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v2, v1, :cond_1

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    invoke-static {v0}, Lg/cro;->ay(Lg/fkj;)Lg/fkj;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v2, 0x16

    if-gt v1, v2, :cond_4

    const-string v1, "androidx.work.impl.background.gcm.GcmScheduler"

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/giw;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    invoke-static {v0}, Lg/cro;->ay(Lg/fkj;)Lg/fkj;

    move-result-object v0

    :catch_0
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static an(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    const-string v0, "TrineaAndroidCommon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static ao(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lg/bfc;->o(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lg/bfc;->o(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static ap(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "https://apmplus.volces.com/apm/collect/crash"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p1, "url"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "body"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "dump_file"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "encrypt"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v1, p0, p1}, Lg/cro;->ao(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final aq(II)V
    .locals 3

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toIndex ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is greater than size ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ar(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const v1, 0x7f13028f

    invoke-static {p0, v1}, Lg/bff;->g(Landroid/widget/TextView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1301c0

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070443

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070444

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0, p2, p1, v0, p1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static as(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 8

    const/16 v0, 0x400

    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    int-to-long v6, v5

    add-long/2addr v2, v6

    invoke-virtual {p1, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p0}, Lg/cro;->al(Ljava/io/Closeable;)V

    invoke-static {p1}, Lg/cro;->al(Ljava/io/Closeable;)V

    :cond_1
    return-wide v2

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lg/cro;->al(Ljava/io/Closeable;)V

    invoke-static {p1}, Lg/cro;->al(Ljava/io/Closeable;)V

    :goto_2
    throw v0
.end method

.method public static at(Lorg/json/JSONObject;)V
    .locals 5

    sget-object v0, Lg/eca;->e:Lg/dzh;

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    iget-object v1, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v1, Lg/cmc;

    invoke-interface {v1}, Lg/cmc;->mn()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lg/dzh;->g:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string v0, "custom"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lg/eca;->c:Landroid/content/Context;

    :cond_3
    return-void
.end method

.method public static au(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method

.method public static av(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2

    const-string v0, "TrineaAndroidCommon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static aw(Landroid/view/Window;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lg/eyf;->a(Landroid/view/Window;Z)V

    return-void

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lg/eyf;->f(Landroid/view/Window;Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_2

    and-int/lit16 p1, v0, -0x701

    goto :goto_0

    :cond_2
    or-int/lit16 p1, v0, 0x700

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static ax(Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Lg/cro;->bb(Landroid/view/ViewGroup;Landroid/view/View;)Ljava/lang/StringBuilder;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lg/ld;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lg/ld;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lg/goi;->c:Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v1, Lg/akz;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lg/akz;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lg/goi;->ab(Landroid/view/View;Lg/amk;)V

    return-void
.end method

.method public static final ay(Lg/fkj;)Lg/fkj;
    .locals 14

    iget-object v1, p0, Lg/fkj;->r:Lg/bho;

    iget-object v2, p0, Lg/fkj;->u:Ljava/lang/String;

    const-class v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v1, Lg/bho;->d:Z

    if-nez v4, :cond_0

    iget-boolean v1, v1, Lg/bho;->f:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lg/evf;

    const/4 v4, 0x7

    invoke-direct {v1, v4}, Lg/evf;-><init>(I)V

    iget-object v4, v1, Lg/evf;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lg/fkj;->g:Lg/dwa;

    const-string v6, "data"

    invoke-static {v5, v6}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Lg/dwa;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Lg/evf;->r(Ljava/util/HashMap;)V

    const-string v1, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/dwa;

    invoke-direct {v1, v4}, Lg/dwa;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v1}, Lg/bff;->k(Lg/dwa;)[B

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    const v13, 0xffffeb

    move-object v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v13}, Lg/fkj;->y(Lg/fkj;Ljava/lang/String;Lg/gys;Ljava/lang/String;Lg/dwa;IJIIJII)Lg/fkj;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static az(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const-string v0, "TrineaAndroidCommon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static ba(Lg/dms;Lg/cgg;)Z
    .locals 4

    sget-object v0, Lg/cro;->q:Lg/cuf;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lg/cgg;->getMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-static {p0, p1}, Lg/cux;->au(Landroid/content/Context;Lg/cgg;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lg/cgg;->isMultiProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/cgg;->getCode()I

    move-result v0

    invoke-static {v0}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg/cgg;->getCode()I

    move-result v0

    invoke-static {v0}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {p0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v3

    invoke-virtual {v3}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v3, Lg/fxe$a;->mTC:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lg/cgg;->isMultiProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lg/cgg;->getCode()I

    move-result p1

    invoke-static {p1}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p0, v0, p1}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lg/cgg;->getCode()I

    move-result p1

    invoke-static {p1}, Lg/cux;->az(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p0, v0, p1}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    return v2

    :cond_3
    const p1, 0x7f120209

    invoke-static {p0, p1}, Lg/gm;->c(Landroid/content/Context;I)V

    return v1

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public static bb(Landroid/view/ViewGroup;Landroid/view/View;)Ljava/lang/StringBuilder;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/widget/TextView;

    const/16 v4, 0x20

    if-eqz v3, :cond_3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lg/cro;->bb(Landroid/view/ViewGroup;Landroid/view/View;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public static final bc(JLg/ggb;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lg/bwn;->a:Lg/bwn;

    :goto_0
    iget-wide v1, p2, Lg/fu;->b:J

    cmp-long v3, v1, p0

    if-ltz v3, :cond_1

    invoke-virtual {p2}, Lg/fu;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    return-object p2

    :cond_1
    :goto_1
    sget-object v3, Lg/aym;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lg/cro;->o:Lg/hy;

    if-ne v4, v5, :cond_2

    return-object v5

    :cond_2
    check-cast v4, Lg/aym;

    check-cast v4, Lg/fu;

    if-eqz v4, :cond_3

    move-object p2, v4

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lg/bwn;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fu;

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v3, p2, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lg/fu;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lg/aym;->k()V

    :cond_5
    move-object p2, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_0
.end method

.method public static r(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(...)"

    invoke-static {p0, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static s(Lg/fpl;Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const v1, 0x7f090362

    invoke-virtual {p0, v1}, Lg/aoz;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900ad

    invoke-virtual {p0, v2}, Lg/aoz;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v0, p0

    sub-int/2addr v0, v2

    move-object p0, p1

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v2

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-lez p0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p0, :cond_0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static t(Landroid/content/Context;ZLg/gtf;)Lg/fpl;
    .locals 6

    invoke-static {p0}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v0

    iget-object v1, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/die;

    iget-object v1, v1, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00bd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f12034f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    invoke-static {}, Lg/fnp;->p()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f120371

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge p1, v4, :cond_2

    const-string p1, "\n\n"

    invoke-static {v2, p1}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v2, 0x7f120545

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const p1, 0x7f090226

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f120571

    invoke-virtual {v0, p1}, Lg/gmn;->p(I)V

    invoke-virtual {v0, v1}, Lg/gmn;->v(Landroid/view/View;)V

    new-instance p1, Lg/dvt;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Lg/dvt;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f12020a

    invoke-virtual {v0, p0, p1}, Lg/gmn;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    const p0, 0x7f120082

    invoke-virtual {v0, p0, v3}, Lg/gmn;->t(ILandroid/content/DialogInterface$OnClickListener;)V

    if-eqz p2, :cond_3

    new-instance p0, Lg/aip;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lg/aip;-><init>(ILjava/lang/Object;)V

    const p1, 0x7f1203a9

    invoke-virtual {v0, p1, p0}, Lg/gmn;->y(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    invoke-virtual {v0}, Lg/gmn;->r()Lg/fpl;

    move-result-object p0

    new-instance p1, Lg/ael;

    invoke-direct {p1, p0, v1}, Lg/ael;-><init>(Lg/fpl;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p0
.end method

.method public static u(Landroid/app/Activity;Lg/ert;Ljava/lang/String;)V
    .locals 7

    const-string v0, "fail_accessibility_switch_fail"

    iget-object v1, p1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lg/ert;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg/acw;->aa(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v0

    invoke-virtual {v0}, Lg/ark;->r()Z

    move-result v1

    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v2

    invoke-virtual {v0}, Lg/ark;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lg/qy;->UPDATE:Lg/qy;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    sget-object p2, Lg/qy;->START:Lg/qy;

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    sget-object p2, Lg/qy;->AUTHORIZE:Lg/qy;

    goto :goto_1

    :cond_3
    const-string v0, "connection_failed"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "connection_timeout"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    sget-object p2, Lg/qy;->RESULT_UNKNOWN:Lg/qy;

    goto :goto_1

    :cond_5
    :goto_0
    sget-object p2, Lg/qy;->CONNECTION:Lg/qy;

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_6
    sget-object v0, Lg/bqn;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x3

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    const v0, 0x7f120431

    goto :goto_2

    :cond_7
    const v0, 0x7f120416

    goto :goto_2

    :cond_8
    const v0, 0x7f120432

    goto :goto_2

    :cond_9
    const v0, 0x7f120433

    :goto_2
    invoke-static {p0}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v4

    const v5, 0x7f120435

    invoke-virtual {v4, v5}, Lg/gmn;->p(I)V

    invoke-static {p2}, Lg/cro;->x(Lg/qy;)I

    move-result v5

    invoke-virtual {p1, p0}, Lg/ert;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v5, v4, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v5, Lg/die;

    iput-object p1, v5, Lg/die;->m:Ljava/lang/CharSequence;

    new-instance p1, Lg/avd;

    invoke-direct {p1, p2, p0}, Lg/avd;-><init>(Lg/qy;Landroid/app/Activity;)V

    invoke-virtual {v4, v0, p1}, Lg/gmn;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lg/esm;

    invoke-direct {p1, p0, v1}, Lg/esm;-><init>(Landroid/app/Activity;I)V

    const p0, 0x7f12043c

    invoke-virtual {v4, p0, p1}, Lg/gmn;->y(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    const/4 p1, 0x0

    invoke-virtual {v4, p0, p1}, Lg/gmn;->t(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, Lg/gmn;->r()Lg/fpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->create()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    instance-of v0, p2, Landroidx/appcompat/widget/ButtonBarLayout;

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/widget/ButtonBarLayout;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setAllowStacking(Z)V

    :cond_a
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x800005

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f090314

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    const/4 v0, -0x2

    const/4 v1, -0x3

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    :goto_3
    if-ge v2, v3, :cond_c

    aget v4, p1, v2

    invoke-virtual {p0, v4}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    const p1, 0x102000b

    invoke-virtual {p0, p1}, Lg/aoz;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-virtual {p0, v0}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v1}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Lg/cro;->x(Lg/qy;)I

    move-result p2

    invoke-virtual {p1, p0}, Lg/ert;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lg/gm;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "null"

    if-nez p1, :cond_0

    move-object p1, v2

    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object p2, v2

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-static {p0}, Lg/afo;->as(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "crash_history"

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p2, p1, p0}, Lg/cro;->ao(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static w(Lg/boj;Lg/bto;)Lg/gbb;
    .locals 2

    sget-object v0, Lg/dwt;->DEFAULT:Lg/dwt;

    const-string v1, "context"

    invoke-static {p0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "start"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lg/gkn;

    invoke-direct {v1, p0, v0, p1}, Lg/gkn;-><init>(Lg/boj;Lg/dwt;Lg/bto;)V

    invoke-static {v1}, Lg/bfc;->e(Lg/dbd;)Lg/gbb;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lg/qy;)I
    .locals 1

    sget-object v0, Lg/bqn;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const p0, 0x7f120439

    return p0

    :cond_0
    const p0, 0x7f120434

    return p0

    :cond_1
    const p0, 0x7f120438

    return p0

    :cond_2
    const p0, 0x7f120437

    return p0

    :cond_3
    const p0, 0x7f12043a

    return p0
.end method

.method public static y(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 11

    const-string v0, "channel"

    const-string v1, "update_version_code"

    const-string v2, "app_version"

    const-string v3, "aid"

    const-string v4, "version_code"

    const-string v5, "Android"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "magic_tag"

    const-string v8, "ss_app_log"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v7, Lg/cro;->n:Lorg/json/JSONObject;

    if-nez v7, :cond_3

    sget-object v7, Lg/eca;->c:Landroid/content/Context;

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    sput-object v8, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v9, "os"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v8, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v9, "platform"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v8, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v9, "sdk_lib"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v8, "os_version"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v10, ".0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v8, "os_api"

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v5, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v8, "use_apm_sdk"

    const-string v9, "1"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v8, "sdk_version"

    const/16 v9, 0x89

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v5, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v8, "sdk_version_code"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v5, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v8, "sdk_version_name"

    const-string v9, "0.0.1-alpha.17-cloud"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v5, v8

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    :goto_1
    sget-object v9, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v10, "device_model"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v9, "device_brand"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v8, "device_manufacturer"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lg/cro;->n:Lorg/json/JSONObject;

    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lg/cro;->n:Lorg/json/JSONObject;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lg/cro;->n:Lorg/json/JSONObject;

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lg/cro;->n:Lorg/json/JSONObject;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v2, "manifest_version_code"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lg/cro;->n:Lorg/json/JSONObject;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v0, "bd_did"

    invoke-static {}, Lg/eca;->f()Lg/fc;

    move-result-object v1

    invoke-virtual {v1}, Lg/fc;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v1, "package"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lg/cro;->n:Lorg/json/JSONObject;

    const-string v0, "display_name"

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lg/cro;->n:Lorg/json/JSONObject;

    invoke-static {p0}, Lg/cro;->at(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string p0, "header"

    sget-object v2, Lg/cro;->n:Lorg/json/JSONObject;

    invoke-virtual {v6, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "local_time"

    invoke-virtual {v6, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "local_time_ms"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "tea_event_index"

    const/16 v4, 0x2711

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "session_id"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "datetime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "launch"

    invoke-virtual {v6, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v6
.end method

.method public static z(Landroid/view/View;)V
    .locals 2

    instance-of v0, p0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p0}, Lg/cro;->ax(Landroidx/appcompat/widget/SwitchCompat;)V

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lg/cro;->z(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract f(Lg/alw;)Lg/fwe;
.end method

.method public abstract g(Lg/alw;Lg/fwe;Lg/fwe;)Z
.end method

.method public abstract h(Lg/alw;)Lg/cye;
.end method

.method public abstract i(Lg/ail;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract j(Lg/cye;Ljava/lang/Thread;)V
.end method

.method public abstract k(Lg/cye;Lg/cye;)V
.end method

.method public abstract l(Lg/ail;Lg/cye;Lg/cye;)Z
.end method

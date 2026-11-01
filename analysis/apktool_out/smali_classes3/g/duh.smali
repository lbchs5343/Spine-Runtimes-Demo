.class public final Lg/duh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lg/avo;

.field public static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile d:I

.field public volatile e:Ljava/lang/Object;

.field public final f:Lg/gez;

.field public final synthetic g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/duh;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lg/duh;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/duh;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lg/duh;->d:I

    iget-object p4, p1, Lg/gez;->e:Ljava/lang/Object;

    check-cast p4, Landroid/net/Uri;

    if-eqz p4, :cond_0

    iput-object p1, p0, Lg/duh;->f:Lg/gez;

    iput-object p2, p0, Lg/duh;->h:Ljava/lang/String;

    iput-object p3, p0, Lg/duh;->i:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/duh;->g:I

    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid double value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/duh;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PhenotypeFlag"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_1
    sget-object v0, Lg/gsj;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    sget-object v0, Lg/gsj;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid boolean value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/duh;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PhenotypeFlag"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid long value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/duh;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PhenotypeFlag"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Ljava/lang/Object;
    .locals 6

    sget-object v0, Lg/duh;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lg/duh;->d:I

    if-ge v1, v0, :cond_d

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lg/duh;->d:I

    if-ge v1, v0, :cond_c

    sget-object v1, Lg/duh;->a:Lg/avo;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_b

    iget-object v2, p0, Lg/duh;->f:Lg/gez;

    iget-object v2, v2, Lg/gez;->e:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    iget-object v4, v1, Lg/avo;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lg/dka;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lg/avo;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lg/duh;->f:Lg/gez;

    iget-object v4, v4, Lg/gez;->e:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    sget-object v5, Lg/foq;->a:Lg/foq;

    invoke-static {v2, v4, v5}, Lg/fod;->j(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lg/fod;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lg/duh;->h:Ljava/lang/String;

    invoke-virtual {v2}, Lg/fod;->l()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lg/duh;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lg/duh;->f:Lg/gez;

    iget-boolean v2, v2, Lg/gez;->g:Z

    if-nez v2, :cond_4

    iget-object v2, v1, Lg/avo;->a:Landroid/content/Context;

    invoke-static {v2}, Lg/clx;->h(Landroid/content/Context;)Lg/clx;

    move-result-object v2

    iget-object v4, p0, Lg/duh;->f:Lg/gez;

    iget-boolean v4, v4, Lg/gez;->g:Z

    if-eqz v4, :cond_3

    move-object v4, v3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lg/duh;->h:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v4}, Lg/clx;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lg/duh;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_5

    iget-object v2, p0, Lg/duh;->i:Ljava/lang/Object;

    :cond_5
    :goto_4
    iget-object v1, v1, Lg/avo;->b:Lg/dvf;

    invoke-interface {v1}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/exu;

    invoke-virtual {v1}, Lg/exu;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lg/exu;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dbo;

    iget-object v2, p0, Lg/duh;->f:Lg/gez;

    iget-object v2, v2, Lg/gez;->e:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v4, p0, Lg/duh;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lg/dbo;->a:Lg/bcp;

    invoke-virtual {v1, v2}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bcp;

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :cond_7
    :goto_5
    if-nez v3, :cond_8

    iget-object v2, p0, Lg/duh;->i:Ljava/lang/Object;

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v3}, Lg/duh;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_9
    :goto_6
    iput-object v2, p0, Lg/duh;->e:Ljava/lang/Object;

    iput v0, p0, Lg/duh;->d:I

    goto :goto_7

    :cond_a
    invoke-static {}, Lg/bkb;->b()V

    throw v3

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_7
    monitor-exit p0

    goto :goto_9

    :goto_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    :goto_9
    iget-object v0, p0, Lg/duh;->e:Ljava/lang/Object;

    return-object v0
.end method

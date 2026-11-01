.class public final Lg/sw;
.super Lg/fze;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(Lg/gac;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/sw;->a:I

    const-string v0, "database"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lg/fze;-><init>(Lg/gac;)V

    return-void
.end method

.method public synthetic constructor <init>(Lg/gac;I)V
    .locals 0

    iput p2, p0, Lg/sw;->a:I

    invoke-direct {p0, p1}, Lg/fze;-><init>(Lg/gac;)V

    return-void
.end method


# virtual methods
.method public final b(Lg/cap;Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lg/sw;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lg/ets;

    iget-object v0, p2, Lg/ets;->a:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object p2, p2, Lg/ets;->b:Ljava/lang/String;

    invoke-interface {p1, v2, p2}, Lg/eob;->e(ILjava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p2, Lg/fkj;

    iget-object v0, p2, Lg/fkj;->h:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object v0, p2, Lg/fkj;->q:Lg/gys;

    invoke-static {v0}, Lg/bfc;->r(Lg/gys;)I

    move-result v0

    int-to-long v4, v0

    invoke-interface {p1, v2, v4, v5}, Lg/eob;->f(IJ)V

    iget-object v0, p2, Lg/fkj;->u:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lg/eob;->e(ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p2, Lg/fkj;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object v0, p2, Lg/fkj;->g:Lg/dwa;

    sget-object v1, Lg/dwa;->a:Lg/dwa;

    invoke-static {v0}, Lg/bff;->k(Lg/dwa;)[B

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Lg/eob;->c(I[B)V

    iget-object v0, p2, Lg/fkj;->l:Lg/dwa;

    invoke-static {v0}, Lg/bff;->k(Lg/dwa;)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0}, Lg/eob;->c(I[B)V

    const/4 v0, 0x7

    iget-wide v4, p2, Lg/fkj;->w:J

    invoke-interface {p1, v0, v4, v5}, Lg/eob;->f(IJ)V

    const/16 v0, 0x8

    iget-wide v4, p2, Lg/fkj;->a:J

    invoke-interface {p1, v0, v4, v5}, Lg/eob;->f(IJ)V

    const/16 v0, 0x9

    iget-wide v4, p2, Lg/fkj;->p:J

    invoke-interface {p1, v0, v4, v5}, Lg/eob;->f(IJ)V

    iget v0, p2, Lg/fkj;->b:I

    int-to-long v0, v0

    const/16 v4, 0xa

    invoke-interface {p1, v4, v0, v1}, Lg/eob;->f(IJ)V

    iget-object v0, p2, Lg/fkj;->f:Lg/ay;

    const-string v1, "backoffPolicy"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lg/ejx;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lg/dwb;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xb

    int-to-long v5, v0

    invoke-interface {p1, v4, v5, v6}, Lg/eob;->f(IJ)V

    const/16 v0, 0xc

    iget-wide v4, p2, Lg/fkj;->o:J

    invoke-interface {p1, v0, v4, v5}, Lg/eob;->f(IJ)V

    const/16 v0, 0xd

    iget-wide v4, p2, Lg/fkj;->d:J

    invoke-interface {p1, v0, v4, v5}, Lg/eob;->f(IJ)V

    const/16 v0, 0xe

    iget-wide v4, p2, Lg/fkj;->c:J

    invoke-interface {p1, v0, v4, v5}, Lg/eob;->f(IJ)V

    const/16 v0, 0xf

    iget-wide v4, p2, Lg/fkj;->n:J

    invoke-interface {p1, v0, v4, v5}, Lg/eob;->f(IJ)V

    iget-boolean v0, p2, Lg/fkj;->s:Z

    const/16 v4, 0x10

    int-to-long v5, v0

    invoke-interface {p1, v4, v5, v6}, Lg/eob;->f(IJ)V

    iget-object v0, p2, Lg/fkj;->x:Lg/ahc;

    const-string v4, "policy"

    invoke-static {v0, v4}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lg/ejx;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lg/dwb;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const/16 v0, 0x11

    int-to-long v1, v3

    invoke-interface {p1, v0, v1, v2}, Lg/eob;->f(IJ)V

    iget v0, p2, Lg/fkj;->m:I

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, Lg/eob;->f(IJ)V

    iget v0, p2, Lg/fkj;->t:I

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Lg/eob;->f(IJ)V

    const/16 v0, 0x14

    iget-wide v1, p2, Lg/fkj;->i:J

    invoke-interface {p1, v0, v1, v2}, Lg/eob;->f(IJ)V

    iget v0, p2, Lg/fkj;->j:I

    int-to-long v0, v0

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, v1}, Lg/eob;->f(IJ)V

    iget v0, p2, Lg/fkj;->k:I

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, v1}, Lg/eob;->f(IJ)V

    iget-object v0, p2, Lg/fkj;->v:Ljava/lang/String;

    const/16 v1, 0x17

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Lg/eob;->b(I)V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v1, v0}, Lg/eob;->e(ILjava/lang/String;)V

    :goto_2
    iget-object p2, p2, Lg/fkj;->r:Lg/bho;

    iget-object v0, p2, Lg/bho;->e:Lg/dnx;

    invoke-static {v0}, Lg/bfc;->u(Lg/dnx;)I

    move-result v0

    const/16 v1, 0x18

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    iget-object v0, p2, Lg/bho;->h:Lg/im;

    invoke-static {v0}, Lg/bfc;->v(Lg/im;)[B

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {p1, v1, v0}, Lg/eob;->c(I[B)V

    iget-boolean v0, p2, Lg/bho;->i:Z

    const/16 v1, 0x1a

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    iget-boolean v0, p2, Lg/bho;->c:Z

    const/16 v1, 0x1b

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    iget-boolean v0, p2, Lg/bho;->d:Z

    const/16 v1, 0x1c

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    iget-boolean v0, p2, Lg/bho;->f:Z

    const/16 v1, 0x1d

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    const/16 v0, 0x1e

    iget-wide v1, p2, Lg/bho;->j:J

    invoke-interface {p1, v0, v1, v2}, Lg/eob;->f(IJ)V

    const/16 v0, 0x1f

    iget-wide v1, p2, Lg/bho;->b:J

    invoke-interface {p1, v0, v1, v2}, Lg/eob;->f(IJ)V

    iget-object p2, p2, Lg/bho;->g:Ljava/util/Set;

    invoke-static {p2}, Lg/bfc;->m(Ljava/util/Set;)[B

    move-result-object p2

    const/16 v0, 0x20

    invoke-interface {p1, v0, p2}, Lg/eob;->c(I[B)V

    return-void

    :pswitch_1
    check-cast p2, Lg/bkd;

    iget-object v0, p2, Lg/bkd;->a:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object p2, p2, Lg/bkd;->b:Lg/dwa;

    sget-object v0, Lg/dwa;->a:Lg/dwa;

    invoke-static {p2}, Lg/bff;->k(Lg/dwa;)[B

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lg/eob;->c(I[B)V

    return-void

    :pswitch_2
    check-cast p2, Lg/fap;

    iget-object v0, p2, Lg/fap;->a:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object p2, p2, Lg/fap;->b:Ljava/lang/String;

    invoke-interface {p1, v2, p2}, Lg/eob;->e(ILjava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p2, Lg/cgv;

    iget-object v0, p2, Lg/cgv;->a:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lg/eob;->e(ILjava/lang/String;)V

    iget v0, p2, Lg/cgv;->b:I

    int-to-long v3, v0

    invoke-interface {p1, v2, v3, v4}, Lg/eob;->f(IJ)V

    iget p2, p2, Lg/cgv;->c:I

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    return-void

    :pswitch_4
    check-cast p2, Lg/cmk;

    iget-object v0, p2, Lg/cmk;->a:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object p2, p2, Lg/cmk;->b:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lg/eob;->f(IJ)V

    return-void

    :pswitch_5
    check-cast p2, Lg/gcy;

    iget-object v0, p2, Lg/gcy;->a:Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object p2, p2, Lg/gcy;->b:Ljava/lang/String;

    invoke-interface {p1, v2, p2}, Lg/eob;->e(ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lg/fze;->i()Lg/cap;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lg/sw;->b(Lg/cap;Ljava/lang/Object;)V

    iget-object p1, v0, Lg/cap;->g:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lg/fze;->h(Lg/cap;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lg/fze;->h(Lg/cap;)V

    throw p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/sw;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0

    :pswitch_0
    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0

    :pswitch_1
    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0

    :pswitch_2
    const-string v0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object v0

    :pswitch_3
    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object v0

    :pswitch_4
    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0

    :pswitch_5
    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

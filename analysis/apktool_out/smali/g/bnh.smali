.class public final Lg/bnh;
.super Lg/fze;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Lg/gac;I)V
    .locals 0

    iput p2, p0, Lg/bnh;->a:I

    invoke-direct {p0, p1}, Lg/fze;-><init>(Lg/gac;)V

    return-void
.end method


# virtual methods
.method public b(Lg/cap;Ljava/lang/Object;)V
    .locals 8

    check-cast p2, Lg/fkj;

    iget-object v0, p2, Lg/fkj;->h:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object v2, p2, Lg/fkj;->q:Lg/gys;

    invoke-static {v2}, Lg/bfc;->r(Lg/gys;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-interface {p1, v4, v2, v3}, Lg/eob;->f(IJ)V

    const/4 v2, 0x3

    iget-object v3, p2, Lg/fkj;->u:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lg/eob;->e(ILjava/lang/String;)V

    const/4 v2, 0x4

    iget-object v3, p2, Lg/fkj;->e:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lg/eob;->e(ILjava/lang/String;)V

    iget-object v2, p2, Lg/fkj;->g:Lg/dwa;

    sget-object v3, Lg/dwa;->a:Lg/dwa;

    invoke-static {v2}, Lg/bff;->k(Lg/dwa;)[B

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {p1, v3, v2}, Lg/eob;->c(I[B)V

    iget-object v2, p2, Lg/fkj;->l:Lg/dwa;

    invoke-static {v2}, Lg/bff;->k(Lg/dwa;)[B

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {p1, v3, v2}, Lg/eob;->c(I[B)V

    const/4 v2, 0x7

    iget-wide v5, p2, Lg/fkj;->w:J

    invoke-interface {p1, v2, v5, v6}, Lg/eob;->f(IJ)V

    const/16 v2, 0x8

    iget-wide v5, p2, Lg/fkj;->a:J

    invoke-interface {p1, v2, v5, v6}, Lg/eob;->f(IJ)V

    const/16 v2, 0x9

    iget-wide v5, p2, Lg/fkj;->p:J

    invoke-interface {p1, v2, v5, v6}, Lg/eob;->f(IJ)V

    iget v2, p2, Lg/fkj;->b:I

    int-to-long v2, v2

    const/16 v5, 0xa

    invoke-interface {p1, v5, v2, v3}, Lg/eob;->f(IJ)V

    iget-object v2, p2, Lg/fkj;->f:Lg/ay;

    const-string v3, "backoffPolicy"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lg/ejx;->c:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lg/dwb;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v5, 0xb

    int-to-long v6, v2

    invoke-interface {p1, v5, v6, v7}, Lg/eob;->f(IJ)V

    const/16 v2, 0xc

    iget-wide v5, p2, Lg/fkj;->o:J

    invoke-interface {p1, v2, v5, v6}, Lg/eob;->f(IJ)V

    const/16 v2, 0xd

    iget-wide v5, p2, Lg/fkj;->d:J

    invoke-interface {p1, v2, v5, v6}, Lg/eob;->f(IJ)V

    const/16 v2, 0xe

    iget-wide v5, p2, Lg/fkj;->c:J

    invoke-interface {p1, v2, v5, v6}, Lg/eob;->f(IJ)V

    const/16 v2, 0xf

    iget-wide v5, p2, Lg/fkj;->n:J

    invoke-interface {p1, v2, v5, v6}, Lg/eob;->f(IJ)V

    iget-boolean v2, p2, Lg/fkj;->s:Z

    const/16 v5, 0x10

    int-to-long v6, v2

    invoke-interface {p1, v5, v6, v7}, Lg/eob;->f(IJ)V

    iget-object v2, p2, Lg/fkj;->x:Lg/ahc;

    const-string v5, "policy"

    invoke-static {v2, v5}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lg/ejx;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    if-eq v2, v1, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lg/dwb;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x11

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lg/eob;->f(IJ)V

    iget v1, p2, Lg/fkj;->m:I

    int-to-long v1, v1

    const/16 v3, 0x12

    invoke-interface {p1, v3, v1, v2}, Lg/eob;->f(IJ)V

    iget v1, p2, Lg/fkj;->t:I

    int-to-long v1, v1

    const/16 v3, 0x13

    invoke-interface {p1, v3, v1, v2}, Lg/eob;->f(IJ)V

    const/16 v1, 0x14

    iget-wide v2, p2, Lg/fkj;->i:J

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    iget v1, p2, Lg/fkj;->j:I

    int-to-long v1, v1

    const/16 v3, 0x15

    invoke-interface {p1, v3, v1, v2}, Lg/eob;->f(IJ)V

    iget v1, p2, Lg/fkj;->k:I

    int-to-long v1, v1

    const/16 v3, 0x16

    invoke-interface {p1, v3, v1, v2}, Lg/eob;->f(IJ)V

    iget-object v1, p2, Lg/fkj;->v:Ljava/lang/String;

    const/16 v2, 0x17

    if-nez v1, :cond_4

    invoke-interface {p1, v2}, Lg/eob;->b(I)V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v2, v1}, Lg/eob;->e(ILjava/lang/String;)V

    :goto_2
    iget-object p2, p2, Lg/fkj;->r:Lg/bho;

    iget-object v1, p2, Lg/bho;->e:Lg/dnx;

    invoke-static {v1}, Lg/bfc;->u(Lg/dnx;)I

    move-result v1

    const/16 v2, 0x18

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lg/eob;->f(IJ)V

    iget-object v1, p2, Lg/bho;->h:Lg/im;

    invoke-static {v1}, Lg/bfc;->v(Lg/im;)[B

    move-result-object v1

    const/16 v2, 0x19

    invoke-interface {p1, v2, v1}, Lg/eob;->c(I[B)V

    iget-boolean v1, p2, Lg/bho;->i:Z

    const/16 v2, 0x1a

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lg/eob;->f(IJ)V

    iget-boolean v1, p2, Lg/bho;->c:Z

    const/16 v2, 0x1b

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lg/eob;->f(IJ)V

    iget-boolean v1, p2, Lg/bho;->d:Z

    const/16 v2, 0x1c

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lg/eob;->f(IJ)V

    iget-boolean v1, p2, Lg/bho;->f:Z

    const/16 v2, 0x1d

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lg/eob;->f(IJ)V

    const/16 v1, 0x1e

    iget-wide v2, p2, Lg/bho;->j:J

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    const/16 v1, 0x1f

    iget-wide v2, p2, Lg/bho;->b:J

    invoke-interface {p1, v1, v2, v3}, Lg/eob;->f(IJ)V

    iget-object p2, p2, Lg/bho;->g:Ljava/util/Set;

    invoke-static {p2}, Lg/bfc;->m(Ljava/util/Set;)[B

    move-result-object p2

    const/16 v1, 0x20

    invoke-interface {p1, v1, p2}, Lg/eob;->c(I[B)V

    const/16 p2, 0x21

    invoke-interface {p1, p2, v0}, Lg/eob;->e(ILjava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/bnh;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "DELETE FROM worktag WHERE work_spec_id=?"

    return-object v0

    :pswitch_0
    const-string v0, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    return-object v0

    :pswitch_1
    const-string v0, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    return-object v0

    :pswitch_2
    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    return-object v0

    :pswitch_3
    const-string v0, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    return-object v0

    :pswitch_4
    const-string v0, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    return-object v0

    :pswitch_5
    const-string v0, "UPDATE workspec SET state=? WHERE id=?"

    return-object v0

    :pswitch_6
    const-string v0, "DELETE FROM workspec WHERE id=?"

    return-object v0

    :pswitch_7
    const-string v0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object v0

    :pswitch_8
    const-string v0, "UPDATE workspec SET stop_reason=? WHERE id=?"

    return-object v0

    :pswitch_9
    const-string v0, "UPDATE workspec SET generation=generation+1 WHERE id=?"

    return-object v0

    :pswitch_a
    const-string v0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    return-object v0

    :pswitch_b
    const-string v0, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    return-object v0

    :pswitch_c
    const-string v0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    return-object v0

    :pswitch_d
    const-string v0, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    return-object v0

    :pswitch_e
    const-string v0, "UPDATE workspec SET next_schedule_time_override=? WHERE id=?"

    return-object v0

    :pswitch_f
    const-string v0, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    return-object v0

    :pswitch_10
    const-string v0, "DELETE FROM WorkProgress"

    return-object v0

    :pswitch_11
    const-string v0, "DELETE from WorkProgress where work_spec_id=?"

    return-object v0

    :pswitch_12
    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object v0

    :pswitch_13
    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

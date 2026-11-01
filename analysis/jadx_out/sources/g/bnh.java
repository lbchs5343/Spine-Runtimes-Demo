package g;

/* loaded from: classes.dex */
public final class bnh extends fze {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11870a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bnh(gac gacVar, int i) {
        super(gacVar);
        this.f11870a = i;
    }

    public void b(cap capVar, Object obj) {
        int i;
        fkj fkjVar = (fkj) obj;
        String str = fkjVar.h;
        int i2 = 1;
        capVar.e(1, str);
        capVar.f(2, bfc.r(fkjVar.q));
        capVar.e(3, fkjVar.u);
        capVar.e(4, fkjVar.f16930e);
        dwa dwaVar = fkjVar.f16932g;
        dwa dwaVar2 = dwa.f14915a;
        capVar.c(5, bff.k(dwaVar));
        capVar.c(6, bff.k(fkjVar.l));
        capVar.f(7, fkjVar.w);
        capVar.f(8, fkjVar.f16926a);
        capVar.f(9, fkjVar.p);
        capVar.f(10, fkjVar.f16927b);
        ay ayVar = fkjVar.f16931f;
        bff.p(ayVar, "backoffPolicy");
        int i3 = ejx.f15693c[ayVar.ordinal()];
        if (i3 == 1) {
            i = 0;
        } else {
            if (i3 != 2) {
                throw new dwb();
            }
            i = 1;
        }
        capVar.f(11, i);
        capVar.f(12, fkjVar.o);
        capVar.f(13, fkjVar.f16929d);
        capVar.f(14, fkjVar.f16928c);
        capVar.f(15, fkjVar.n);
        capVar.f(16, fkjVar.s ? 1L : 0L);
        ahc ahcVar = fkjVar.x;
        bff.p(ahcVar, "policy");
        int i4 = ejx.f15691a[ahcVar.ordinal()];
        if (i4 == 1) {
            i2 = 0;
        } else if (i4 != 2) {
            throw new dwb();
        }
        capVar.f(17, i2);
        capVar.f(18, fkjVar.m);
        capVar.f(19, fkjVar.t);
        capVar.f(20, fkjVar.i);
        capVar.f(21, fkjVar.j);
        capVar.f(22, fkjVar.k);
        String str2 = fkjVar.v;
        if (str2 == null) {
            capVar.b(23);
        } else {
            capVar.e(23, str2);
        }
        bho bhoVar = fkjVar.r;
        capVar.f(24, bfc.u(bhoVar.f11595e));
        capVar.c(25, bfc.v(bhoVar.h));
        capVar.f(26, bhoVar.i ? 1L : 0L);
        capVar.f(27, bhoVar.f11593c ? 1L : 0L);
        capVar.f(28, bhoVar.f11594d ? 1L : 0L);
        capVar.f(29, bhoVar.f11596f ? 1L : 0L);
        capVar.f(30, bhoVar.j);
        capVar.f(31, bhoVar.f11592b);
        capVar.c(32, bfc.m(bhoVar.f11597g));
        capVar.e(33, str);
    }

    @Override // g.fze
    public final String d() {
        switch (this.f11870a) {
            case 0:
                return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
            case 1:
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            case 2:
                return "DELETE from WorkProgress where work_spec_id=?";
            case 3:
                return "DELETE FROM WorkProgress";
            case 4:
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            case 5:
                return "UPDATE workspec SET next_schedule_time_override=? WHERE id=?";
            case 6:
                return "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
            case 7:
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            case 8:
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            case 9:
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            case 10:
                return "UPDATE workspec SET generation=generation+1 WHERE id=?";
            case 11:
                return "UPDATE workspec SET stop_reason=? WHERE id=?";
            case 12:
                return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
            case 13:
                return "DELETE FROM workspec WHERE id=?";
            case 14:
                return "UPDATE workspec SET state=? WHERE id=?";
            case 15:
                return "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
            case 16:
                return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
            case 17:
                return "UPDATE workspec SET output=? WHERE id=?";
            case 18:
                return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
            case 19:
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            default:
                return "DELETE FROM worktag WHERE work_spec_id=?";
        }
    }
}

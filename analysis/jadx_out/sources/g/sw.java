package g;

/* loaded from: classes.dex */
public final class sw extends fze {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20022a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sw(gac gacVar) {
        super(gacVar);
        this.f20022a = 1;
        bff.p(gacVar, "database");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ sw(gac gacVar, int i) {
        super(gacVar);
        this.f20022a = i;
    }

    public final void b(cap capVar, Object obj) {
        int i;
        int i2 = 1;
        switch (this.f20022a) {
            case 0:
                gcy gcyVar = (gcy) obj;
                capVar.e(1, gcyVar.f17906a);
                capVar.e(2, gcyVar.f17907b);
                return;
            case 1:
                cmk cmkVar = (cmk) obj;
                capVar.e(1, cmkVar.f13121a);
                capVar.f(2, cmkVar.f13122b.longValue());
                return;
            case 2:
                capVar.e(1, ((cgv) obj).f12855a);
                capVar.f(2, r9.f12856b);
                capVar.f(3, r9.f12857c);
                return;
            case 3:
                fap fapVar = (fap) obj;
                capVar.e(1, fapVar.f16481a);
                capVar.e(2, fapVar.f16482b);
                return;
            case 4:
                bkd bkdVar = (bkd) obj;
                capVar.e(1, bkdVar.f11726a);
                dwa dwaVar = bkdVar.f11727b;
                dwa dwaVar2 = dwa.f14915a;
                capVar.c(2, bff.k(dwaVar));
                return;
            case 5:
                fkj fkjVar = (fkj) obj;
                capVar.e(1, fkjVar.h);
                capVar.f(2, bfc.r(fkjVar.q));
                capVar.e(3, fkjVar.u);
                capVar.e(4, fkjVar.f16930e);
                dwa dwaVar3 = fkjVar.f16932g;
                dwa dwaVar4 = dwa.f14915a;
                capVar.c(5, bff.k(dwaVar3));
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
                String str = fkjVar.v;
                if (str == null) {
                    capVar.b(23);
                } else {
                    capVar.e(23, str);
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
                return;
            default:
                ets etsVar = (ets) obj;
                capVar.e(1, etsVar.f16155a);
                capVar.e(2, etsVar.f16156b);
                return;
        }
    }

    public final void c(Object obj) {
        cap i = i();
        try {
            b(i, obj);
            i.f12562g.executeInsert();
        } finally {
            h(i);
        }
    }

    @Override // g.fze
    public final String d() {
        switch (this.f20022a) {
            case 0:
                return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
            case 1:
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            case 2:
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
            case 3:
                return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
            case 4:
                return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
            case 5:
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            default:
                return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }
    }
}

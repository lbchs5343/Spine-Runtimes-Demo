package g;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class gav extends hbi {

    /* renamed from: a, reason: collision with root package name */
    public final Context f17825a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17826b = 1;

    public gav(Context context) {
        super(9, 10);
        this.f17825a = context;
    }

    public gav(Context context, int i, int i2) {
        super(i, i2);
        this.f17825a = context;
    }

    @Override // g.hbi
    public final void c(crd crdVar) {
        int i = this.f17826b;
        Context context = this.f17825a;
        switch (i) {
            case 0:
                if (this.f19170e >= 10) {
                    crdVar.p("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
                    return;
                } else {
                    context.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
                    return;
                }
            default:
                crdVar.j("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
                if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
                    long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                    long j2 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
                    crdVar.l();
                    try {
                        crdVar.p("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                        crdVar.p("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(j2)});
                        sharedPreferences.edit().clear().apply();
                        crdVar.h();
                    } finally {
                    }
                }
                SharedPreferences sharedPreferences2 = context.getSharedPreferences("androidx.work.util.id", 0);
                if (sharedPreferences2.contains("next_job_scheduler_id") || sharedPreferences2.contains("next_job_scheduler_id")) {
                    int i2 = sharedPreferences2.getInt("next_job_scheduler_id", 0);
                    int i3 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
                    crdVar.l();
                    try {
                        crdVar.p("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i2)});
                        crdVar.p("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i3)});
                        sharedPreferences2.edit().clear().apply();
                        crdVar.h();
                        return;
                    } finally {
                    }
                }
                return;
        }
    }
}

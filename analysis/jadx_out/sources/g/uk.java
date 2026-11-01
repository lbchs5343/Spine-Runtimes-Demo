package g;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* loaded from: classes3.dex */
public final class uk extends aiq {

    /* renamed from: b, reason: collision with root package name */
    public Integer f20097b;

    /* renamed from: c, reason: collision with root package name */
    public final AlarmManager f20098c;

    /* renamed from: e, reason: collision with root package name */
    public rd f20099e;

    public uk(bsz bszVar) {
        super(bszVar);
        this.f20098c = (AlarmManager) ((cyg) this.z).v.getSystemService("alarm");
    }

    public final int _as() {
        if (this.f20097b == null) {
            this.f20097b = Integer.valueOf("measurement".concat(String.valueOf(((cyg) this.z).v.getPackageName())).hashCode());
        }
        return this.f20097b.intValue();
    }

    public final PendingIntent g() {
        Context context = ((cyg) this.z).v;
        return PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), fsg.f17334a);
    }

    public final emo h() {
        if (this.f20099e == null) {
            this.f20099e = new rd(this, this.f10133a.m, 1);
        }
        return this.f20099e;
    }

    @Override // g.aiq
    public final void i() {
        JobScheduler jobScheduler;
        AlarmManager alarmManager = this.f20098c;
        if (alarmManager != null) {
            alarmManager.cancel(g());
        }
        if (Build.VERSION.SDK_INT < 24 || (jobScheduler = (JobScheduler) ((cyg) this.z).v.getSystemService("jobscheduler")) == null) {
            return;
        }
        jobScheduler.cancel(_as());
    }

    @Override // g.bgf
    public final void zza() {
        JobScheduler jobScheduler;
        n();
        cyg cygVar = (cyg) this.z;
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        bgmVar.f11519c.h("Unscheduling upload");
        AlarmManager alarmManager = this.f20098c;
        if (alarmManager != null) {
            alarmManager.cancel(g());
        }
        h().i();
        if (Build.VERSION.SDK_INT < 24 || (jobScheduler = (JobScheduler) cygVar.v.getSystemService("jobscheduler")) == null) {
            return;
        }
        jobScheduler.cancel(_as());
    }
}

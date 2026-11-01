package g;

import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class hdm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19278a;

    /* renamed from: b, reason: collision with root package name */
    public final jf f19279b;

    public /* synthetic */ hdm(jf jfVar, int i) {
        this.f19278a = i;
        this.f19279b = jfVar;
    }

    private final void c() {
        bxc bxcVar;
        hdm hdmVar;
        synchronized (this.f19279b.f19474c) {
            jf jfVar = this.f19279b;
            jfVar.f19473b = (Intent) jfVar.f19474c.get(0);
        }
        Intent intent = this.f19279b.f19473b;
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = this.f19279b.f19473b.getIntExtra("KEY_START_ID", 0);
            cyl f2 = cyl.f();
            String str = jf.f19472a;
            Objects.toString(this.f19279b.f19473b);
            f2.getClass();
            PowerManager.WakeLock b2 = qj.b(this.f19279b.i, action + " (" + intExtra + ")");
            int i = 1;
            try {
                cyl f3 = cyl.f();
                b2.toString();
                f3.getClass();
                b2.acquire();
                jf jfVar2 = this.f19279b;
                jfVar2.l.k(jfVar2.f19473b, intExtra, jfVar2);
                cyl f4 = cyl.f();
                b2.toString();
                f4.getClass();
                b2.release();
                jf jfVar3 = this.f19279b;
                bxcVar = (bxc) ((gkr) jfVar3.k).f18323c;
                hdmVar = new hdm(jfVar3, i);
            } catch (Throwable th) {
                try {
                    cyl.f().j(jf.f19472a, "Unexpected error in onHandleIntent", th);
                    cyl f5 = cyl.f();
                    b2.toString();
                    f5.getClass();
                    b2.release();
                    jf jfVar4 = this.f19279b;
                    bxcVar = (bxc) ((gkr) jfVar4.k).f18323c;
                    hdmVar = new hdm(jfVar4, i);
                } catch (Throwable th2) {
                    cyl f6 = cyl.f();
                    String str2 = jf.f19472a;
                    b2.toString();
                    f6.getClass();
                    b2.release();
                    jf jfVar5 = this.f19279b;
                    ((bxc) ((gkr) jfVar5.k).f18323c).execute(new hdm(jfVar5, i));
                    throw th2;
                }
            }
            bxcVar.execute(hdmVar);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19278a) {
            case 0:
                c();
                return;
            default:
                jf jfVar = this.f19279b;
                cyl.f().getClass();
                jf.m();
                synchronized (jfVar.f19474c) {
                    try {
                        if (jfVar.f19473b != null) {
                            cyl f2 = cyl.f();
                            Objects.toString(jfVar.f19473b);
                            f2.getClass();
                            if (!((Intent) jfVar.f19474c.remove(0)).equals(jfVar.f19473b)) {
                                throw new IllegalStateException("Dequeue-d command is not the first.");
                            }
                            jfVar.f19473b = null;
                        }
                        aqv aqvVar = (aqv) ((gkr) jfVar.k).f18325e;
                        if (!jfVar.l.j() && jfVar.f19474c.isEmpty() && !aqvVar.g()) {
                            cyl.f().getClass();
                            SystemAlarmService systemAlarmService = jfVar.j;
                            if (systemAlarmService != null) {
                                systemAlarmService.c();
                            }
                        } else if (!jfVar.f19474c.isEmpty()) {
                            jfVar.n();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}

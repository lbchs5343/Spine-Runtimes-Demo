package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import g.cyl;
import g.da;
import g.fus;
import g.jf;
import g.qj;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SystemAlarmService extends fus {

    /* renamed from: a, reason: collision with root package name */
    public boolean f338a;

    /* renamed from: b, reason: collision with root package name */
    public jf f339b;

    static {
        cyl.g("SystemAlarmService");
    }

    public final void c() {
        this.f338a = true;
        cyl.f().getClass();
        int i = qj.f19859a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        synchronized (da.f13831a) {
            linkedHashMap.putAll(da.f13832b);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) entry.getKey();
            if (wakeLock != null && wakeLock.isHeld()) {
                cyl.f().getClass();
            }
        }
        stopSelf();
    }

    @Override // g.fus, android.app.Service
    public final void onCreate() {
        super.onCreate();
        jf jfVar = new jf(this);
        this.f339b = jfVar;
        if (jfVar.j != null) {
            cyl.f().i(jf.f19472a, "A completion listener for SystemAlarmDispatcher already exists.");
        } else {
            jfVar.j = this;
        }
        this.f338a = false;
    }

    @Override // g.fus, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f338a = true;
        jf jfVar = this.f339b;
        jfVar.getClass();
        cyl.f().getClass();
        jfVar.f19477f.v(jfVar);
        jfVar.j = null;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f338a) {
            cyl.f().getClass();
            jf jfVar = this.f339b;
            jfVar.getClass();
            cyl.f().getClass();
            jfVar.f19477f.v(jfVar);
            jfVar.j = null;
            jf jfVar2 = new jf(this);
            this.f339b = jfVar2;
            if (jfVar2.j != null) {
                cyl.f().i(jf.f19472a, "A completion listener for SystemAlarmDispatcher already exists.");
            } else {
                jfVar2.j = this;
            }
            this.f338a = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f339b.o(i2, intent);
        return 3;
    }
}

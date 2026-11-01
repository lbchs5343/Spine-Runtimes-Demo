package g;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final class eal implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15191a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15192b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f15193c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f15194d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15195e = 1;

    /* renamed from: f, reason: collision with root package name */
    public final int f15196f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f15197g;

    public eal(bgm bgmVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f15191a = bgmVar;
        this.f15196f = i;
        this.f15192b = str;
        this.f15193c = obj;
        this.f15194d = obj2;
        this.f15197g = obj3;
    }

    public /* synthetic */ eal(String str, alf alfVar, int i, IOException iOException, byte[] bArr, Map map) {
        ckd.k(alfVar);
        this.f15193c = alfVar;
        this.f15196f = i;
        this.f15194d = iOException;
        this.f15197g = bArr;
        this.f15192b = str;
        this.f15191a = map;
    }

    public eal(Thread thread, int i, String str, String str2, String str3, Map map) {
        this.f15193c = thread;
        this.f15196f = i;
        this.f15192b = str;
        this.f15194d = str2;
        this.f15197g = str3;
        this.f15191a = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.bugly.proguard.au auVar;
        com.tencent.bugly.proguard.au auVar2;
        switch (this.f15195e) {
            case 0:
                try {
                    auVar = com.tencent.bugly.proguard.au.f9634a;
                    if (auVar == null) {
                        com.tencent.bugly.proguard.al.e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
                    } else {
                        auVar2 = com.tencent.bugly.proguard.au.f9634a;
                        com.tencent.bugly.proguard.au.a(auVar2, (Thread) this.f15193c, this.f15196f, this.f15192b, (String) this.f15194d, (String) this.f15197g, (Map) this.f15191a);
                    }
                    return;
                } catch (Throwable th) {
                    if (!com.tencent.bugly.proguard.al.b(th)) {
                        th.printStackTrace();
                    }
                    com.tencent.bugly.proguard.al.e("[ExtraCrashManager] Crash error %s %s %s", this.f15192b, (String) this.f15194d, (String) this.f15197g);
                    return;
                }
            case 1:
                gmr gmrVar = ((cyg) ((bgm) this.f15191a).z).f13744b;
                cyg.ai(gmrVar);
                if (!gmrVar.am) {
                    Log.println(6, ((bgm) this.f15191a).al(), "Persisted config not initialized. Not logging error/warn");
                    return;
                }
                bgm bgmVar = (bgm) this.f15191a;
                if (bgmVar.k == 0) {
                    dsd dsdVar = ((cyg) bgmVar.z).f13747e;
                    if (dsdVar.f14699c == null) {
                        synchronized (dsdVar) {
                            try {
                                if (dsdVar.f14699c == null) {
                                    ApplicationInfo applicationInfo = ((cyg) dsdVar.z).v.getApplicationInfo();
                                    String an = cux.an();
                                    if (applicationInfo != null) {
                                        String str = applicationInfo.processName;
                                        dsdVar.f14699c = Boolean.valueOf(str != null && str.equals(an));
                                    }
                                    if (dsdVar.f14699c == null) {
                                        dsdVar.f14699c = Boolean.TRUE;
                                        bgm bgmVar2 = ((cyg) dsdVar.z).z;
                                        cyg.ak(bgmVar2);
                                        bgmVar2.f11518b.h("My process not in the list of running processes");
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    if (dsdVar.f14699c.booleanValue()) {
                        bgm bgmVar3 = (bgm) this.f15191a;
                        ((cyg) bgmVar3.z).getClass();
                        bgmVar3.k = 'C';
                    } else {
                        bgm bgmVar4 = (bgm) this.f15191a;
                        ((cyg) bgmVar4.z).getClass();
                        bgmVar4.k = 'c';
                    }
                }
                bgm bgmVar5 = (bgm) this.f15191a;
                if (bgmVar5.l < 0) {
                    ((cyg) bgmVar5.z).f13747e.n();
                    bgmVar5.l = 73000L;
                }
                char charAt = "01VDIWEA?".charAt(this.f15196f);
                bgm bgmVar6 = (bgm) this.f15191a;
                char c2 = bgmVar6.k;
                long j = bgmVar6.l;
                String s = bgm.s(true, this.f15192b, this.f15193c, this.f15194d, this.f15197g);
                StringBuilder sb = new StringBuilder("2");
                sb.append(charAt);
                sb.append(c2);
                sb.append(j);
                String ad = awf.ad(sb, ":", s);
                if (ad.length() > 1024) {
                    ad = this.f15192b.substring(0, 1024);
                }
                dkh dkhVar = gmrVar.s;
                if (dkhVar != null) {
                    String str2 = (String) dkhVar.f14303a;
                    String str3 = (String) dkhVar.f14307e;
                    gmr gmrVar2 = (gmr) dkhVar.f14304b;
                    gmrVar2._e();
                    if (((gmr) dkhVar.f14304b).ar().getLong((String) dkhVar.f14306d, 0L) == 0) {
                        dkhVar.f();
                    }
                    if (ad == null) {
                        ad = "";
                    }
                    long j2 = gmrVar2.ar().getLong(str3, 0L);
                    if (j2 <= 0) {
                        SharedPreferences.Editor edit = gmrVar2.ar().edit();
                        edit.putString(str2, ad);
                        edit.putLong(str3, 1L);
                        edit.apply();
                        return;
                    }
                    dkq dkqVar = ((cyg) gmrVar2.z).m;
                    cyg.ai(dkqVar);
                    long nextLong = dkqVar.av().nextLong();
                    long j3 = j2 + 1;
                    long j4 = Long.MAX_VALUE / j3;
                    SharedPreferences.Editor edit2 = gmrVar2.ar().edit();
                    if ((nextLong & Long.MAX_VALUE) < j4) {
                        edit2.putString(str2, ad);
                    }
                    edit2.putLong(str3, j3);
                    edit2.apply();
                    return;
                }
                return;
            default:
                ((alf) this.f15193c).a(this.f15192b, this.f15196f, (Throwable) this.f15194d, (byte[]) this.f15197g, (Map) this.f15191a);
                return;
        }
    }
}

package g;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class egw implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f15525a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f15526b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ afh f15527c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f15528d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15529e = 0;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f15530f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ dbb f15531g;

    public egw(dbb dbbVar, String str, String str2, afh afhVar, boolean z, brv brvVar) {
        this.f15531g = dbbVar;
        this.f15530f = str;
        this.f15526b = str2;
        this.f15527c = afhVar;
        this.f15528d = z;
        this.f15525a = brvVar;
    }

    public egw(dbb dbbVar, AtomicReference atomicReference, String str, String str2, afh afhVar, boolean z) {
        this.f15531g = dbbVar;
        this.f15525a = atomicReference;
        this.f15530f = str;
        this.f15526b = str2;
        this.f15527c = afhVar;
        this.f15528d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ake akeVar;
        AtomicReference atomicReference;
        dbb dbbVar;
        ake akeVar2;
        switch (this.f15529e) {
            case 0:
                afh afhVar = this.f15527c;
                String str = this.f15526b;
                String str2 = this.f15530f;
                brv brvVar = (brv) this.f15525a;
                dbb dbbVar2 = this.f15531g;
                cyg cygVar = (cyg) dbbVar2.z;
                Bundle bundle = new Bundle();
                try {
                    try {
                        akeVar = dbbVar2.l;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (RemoteException e2) {
                    e = e2;
                }
                if (akeVar == null) {
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.f11518b.e(str2, "Failed to get user properties; not connected to service", str);
                    dkq dkqVar = cygVar.m;
                    cyg.ai(dkqVar);
                    dkqVar.bm(brvVar, bundle);
                    return;
                }
                List<cmd> p = akeVar.p(str2, str, this.f15528d, afhVar);
                Bundle bundle2 = new Bundle();
                if (p != null) {
                    for (cmd cmdVar : p) {
                        String str3 = cmdVar.zze;
                        if (str3 != null) {
                            bundle2.putString(cmdVar.zzb, str3);
                        } else {
                            Long l = cmdVar.zzd;
                            if (l != null) {
                                bundle2.putLong(cmdVar.zzb, l.longValue());
                            } else {
                                Double d2 = cmdVar.zzg;
                                if (d2 != null) {
                                    bundle2.putDouble(cmdVar.zzb, d2.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    dbbVar2.x();
                    dkq dkqVar2 = cygVar.m;
                    cyg.ai(dkqVar2);
                    dkqVar2.bm(brvVar, bundle2);
                    return;
                } catch (RemoteException e3) {
                    e = e3;
                    bundle = bundle2;
                    bgm bgmVar2 = cygVar.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11518b.e(str2, "Failed to get user properties; remote exception", e);
                    dkq dkqVar3 = cygVar.m;
                    cyg.ai(dkqVar3);
                    dkqVar3.bm(brvVar, bundle);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    bundle = bundle2;
                    dkq dkqVar4 = cygVar.m;
                    cyg.ai(dkqVar4);
                    dkqVar4.bm(brvVar, bundle);
                    throw th;
                }
            default:
                synchronized (((AtomicReference) this.f15525a)) {
                    try {
                        try {
                            dbbVar = this.f15531g;
                            akeVar2 = dbbVar.l;
                        } catch (RemoteException e4) {
                            bgm bgmVar3 = ((cyg) this.f15531g.z).z;
                            cyg.ak(bgmVar3);
                            bgmVar3.f11518b.f("(legacy) Failed to get user properties; remote exception", null, this.f15530f, e4);
                            ((AtomicReference) this.f15525a).set(Collections.EMPTY_LIST);
                            atomicReference = (AtomicReference) this.f15525a;
                        }
                        if (akeVar2 == null) {
                            bgm bgmVar4 = ((cyg) dbbVar.z).z;
                            cyg.ak(bgmVar4);
                            bgmVar4.f11518b.f("(legacy) Failed to get user properties; not connected to service", null, this.f15530f, this.f15526b);
                            ((AtomicReference) this.f15525a).set(Collections.EMPTY_LIST);
                            return;
                        }
                        if (TextUtils.isEmpty(null)) {
                            ((AtomicReference) this.f15525a).set(akeVar2.p(this.f15530f, this.f15526b, this.f15528d, this.f15527c));
                        } else {
                            ((AtomicReference) this.f15525a).set(akeVar2.v(null, this.f15530f, this.f15526b, this.f15528d));
                        }
                        this.f15531g.x();
                        atomicReference = (AtomicReference) this.f15525a;
                        atomicReference.notify();
                        return;
                    } finally {
                        ((AtomicReference) this.f15525a).notify();
                    }
                }
        }
    }
}

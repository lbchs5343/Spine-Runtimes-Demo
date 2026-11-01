package g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zs extends dzk implements ake {

    /* renamed from: a, reason: collision with root package name */
    public String f20413a;

    /* renamed from: b, reason: collision with root package name */
    public final bsz f20414b;

    /* renamed from: c, reason: collision with root package name */
    public Boolean f20415c;

    public zs(bsz bszVar) {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
        ckd.k(bszVar);
        this.f20414b = bszVar;
        this.f20413a = null;
    }

    @Override // g.ake
    public final void d(cmd cmdVar, afh afhVar) {
        ckd.k(cmdVar);
        q(afhVar);
        u(new eax(this, cmdVar, afhVar, 16));
    }

    @Override // g.ake
    public final List e(String str, String str2, afh afhVar) {
        q(afhVar);
        String str3 = afhVar.zza;
        ckd.k(str3);
        bsz bszVar = this.f20414b;
        try {
            return (List) bszVar.zzaz().t(new lw(this, str3, str, str2, 2)).get();
        } catch (InterruptedException | ExecutionException e2) {
            bszVar.zzay().f11518b.i(e2, "Failed to get conditional user properties");
            return Collections.EMPTY_LIST;
        }
    }

    @Override // g.ake
    public final List f(String str, String str2, String str3) {
        h(str, true);
        bsz bszVar = this.f20414b;
        try {
            return (List) bszVar.zzaz().t(new lw(this, str, str2, str3, 3)).get();
        } catch (InterruptedException | ExecutionException e2) {
            bszVar.zzay().f11518b.i(e2, "Failed to get conditional user properties as");
            return Collections.EMPTY_LIST;
        }
    }

    @Override // g.ake
    public final void g(long j, String str, String str2, String str3) {
        u(new sc(this, str2, str3, str, j, 1));
    }

    public final void h(String str, boolean z) {
        boolean isEmpty = TextUtils.isEmpty(str);
        bsz bszVar = this.f20414b;
        if (isEmpty) {
            bszVar.zzay().f11518b.h("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.f20415c == null) {
                    boolean z2 = true;
                    if (!"com.google.android.gms".equals(this.f20413a)) {
                        Context context = bszVar.m.v;
                        if (aky.al(context, Binder.getCallingUid(), "com.google.android.gms")) {
                            try {
                                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                                awm e2 = awm.e(context);
                                e2.getClass();
                                if (packageInfo != null) {
                                    if (!awm.d(packageInfo, false)) {
                                        if (awm.d(packageInfo, true) && evp.f(e2.f10976b)) {
                                        }
                                    }
                                }
                            } catch (PackageManager.NameNotFoundException unused) {
                            }
                        }
                        if (!awm.e(bszVar.m.v).g(Binder.getCallingUid())) {
                            z2 = false;
                        }
                    }
                    this.f20415c = Boolean.valueOf(z2);
                }
                if (this.f20415c.booleanValue()) {
                    return;
                }
            } catch (SecurityException e3) {
                bszVar.zzay().f11518b.i(bgm.t(str), "Measurement Service called with invalid calling package. appId");
                throw e3;
            }
        }
        if (this.f20413a == null) {
            Context context2 = bszVar.m.v;
            int callingUid = Binder.getCallingUid();
            AtomicBoolean atomicBoolean = evp.f16244c;
            if (aky.al(context2, callingUid, str)) {
                this.f20413a = str;
            }
        }
        if (str.equals(this.f20413a)) {
            return;
        }
        throw new SecurityException("Unknown calling package name '" + str + "'.");
    }

    public final void i(ctf ctfVar, afh afhVar) {
        bsz bszVar = this.f20414b;
        bszVar.ay();
        bszVar.ax(ctfVar, afhVar);
    }

    @Override // g.ake
    public final void j(Bundle bundle, afh afhVar) {
        q(afhVar);
        String str = afhVar.zza;
        ckd.k(str);
        u(new eax(this, str, bundle, 12, false));
    }

    @Override // g.ake
    public final void k(afh afhVar) {
        ckd.bf(afhVar.zza);
        h(afhVar.zza, false);
        u(new aay(this, afhVar, 0));
    }

    @Override // g.ake
    public final String l(afh afhVar) {
        q(afhVar);
        bsz bszVar = this.f20414b;
        try {
            return (String) bszVar.zzaz().t(new fal(bszVar, 8, afhVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            bszVar.zzay().f11518b.e(bgm.t(afhVar.zza), "Failed to get app instance id. appId", e2);
            return null;
        }
    }

    @Override // g.ake
    public final void m(afh afhVar) {
        ckd.bf(afhVar.zza);
        ckd.k(afhVar.zzv);
        aay aayVar = new aay(this, afhVar, 2);
        bsz bszVar = this.f20414b;
        if (bszVar.zzaz().u()) {
            aayVar.run();
        } else {
            bszVar.zzaz().o(aayVar);
        }
    }

    @Override // g.ake
    public final void n(ctf ctfVar, afh afhVar) {
        ckd.k(ctfVar);
        q(afhVar);
        u(new eax(this, ctfVar, afhVar, 14));
    }

    @Override // g.ake
    public final void o(afh afhVar) {
        q(afhVar);
        u(new aay(this, afhVar, 3));
    }

    @Override // g.ake
    public final List p(String str, String str2, boolean z, afh afhVar) {
        q(afhVar);
        String str3 = afhVar.zza;
        ckd.k(str3);
        bsz bszVar = this.f20414b;
        try {
            List<ffu> list = (List) bszVar.zzaz().t(new lw(this, str3, str, str2, 0)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (ffu ffuVar : list) {
                if (!z && dkq.al(ffuVar.f16728e)) {
                }
                arrayList.add(new cmd(ffuVar));
            }
            return arrayList;
        } catch (InterruptedException e2) {
            e = e2;
            bszVar.zzay().f11518b.e(bgm.t(afhVar.zza), "Failed to query user properties. appId", e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e3) {
            e = e3;
            bszVar.zzay().f11518b.e(bgm.t(afhVar.zza), "Failed to query user properties. appId", e);
            return Collections.EMPTY_LIST;
        }
    }

    public final void q(afh afhVar) {
        ckd.k(afhVar);
        ckd.bf(afhVar.zza);
        h(afhVar.zza, false);
        this.f20414b.ap().bo(afhVar.zzb, afhVar.zzq);
    }

    @Override // g.ake
    public final void r(afh afhVar) {
        q(afhVar);
        u(new aay(this, afhVar, 1));
    }

    @Override // g.ake
    public final void s(bou bouVar, afh afhVar) {
        ckd.k(bouVar);
        ckd.k(bouVar.zzc);
        q(afhVar);
        bou bouVar2 = new bou(bouVar);
        bouVar2.zza = afhVar.zza;
        u(new eax(this, bouVar2, afhVar, 13));
    }

    @Override // g.dzk
    public final boolean t(int i, Parcel parcel, Parcel parcel2) {
        boolean z;
        ArrayList arrayList;
        switch (i) {
            case 1:
                ctf ctfVar = (ctf) m.c(parcel, ctf.CREATOR);
                afh afhVar = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                n(ctfVar, afhVar);
                parcel2.writeNoException();
                return true;
            case 2:
                cmd cmdVar = (cmd) m.c(parcel, cmd.CREATOR);
                afh afhVar2 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                d(cmdVar, afhVar2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                afh afhVar3 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                o(afhVar3);
                parcel2.writeNoException();
                return true;
            case 5:
                ctf ctfVar2 = (ctf) m.c(parcel, ctf.CREATOR);
                String readString = parcel.readString();
                parcel.readString();
                m.d(parcel);
                ckd.k(ctfVar2);
                ckd.bf(readString);
                h(readString, true);
                u(new eax(this, ctfVar2, readString, 15));
                parcel2.writeNoException();
                return true;
            case 6:
                afh afhVar4 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                r(afhVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                afh afhVar5 = (afh) m.c(parcel, afh.CREATOR);
                z = parcel.readInt() != 0;
                m.d(parcel);
                q(afhVar5);
                String str = afhVar5.zza;
                ckd.k(str);
                bsz bszVar = this.f20414b;
                try {
                    List<ffu> list = (List) bszVar.zzaz().t(new fal(this, 5, str)).get();
                    arrayList = new ArrayList(list.size());
                    for (ffu ffuVar : list) {
                        if (!z && dkq.al(ffuVar.f16728e)) {
                        }
                        arrayList.add(new cmd(ffuVar));
                    }
                } catch (InterruptedException e2) {
                    e = e2;
                    bszVar.zzay().f11518b.e(bgm.t(afhVar5.zza), "Failed to get user properties. appId", e);
                    arrayList = null;
                    parcel2.writeNoException();
                    parcel2.writeTypedList(arrayList);
                    return true;
                } catch (ExecutionException e3) {
                    e = e3;
                    bszVar.zzay().f11518b.e(bgm.t(afhVar5.zza), "Failed to get user properties. appId", e);
                    arrayList = null;
                    parcel2.writeNoException();
                    parcel2.writeTypedList(arrayList);
                    return true;
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayList);
                return true;
            case 9:
                ctf ctfVar3 = (ctf) m.c(parcel, ctf.CREATOR);
                String readString2 = parcel.readString();
                m.d(parcel);
                byte[] w = w(ctfVar3, readString2);
                parcel2.writeNoException();
                parcel2.writeByteArray(w);
                return true;
            case 10:
                long readLong = parcel.readLong();
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                m.d(parcel);
                g(readLong, readString3, readString4, readString5);
                parcel2.writeNoException();
                return true;
            case 11:
                afh afhVar6 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                String l = l(afhVar6);
                parcel2.writeNoException();
                parcel2.writeString(l);
                return true;
            case 12:
                bou bouVar = (bou) m.c(parcel, bou.CREATOR);
                afh afhVar7 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                s(bouVar, afhVar7);
                parcel2.writeNoException();
                return true;
            case 13:
                bou bouVar2 = (bou) m.c(parcel, bou.CREATOR);
                m.d(parcel);
                ckd.k(bouVar2);
                ckd.k(bouVar2.zzc);
                ckd.bf(bouVar2.zza);
                h(bouVar2.zza, true);
                u(new fuy(4, this, new bou(bouVar2), false));
                parcel2.writeNoException();
                return true;
            case 14:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                ClassLoader classLoader = m.f19626a;
                z = parcel.readInt() != 0;
                afh afhVar8 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                List p = p(readString6, readString7, z, afhVar8);
                parcel2.writeNoException();
                parcel2.writeTypedList(p);
                return true;
            case 15:
                String readString8 = parcel.readString();
                String readString9 = parcel.readString();
                String readString10 = parcel.readString();
                ClassLoader classLoader2 = m.f19626a;
                z = parcel.readInt() != 0;
                m.d(parcel);
                List v = v(readString8, readString9, readString10, z);
                parcel2.writeNoException();
                parcel2.writeTypedList(v);
                return true;
            case 16:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                afh afhVar9 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                List e4 = e(readString11, readString12, afhVar9);
                parcel2.writeNoException();
                parcel2.writeTypedList(e4);
                return true;
            case 17:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                String readString15 = parcel.readString();
                m.d(parcel);
                List f2 = f(readString13, readString14, readString15);
                parcel2.writeNoException();
                parcel2.writeTypedList(f2);
                return true;
            case 18:
                afh afhVar10 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                k(afhVar10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) m.c(parcel, Bundle.CREATOR);
                afh afhVar11 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                j(bundle, afhVar11);
                parcel2.writeNoException();
                return true;
            case 20:
                afh afhVar12 = (afh) m.c(parcel, afh.CREATOR);
                m.d(parcel);
                m(afhVar12);
                parcel2.writeNoException();
                return true;
        }
    }

    public final void u(Runnable runnable) {
        bsz bszVar = this.f20414b;
        if (bszVar.zzaz().u()) {
            runnable.run();
        } else {
            bszVar.zzaz().p(runnable);
        }
    }

    @Override // g.ake
    public final List v(String str, String str2, String str3, boolean z) {
        h(str, true);
        bsz bszVar = this.f20414b;
        try {
            List<ffu> list = (List) bszVar.zzaz().t(new lw(this, str, str2, str3, 1)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (ffu ffuVar : list) {
                if (!z && dkq.al(ffuVar.f16728e)) {
                }
                arrayList.add(new cmd(ffuVar));
            }
            return arrayList;
        } catch (InterruptedException e2) {
            e = e2;
            bszVar.zzay().f11518b.e(bgm.t(str), "Failed to get user properties as. appId", e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e3) {
            e = e3;
            bszVar.zzay().f11518b.e(bgm.t(str), "Failed to get user properties as. appId", e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // g.ake
    public final byte[] w(ctf ctfVar, String str) {
        ckd.bf(str);
        ckd.k(ctfVar);
        h(str, true);
        bsz bszVar = this.f20414b;
        dvb dvbVar = bszVar.zzay().o;
        cyg cygVar = bszVar.m;
        dvbVar.i(cygVar.af.f(ctfVar.zza), "Log and bundle. event");
        ((czz) bszVar.zzav()).getClass();
        long nanoTime = System.nanoTime() / C.MICROS_PER_SECOND;
        fth zzaz = bszVar.zzaz();
        gzm gzmVar = new gzm(this, ctfVar, str);
        zzaz.an();
        gfi gfiVar = new gfi(zzaz, gzmVar, true);
        if (Thread.currentThread() == zzaz.j) {
            gfiVar.run();
        } else {
            zzaz.q(gfiVar);
        }
        try {
            byte[] bArr = (byte[]) gfiVar.get();
            if (bArr == null) {
                bszVar.zzay().f11518b.i(bgm.t(str), "Log and bundle returned null. appId");
                bArr = new byte[0];
            }
            ((czz) bszVar.zzav()).getClass();
            bszVar.zzay().o.f("Log and bundle processed. event, size, time_ms", cygVar.af.f(ctfVar.zza), Integer.valueOf(bArr.length), Long.valueOf((System.nanoTime() / C.MICROS_PER_SECOND) - nanoTime));
            return bArr;
        } catch (InterruptedException e2) {
            e = e2;
            bszVar.zzay().f11518b.f("Failed to log and bundle. appId, event, error", bgm.t(str), cygVar.af.f(ctfVar.zza), e);
            return null;
        } catch (ExecutionException e3) {
            e = e3;
            bszVar.zzay().f11518b.f("Failed to log and bundle. appId, event, error", bgm.t(str), cygVar.af.f(ctfVar.zza), e);
            return null;
        }
    }
}
